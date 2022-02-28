% optimization example 1
%https://www.mathworks.com/help/optim/ug/fit-ode-problem-based-least-squares.html
% all components of reaction system y are observed

clearvars;close all;

yWo=load('flucWT.txt');
yMo=load('flucMT.txt');
yW=yWo;
yM=yMo;

sig=3.3932e2;
itc=0.10454e2;

% initial sugar
Sug=[2];

% initial stress levels
Stress=[0	0.02	0.04	0.06	0.08	0.1];

%estimating cell counts, cells/nL
a =      -14.59;
b =        1.43;
cc =       6.346;
d =       1.771;
yW=exp(a*(log(yWo)+2.5).^b+cc*(log(yWo)+4).^d)/10^6;
a =       17.26;
b =     0.09956;
cc =    0.001068;
d =       4.826;
yM=exp(a*(log(yMo)+2.5).^b+cc*(log(yMo)+4).^d)/10^6;

%timeaxis
tALL=1:size(yW,1);
tEND=length(tALL);
%tEND=24;
tspan=[0	3699.6	7399.2	11098.8	14798.4	18498	22197.6	25897.2	29596.8	33296.4	36996	40695.6	44395.3	48094.9	51794.5	55494.1	59193.6	62893.3	66592.9	70292.5	73992.1	77691.7	81391.3	85090.9	88790.5	92490.1	96189.6	99889.2	103588.9	107288.5	110988.1	114687.7	118387.3	122086.9	125786.5	129486.1	133185.7	136885.3	140584.9	144284.5	147984.1	151683.7	155383.3	159082.9	162782.5	166482.1	170181.7	173881.3	177580.9	181280.5	184980.1	188679.7	192379.3	196078.9	199778.5	203478.1	207177.7	210877.3	214576.9	218276.5	221976.1	225675.8	229375.3	233074.9	236774.5	240474.1	244173.7	247873.3	251572.9	255272.5	258972.1	262671.8]/3600;
yW(tEND+1:end,:)=[];

% first, fit sugar only to get parameters
Se=sig*Sug;
figure;
d=1;Dind=1;
for n=1:3   % 3 replicates
    Cind=n; %current replicate index
    Cdata=yW(:,(Dind-1)*3+Cind)';

    Nin=Cdata(1);
    %Nend=mean(Cdata(end-10:end));
    Nend=mean(Cdata(11:14))

    y0=[Nin Nend-Nin];
    %y0=[Nin];

    subplot(length(Sug),3,3*(Dind-1)+Cind);hold on;
    plot(tspan,log(Cdata),'o');

    % prepare the problem, create a three-element optimization variable r
    %r = optimvar('r',1,"LowerBound",0.0,"UpperBound",1);
    r = optimvar('r',2,"LowerBound",[0.0 -100.0],"UpperBound",[0.1 200]);
    %r = optimvar('r',3,"LowerBound",[0.0 0.0 0.0],"UpperBound",[1 Nend Inf]);

    % To use RtoODE in an objective function:
    % convert the function to an optimization expression by using fcn2optimexpr
    %myfcn = fcn2optimexpr(@RtoODE,r,tspan,y0,'OutputSize',[1 length(tspan)]);
    myfcn = fcn2optimexpr(@RtoODE,r,tspan,y0);

    % objective function =
    % = sum of squared differences
    % ("ODE solution" - "solution with true parameters")
    obj = sum(sum((log(myfcn) - log(Cdata)).^2));

    % Create an optimization problem with the objective function obj
    prob = optimproblem("Objective",obj);

    options = optimoptions('lsqnonlin', 'MaxFunctionEvaluations', 5000,...
                    'StepTolerance',1e-15,...
                    'OptimalityTolerance',1e-8,...
                    'FunctionTolerance',1e-12,...
                    'MaxIterations',1000);


    % view problem
    % extraparams1: time points
    % extraparams2: initial conditions
    % extraparams3: true solutions
    %show(prob)

    % give an initial guess r0 for the solver
    %r0.r = [0.1 10.0]; %Monod model
    r0.r = [1e-5 0.0];
    [rsol,sumsq] = solve(prob,r0,'Options',options);  %solve problem
    %disp(rsol.r)

    ss = RtoODE(rsol.r,tspan,y0);

    plot(tspan,log(ss(1,:)),'r>--');
    cest(Dind,Cind)=rsol.r(1);
    Cest(Dind,Cind)=rsol.r(2);
    Sest(Dind,Cind)=Nend;
    Nest(Dind,Cind)=Nin;
end

[cest;Cest;Nest;Sest]

figure;
plot(Sest(:),Cest(:),'o','LineWidth',2);
xlabel('S_t');ylabel('N_c');

figure;
plot(Sest(:),cest(:),'o','LineWidth',2);
xlabel('S_t');ylabel('r');

figure;
plot(Cest(:),cest(:),'o','LineWidth',2);
xlabel('N_c');ylabel('r');

cave=mean(cest)
Cave=mean(Cest)
Save=mean(Sest)


%%=======================%%
%%=======================%%
%%=======Functions=======%%

%  function that computes the ODE solution using correct r values: noStress
function dydt = diffun(t,y,r)
    dydt = zeros(2,1);
%     dydt(1) = r(1)*y(1)*y(2)/(r(2)+y(2));
%     dydt(2) = -r(1)*y(1)*y(2)/(r(2)+y(2));

    dydt(1) = r(1)*y(1)*y(2)*(y(1)+r(2));
    dydt(2) = -r(1)*y(1)*y(2)*(y(1)+r(2));
end

% function that computes the ODE solution using parameters r: noStress
function solpts = RtoODE(r,tspan,y0)
    %sol = ode45(@(t,y)diffun(t,y,r,[y0(1) y0(2)]),tspan,y0);
    sol = ode45(@(t,y)diffun(t,y,r),tspan,y0);
    solpts = deval(sol,tspan);
    solpts = solpts(1,:); % Just y(1)
end