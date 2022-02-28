% optimization example 1
%https://www.mathworks.com/help/optim/ug/fit-ode-problem-based-least-squares.html
% all components of reaction system y are observed

clearvars;close all;

yWo=load('flcaWT.txt');
yMo=load('flcaMT.txt');
yW=yWo;
yM=yMo;

sig=3.3932e2;
itc=0.10454e2;

% initial sugar
Sug=[2];

% initial stress levels
Stress=[0	0.05	0.075	0.1	0.125	0.15];

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
%tEND=length(tALL);
tEND=36;
tspan1=[0	3673	7346	11019	14692.1	18365.1	22038.1	25711.2	29384.2	33057.2]/3600;
tspan2=[0	3672.9	7346	11019	14686.8	18359.8	22032.8	25705.8	29378.9	33051.9	36724.9	40397.9	44070.9	47744	51417	55090	58763	62436	66109	69782	73455.1	77128.1	80801.1	84474.1	88147.1	91820.1	95493.2	99166.2	102839.2	106512.2	110185.2	113858.3	117531.3	121204.3	124877.3	128550.3	132223.4	135896.4	139569.4	143242.4	146915.4	150588.4	154261.5	157934.5	161607.5	165280.5	168953.5	172626.6	176299.6	179972.6	183645.6	187318.6	190991.6	194664.7	198337.7	202010.7	205683.7	209356.8	213029.8	216702.8	220375.8	224048.8	227721.8	231394.8	235067.9	238740.9	242413.9	246086.9	249760.1	253433.3	257106.4	260779.4]/3600;
tspan2=mean(tspan1(2:end)-tspan1(1:end-1))+tspan1(end)+tspan2(1:tEND-length(tspan1));
tspan=[tspan1 tspan2];
yW(tEND+1:end,:)=[];

% first, fit sugar only to get parameters
Se=sig*Sug;
figure;
d=1;Dind=1;
for n=1:3   % 3 replicates
    Cind=n; %current replicate index
    Cdata=yW(:,(Dind-1)*3+Cind)';

    Nin1=Cdata(1);
    %Nend=mean(Cdata(end-10:end));
    Nend1=Cdata(10);
    Nin2=Cdata(11);
    Nend2=mean(Cdata(24:27));

    y01=[Nin1 Nend2-Nin1];
    y02=[Nin2 Nend2-Nin2];

    subplot(length(Sug),3,3*(Dind-1)+Cind);hold on;
    plot(tspan,log(Cdata),'o');

    % prepare the problem, create a three-element optimization variable r
    %r = optimvar('r',1,"LowerBound",0.0,"UpperBound",1);
    r = optimvar('r',2,"LowerBound",[0.0 -100.0],"UpperBound",[0.01 250]);
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
                    'OptimalityTolerance',1e-12,...
                    'FunctionTolerance',1e-12,...
                    'MaxIterations',5000);


    % view problem
    % extraparams1: time points
    % extraparams2: initial conditions
    % extraparams3: true solutions
    %show(prob)

    % give an initial guess r0 for the solver
    %r0.r = [0.1 10.0]; %Monod model
    r0.r = [1e-5 10.0];
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
