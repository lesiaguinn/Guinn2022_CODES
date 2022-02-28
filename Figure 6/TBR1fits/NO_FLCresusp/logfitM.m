% optimization example 1
%https://www.mathworks.com/help/optim/ug/fit-ode-problem-based-least-squares.html
% all components of reaction system y are observed

clearvars;close all;

yWo=load('ypdWT.txt');
sWo=load('scWT.txt');
yMo=load('ypdMT.txt');
sMo=load('scMT.txt');
yW=yWo;
sW=sWo;
yM=yMo;
sM=sMo;

sig=3.3932e2;
itc=0.10454e2;

% initial sugar
Sug=[0.5 1 2];

%estimating cell counts, cells/nL
a =       13.44;
b =      0.2996;
cc =       17.01;
d =      -1.769;
yW=exp(a*(log(yWo)+2.5).^b+cc*(log(yWo)+4).^d + 1.484274490243554)/10^6;
sW=exp(a*(log(sWo)+2.5).^b+cc*(log(sWo)+4).^d + 1.484274490243554)/10^6;

a =        18.2;
b =     0.09755;
cc =   1.011e-05;
d =       7.783;
yM=exp(a*(log(yMo)+2.5).^b+cc*(log(yMo)+4).^d)/10^6;
sM=exp(a*(log(sMo)+2.5).^b+cc*(log(sMo)+4).^d)/10^6;

yW(2:end,6)=yW(2:end,6)-mean([yW(2:end,6)-yW(2:end,4) yW(2:end,6)-yW(2:end,5)],2);

%timeaxis
% tALL=1:size(yW,1);
tEND=24;
tspan=1:tEND;
yM(tEND+1:end,:)=[];

figure;
for d=1:3%length(Sug)
    Dind=d; %current sugar index
    cSug=Sug(d)
    Se=sig*cSug;

    for n=1:3   % 3 replicates
        Cind=n; %current replicate index
        Cdata=yM(:,(Dind-1)*3+Cind)';
        
        Nin=Cdata(1);
        %Nend=mean(Cdata(end-10:end));
        Nend=mean(Cdata(end-15+d:end-13+d))
        
        y0=[Nin Nend-Nin];
        %y0=[Nin];
        
        subplot(length(Sug),3,3*(Dind-1)+Cind);hold on;
        plot(tspan,log(Cdata),'o');
        
        [ab, slope, CI, m, global_std] = PLR (tspan, log(Cdata), 2, 0.05);

        % prepare the problem, create a three-element optimization variable r
        %r = optimvar('r',1,"LowerBound",0.0,"UpperBound",1);
        r = optimvar('r',2,"LowerBound",[0.0 -200.0],"UpperBound",[0.1 100]);
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
        r0.r = [1e-5 -100.0];
        [rsol,sumsq] = solve(prob,r0,'Options',options);  %solve problem
        %disp(rsol.r)

        ss = RtoODE(rsol.r,tspan,y0);
        
        plot(tspan,log(ss(1,:)),'r>--');
        cest(Dind,Cind)=rsol.r(1);
        Cest(Dind,Cind)=rsol.r(2);
        Sest(Dind,Cind)=Nend-Nin;
        Nest(Dind,Cind)=Nin;
        dur1(Dind,Cind)=ab(2,1)-ab(1,1);
        dur2(Dind,Cind)=ab(3,1)-ab(2,1);
        slp1(Dind,Cind)=slope(1);
        slp2(Dind,Cind)=slope(2);
    end
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

% General model Rat01: cest vs. Sest
%      f(x) = (p1) / (x + q1)
% Coefficients (with 95% confidence bounds):
%        p1 =      0.0009  (0.0005907, 0.001209)
%        q1 =        -305  (-329.5, -280.5)
% Goodness of fit:
%   SSE: 5.758e-12
%   R-square: 0.971
%   Adjusted R-square: 0.9668
%   RMSE: 9.07e-07
% options
% p1=9e-4 (0,1); q1=-305 (-Inf,-300)


%%=======================%%
%%=======================%%
%%=======Functions=======%%

%  function that computes the ODE solution using correct r values
% function dydt = diffun(t,y,r,iv)
%      dydt = zeros(2,1);
% %     [log(y(1)/y(2)) log(iv(1)/iv(2)) t]
% %     (y(1)/y(2)) -log(iv(1)/iv(2)))/(iv(1)+iv(2));
% %     dydt(1) = sqrt(r(1))*y(1)*y(2) * 0.5*sqrt((log(y(1)/y(2)) -log(iv(1)/iv(2)))/(iv(1)+iv(2)));
% %     dydt(2) = -sqrt(r(1))*y(1)*y(2) * 0.5*sqrt((log(y(1)/y(2)) -log(iv(1)/iv(2)))/(iv(1)+iv(2)));
%     dydt(1) = r(1)*y(1)*y(2);
%     dydt(2) = -r(1)*y(1)*y(2);
% end

function dydt = diffun(t,y,r)
    dydt = zeros(2,1);
%     dydt(1) = r(1)*y(1)*y(2)/(r(2)+y(2));
%     dydt(2) = -r(1)*y(1)*y(2)/(r(2)+y(2));

    dydt(1) = r(1)*y(1)*y(2)*(y(1)+r(2));
    dydt(2) = -r(1)*y(1)*y(2)*(y(1)+r(2));
end

% function dydt = diffun(t,y,r)
%     dydt = zeros(1,1);
%     dydt(1) = r(1)*y(1)*(r(2)-y(1))*t;
%     %dydt(2) = -r(1)*y(1)*y(2)*t;
% end

% function dydt = diffun(t,y,r,pars)
%     dydt = zeros(1,1);
%     dydt(1) = r(1)*y(1)*(pars(1)-y(1))*t;
% end


% function that computes the ODE solution using parameters r
function solpts = RtoODE(r,tspan,y0)
    %sol = ode45(@(t,y)diffun(t,y,r,[y0(1) y0(2)]),tspan,y0);
    sol = ode45(@(t,y)diffun(t,y,r),tspan,y0);
    solpts = deval(sol,tspan);
    solpts = solpts(1,:); % Just y(1)
end
