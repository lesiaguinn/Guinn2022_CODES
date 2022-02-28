% optimization example 1
%https://www.mathworks.com/help/optim/ug/fit-ode-problem-based-least-squares.html
% all components of reaction system y are observed

clearvars;close all;

yWo=load('h2o2WT.txt');
yMo=load('h2o2MT.txt');
yW=yWo;
yM=yMo;

sig=3.3932e2;
itc=0.10454e2;

% initial sugar
Sug=[2];

% initial stress levels
Stress=[0	0.02	0.04	0.06	0.08	0.1];

%estimating cell counts, cells/nL
a =       13.44;
b =      0.2996;
cc =       17.01;
d =      -1.769;
yW=exp(a*(log(yWo)+2.5).^b+cc*(log(yWo)+4).^d + 1.484274490243554)/10^6;

a =        18.2;
b =     0.09755;
cc =   1.011e-05;
d =       7.783;
yM=exp(a*(log(yMo)+2.5).^b+cc*(log(yMo)+4).^d)/10^6;

%timeaxis
tALL=1:size(yW,1);
tEND=length(tALL);
%tEND=24;
tspan=[0	3699.6	7399.3	11098.9	14798.5	18498.1	22197.8	25897.4	29597	33296.7	36996.3	40695.9	44395.5	48095.2	51794.8	55494.4	59194	62893.7	66593.3	70293	73992.6	77692.2	81391.8	85091.5	88791.1	92490.7	96190.3	99890	103589.6	107289.2	110988.8	114688.5	118388.1	122087.7	125787.4	129487	133186.7	136886.3	140585.9	144285.5	147985.2	151684.8	155384.4	159084	162783.7	166483.3	170182.9	173882.5	177582.2	181281.8	184981.5	188681.1	192380.7	196080.3	199780	203479.6	207179.2	210878.8	214578.5	218278.1	221977.8	225677.4	229377	233076.6	236776.3	240475.9	244175.5	247875.1	251574.8	255274.4	258974	262673.7]/3600;
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
    Sest(Dind,Cind)=Nend-Nin;
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