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
Stress=[0	0.05	0.075	0.1	0.125	0.15];

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
tALL=1:size(yM,1);
tEND=length(tALL);
%tEND=36;
tspan1=1:10;
tspan2=11:tEND;
tspan=[tspan1 tspan2];
tspan1=tspan1*3681.7/3600;
tspan2=tspan2*3681.7/3600;
tspan=tspan*3681.7/3600;
yM(tEND+1:end,:)=[];

% first, fit sugar only to get parameters
Se=sig*Sug;
figure;
d=1;Dind=1;
for n=1:3   % 3 replicates
    Cind=n; %current replicate index
    Cdata=yM(:,(Dind-1)*3+Cind)';

    Nin1=Cdata(1);
    %Nend=mean(Cdata(end-10:end));
    Nend1=Cdata(10);
    Nin2=Cdata(11);
    Nend2=mean(Cdata(24:27));

    y01=[Nin1 Nend1-Nin1];
    y02=[Nin2 Nend2-Nin2];

    subplot(length(Sug),3,3*(Dind-1)+Cind);hold on;
    plot(tspan,log(Cdata),'o');

    % prepare the problem, create a three-element optimization variable r
    %r = optimvar('r',1,"LowerBound",0.0,"UpperBound",1);
    r = optimvar('r',2,"LowerBound",[0.0 -100.0],"UpperBound",[0.1 200]);
    %r = optimvar('r',3,"LowerBound",[0.0 0.0 0.0],"UpperBound",[1 Nend Inf]);

    % To use RtoODE in an objective function:
    % convert the function to an optimization expression by using fcn2optimexpr
    %myfcn = fcn2optimexpr(@RtoODE,r,tspan,y0,'OutputSize',[1 length(tspan)]);
    myfcn = fcn2optimexpr(@RtoODE,r,tspan1,tspan2,y01,y02);

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
                    'MaxIterations',5000);


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

    ss = RtoODE(rsol.r,tspan1,tspan2,y01,y02);

    plot(tspan,log(ss(1,:)),'r>--');
    cest(Dind,Cind)=rsol.r(1);
    Cest(Dind,Cind)=rsol.r(2);
    Sest(Dind,Cind)=Nend2;
    Nest(Dind,Cind)=Nin1;
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
% function solpts = RtoODE(r,tspan,y0)
%     %sol = ode45(@(t,y)diffun(t,y,r,[y0(1) y0(2)]),tspan,y0);
%     sol = ode45(@(t,y)diffun(t,y,r),tspan,y0);
%     solpts = deval(sol,tspan);
%     solpts = solpts(1,:); % Just y(1)
% end

% function that computes the ODE solution using parameters r: Stress
function solpts = RtoODE(r,tspan1,tspan2,y01,y02)
    %sol = ode45(@(t,y)diffun(t,y,r,[y0(1) y0(2)]),tspan,y0);
    sol1 = ode45(@(t,y)diffun(t,y,r),tspan1,y01);
    solpts1 = deval(sol1,tspan1);
    y1=solpts1(:,end);
    y1(1)=y02(1);y1(2)=y02(2);
    solpts1 = solpts1(1,:); % Just y(1)
    sol2 = ode45(@(t,y)diffun(t,y,r),tspan2,y1);
    solpts2 = deval(sol2,tspan2);
    solpts2 = solpts2(1,:); % Just y(1)
    solpts=[solpts1 solpts2];
end
