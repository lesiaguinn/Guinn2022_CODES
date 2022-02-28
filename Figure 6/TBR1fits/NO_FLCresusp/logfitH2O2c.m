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
Stress=[0.02	0.04	0.06	0.08	0.1];

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

global cave Cave
cave=5.51684E-06;
Cave=-8.236448134825;

%timeaxis
tALL=1:size(yW,1);
tEND=length(tALL);
%tEND=24;
tspan=[0	3699.6	7399.3	11098.9	14798.5	18498.1	22197.8	25897.4	29597	33296.7	36996.3	40695.9	44395.5	48095.2	51794.8	55494.4	59194	62893.7	66593.3	70293	73992.6	77692.2	81391.8	85091.5	88791.1	92490.7	96190.3	99890	103589.6	107289.2	110988.8	114688.5	118388.1	122087.7	125787.4	129487	133186.7	136886.3	140585.9	144285.5	147985.2	151684.8	155384.4	159084	162783.7	166483.3	170182.9	173882.5	177582.2	181281.8	184981.5	188681.1	192380.7	196080.3	199780	203479.6	207179.2	210878.8	214578.5	218278.1	221977.8	225677.4	229377	233076.6	236776.3	240475.9	244175.5	247875.1	251574.8	255274.4	258974	262673.7]/3600;
yW(tEND+1:end,:)=[];

global cave Cave
cave=5.367775274522914e-06;
Cave=-8.228361157550276;
Sin=519.8791992076812;


% Now, fit the stress
Se=sig*Sug;
figure;
newcolors = [0.83 0.14 0.14
             1.00 0.54 0.00
             0.47 0.25 0.80
             0.25 0.80 0.54
             0.5 0.5 0.5];
for n=1:3   % 3 replicates
    Cind=n %current replicate index
    
    % prepare the problem, create a three-element optimization variable r
    r = optimvar('r',7,"LowerBound",[0.003 0.9 4.5 0.5 1.0 1.0 0.1],"UpperBound",[0.01 1.1 5.5 0.8 5.0 1.2 0.5]);
    
    Cdata=yW(:,Cind+3:3:end)';

    Nin=Cdata(:,1);
%     Nend=mean(Cdata(:,end-5:end)')';
%     Nend(end)=Cdata(end,end);
    
    Nend=Nin+Sin;
    %NendR=mean(Cdata(:,end-5:end));
    NendR=mean(Cdata(:,end-5:end)')';
    Cdata=repmat(Nin,1,72)+(repmat(Nend,1,72)-repmat(Nin,1,72)).*(Cdata-repmat(Nin,1,72))./(repmat(NendR,1,72)-repmat(Nin,1,72));

    y0=[Nin Nend-Nin zeros(size(Nin)) zeros(size(Nin)) Stress'];
    
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
                    'StepTolerance',1e-6,...
                    'OptimalityTolerance',1e-6,...
                    'FunctionTolerance',1e-6,...
                    'MaxIterations',5000);
    
    % give an initial guess r0 for the solver
    r0.r = [0.004 8.0 4.0 0.75 1.5 3.0 1.0];
    
    [rsol,sumsq] = solve(prob,r0,'Options',options);  %solve problem

    subplot(1, 3, Cind);hold on;
    plot(tspan,log(Cdata),'o','LineWidth',2);
    colororder(newcolors);
    
    ss = RtoODE(rsol.r,tspan,y0);

    plot(tspan,log(ss),'+--');
    colororder(newcolors);
%         qest(Dind-1,Cind)=rsol.r(1);
%         fest(Dind-1,Cind)=rsol.r(2);
%         aest(Dind-1,Cind)=rsol.r(3);
%         pest(Dind-1,Cind)=rsol.r(4);
%         rest(Dind-1,Cind)=rsol.r(5);
%         dest(Dind-1,Cind)=rsol.r(6);
%         kest(Dind-1,Cind)=rsol.r(7);
end



%%=======================%%
%%=======================%%
%%=======Functions=======%%

%  function that computes the ODE solution using correct r values: Stress
function dydt = diffun(t,y,r)
    global cave Cave

    c=cave;
    C=Cave;

    dydt = zeros(5,1);
    
%     c=pars(1);
%     C=pars(2);
    c=5.512649017826762e-06;
    C=-8.174127654871386;
    
    n=1;
    m=1;
    
    %dydt(1) = r(1)*c*y(1)*y(2)*(y(1)+C);
    dydt(1) = c*y(1)*y(2)*(y(1)+C)*r(1)^n/(r(1)^n+y(4)^n)-r(7)*y(1)*y(4);
    dydt(2) = -c*y(1)*y(2)*(y(1)+C)*r(1)^n/(r(1)^n+y(4)^n);
    dydt(3) = r(2)*(y(5)-y(3))-c*y(3)*y(2)*(y(1)+C)*r(1)^n/(r(1)^n+y(4)^n) -r(6)*y(3);
    dydt(4) = r(3)*y(3)-r(4)*y(4)^m/(r(5)^m+y(4)^m);
    dydt(5) = -r(6)*y(5);
    
end

% function that computes the ODE solution using parameters r: Stress
function solpts = RtoODE(r,tspan,y0)
    %sol = ode45(@(t,y)diffun(t,y,r,[y0(1) y0(2)]),tspan,y0);
    for s=1:5
        y0c=y0(s,:);
        sol = ode45(@(t,y)diffun(t,y,r),tspan,y0c);
        solptsTmp = deval(sol,tspan);
        solpts(s,:) = solptsTmp(1,:); % Just y(1)
    end
end
