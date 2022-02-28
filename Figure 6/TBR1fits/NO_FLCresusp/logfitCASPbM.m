% optimization example 1
%https://www.mathworks.com/help/optim/ug/fit-ode-problem-based-least-squares.html
% all components of reaction system y are observed

clearvars;close all;

yWo=load('caspWT.txt');
yMo=load('caspMT.txt');
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
tALL=1:size(yM,1);
tEND=length(tALL);
%tEND=24;
tspan=[0	3699.7	7399.4	11099	14798.7	18498.4	22198.1	25897.7	29597.4	33297.1	36996.7	40696.4	44396.1	48095.8	51795.4	55495.1	59194.8	62894.5	66594.1	70293.8	73993.5	77693.2	81392.9	85092.5	88792.2	92491.9	96191.5	99891.2	103590.9	107290.6	110990.2	114689.9	118389.6	122089.2	125788.9	129488.6	133188.3	136887.9	140587.6	144287.3	147986.9	151686.6	155386.3	159085.9	162785.6	166485.3	170185	173884.6	177584.3	181284	184983.6	188683.3	192383	196082.7	199782.3	203482	207181.7	210881.3	214581	218280.7	221980.4	225680	229379.7	233079.4	236779	240478.7	244178.4	247878	251577.7	255277.4	258977.1	262676.8]/3600;
yM(tEND+1:end,:)=[];

global cave Cave vCell vMed
twDiam = 4.6366;twV=(4/3)*pi*(twDiam/2)^3;
taDiam = 4.8844;taV=(4/3)*pi*(taDiam/2)^3;
bwDiam = 3.4040;bwV=(4/3)*pi*(bwDiam/2)^3;
baDiam = 3.2600;baV=(4/3)*pi*(baDiam/2)^3;
vCell=taV;vMed=2e11; % 1 microLiter = 1e9 microm^3

cave=7.889790449999999e-06;
Cave=3.3105068407093;
Sin=435.0870263540129;

% Now, fit the stress
Se=sig*Sug;
figure;
for d=2:length(Stress)
    Dind=d; %current Stress index
    cStress=Stress(d)

    for n=1:3   % 3 replicates
        Cind=n; %current replicate index
        Cdata=yM(:,(Dind-1)*3+Cind)';
        
        Nin=Cdata(1);
        Nend=Nin+Sin;
%         NendR=mean(Cdata(end-5:end));
%         Cdata=Nin+(Nend-Nin)*(Cdata-Nin)/(NendR-Nin);
        
        y0=[Nin Nend-Nin 0.0 0.0 cStress];
        %y0=[Nin];
        
        subplot(length(Stress)-1,3,3*(Dind-2)+Cind);hold on;
        plot(tspan,log(Cdata),'o');
        set(gca,'YLim',[3 7.1])
        
        % prepare the problem, create a three-element optimization variable r
        r = optimvar('r',7,"LowerBound",[1e-6 0.025 1.5 0.25 0.1 0.01 0.5],"UpperBound",[0.001 0.05 8.0 1.0 5.0 0.015 1.5]);

        % To use RtoODE in an objective function:
        % convert the function to an optimization expression by using fcn2optimexpr
        %myfcn = fcn2optimexpr(@RtoODE,r,tspan,y0,'OutputSize',[1 length(tspan)]);
        %diffun(tspan,y0,[0.1 5.0 4.0 1.0 0.1 2.0])
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
        
        
        % view problem
        % extraparams1: time points
        % extraparams2: initial conditions
        % extraparams3: true solutions
        %show(prob)

        % give an initial guess r0 for the solver
        %r0.r = [0.004 0.1 4.0 0.75 1.5 3.0 1.0];
        r0.r =  [0.0006 0.0075 4.5 2.5 0.8 0.005 5.0];
        [rsol,sumsq] = solve(prob,r0,'Options',options);  %solve problem
        %disp(rsol.r)

        ss = RtoODE(rsol.r,tspan,y0);
        plot(tspan,log(ss(1,:)),'c>--');
        
        ss5=RtoODE5(rsol.r,tspan,y0);
        
        solN(Dind-1,Cind,:)=ss5(1,:);
        solS(Dind-1,Cind,:)=ss5(2,:);
        solD(Dind-1,Cind,:)=ss5(3,:);
        solT(Dind-1,Cind,:)=ss5(4,:);
        solE(Dind-1,Cind,:)=ss5(5,:);
        
        plot(tspan,log(ss5(2,:)),'k');  %plot sugar
        ylim([3 7]);
        yyaxis right;
        plot(tspan,ss5(3,:),'r-','LineWidth',2);  %plot internal drug
        plot(tspan,ss5(4,:),'Color',[0.6 0 0],'LineWidth',2);  %plot toxin
        plot(tspan,ss5(5,:),'m-','LineWidth',2);  %plot external drug
        ylim([-0.01 0.11]);
                legend('log(N)','log(N_f)','log(S)','D','T','E','Location','Eastoutside'); xlabel('Time (hrs)');
                
        qest(Dind-1,Cind)=rsol.r(1);
        fest(Dind-1,Cind)=rsol.r(2);
        aest(Dind-1,Cind)=rsol.r(3);
        pest(Dind-1,Cind)=rsol.r(4);
        rest(Dind-1,Cind)=rsol.r(5);
        dest(Dind-1,Cind)=rsol.r(6);
        kest(Dind-1,Cind)=rsol.r(7);
        qual(Dind-1,Cind)=sumsq;
    end
end

dlmwrite('varCASPbMN.txt',reshape(solN,15,tEND),'\t');
dlmwrite('varCASPbMS.txt',reshape(solS,15,tEND),'\t');
dlmwrite('varCASPbMD.txt',reshape(solD,15,tEND),'\t');
dlmwrite('varCASPbMT.txt',reshape(solT,15,tEND),'\t');
dlmwrite('varCASPbME.txt',reshape(solE,15,tEND),'\t');

pars=[qest;fest;aest;pest;rest;dest;kest;qual]
dlmwrite('parsCASPbM.txt',pars,'\t');

%%
figure(2); 
parammean=[mean(qest(1,1:3))	mean(qest(2,1:3))	mean(qest(3,1:3))	mean(qest(4,1:3))	mean(qest(5,1:3))
mean(fest(1,1:3))	mean(fest(2,1:3))	mean(fest(3,1:3))	mean(fest(4,1:3))	mean(fest(5,1:3))
mean(aest(1,1:3))	mean(aest(2,1:3))	mean(aest(3,1:3))	mean(aest(4,1:3))	mean(aest(5,1:3))
mean(pest(1,1:3))	mean(pest(2,1:3))	mean(pest(3,1:3))	mean(pest(4,1:3))	mean(pest(5,1:3))
mean(rest(1,1:3))	mean(rest(2,1:3))	mean(rest(3,1:3))	mean(rest(4,1:3))	mean(rest(5,1:3))
mean(dest(1,1:3))	mean(dest(2,1:3))	mean(dest(3,1:3))	mean(dest(4,1:3))	mean(dest(5,1:3))
mean(kest(1,1:3))	mean(kest(2,1:3))	mean(kest(3,1:3))	mean(kest(4,1:3))	mean(kest(5,1:3))
mean(qual(1,1:3))	mean(qual(2,1:3))	mean(qual(3,1:3))	mean(qual(4,1:3))	mean(qual(5,1:3))];

paramstd=[std(qest(1,1:3))	std(qest(2,1:3))	std(qest(3,1:3))	std(qest(4,1:3))	std(qest(5,1:3))
std(fest(1,1:3))	std(fest(2,1:3))	std(fest(3,1:3))	std(fest(4,1:3))	std(fest(5,1:3))
std(aest(1,1:3))	std(aest(2,1:3))	std(aest(3,1:3))	std(aest(4,1:3))	std(aest(5,1:3))
std(pest(1,1:3))	std(pest(2,1:3))	std(pest(3,1:3))	std(pest(4,1:3))	std(pest(5,1:3))
std(rest(1,1:3))	std(rest(2,1:3))	std(rest(3,1:3))	std(rest(4,1:3))	std(rest(5,1:3))
std(dest(1,1:3))	std(dest(2,1:3))	std(dest(3,1:3))	std(dest(4,1:3))	std(dest(5,1:3))
std(kest(1,1:3))	std(kest(2,1:3))	std(kest(3,1:3))	std(kest(4,1:3))	std(kest(5,1:3))
std(qual(1,1:3))	std(qual(2,1:3))	std(qual(3,1:3))	std(qual(4,1:3))	std(qual(5,1:3))];

b = bar(parammean, 'grouped');
hold on
% Calculate the number of groups and number of bars in each group
[ngroups,nbars] = size(parammean);
% Get the x coordinate of the bars
x = nan(nbars, ngroups);
for i = 1:nbars
    x(i,:) = b(i).XEndPoints;
end

set(b,'EdgeColor','k','LineWidth',3);
set(gca,'FontSize',24,'LineWidth',3,'fontname','Arial','xcolor','k','ycolor','k','XTickLabel',{'q','f','a','p','r','d','k','qual'}); 
pbaspect([2 1 1]); box on; ylabel('est param mean');
ylim([0 12]); xlim([0.5 8.5]);

b(1).FaceColor = [1.0 1.0 0.2];
b(2).FaceColor = [1.0 0.8 0.2];
b(3).FaceColor = [1.0 0.4 0.2];
b(4).FaceColor = [0.7 0.2 0.0];
b(5).FaceColor = [0.6 0.0 0.0];

errorbar(x',parammean,paramstd,'k','LineStyle','none','LineWidth',3); % 'LineStyle','none' removes connecting lines between error bars
hold off

%%


%%=======================%%
%%=======================%%
%%=======Functions=======%%

%  function that computes the ODE solution using correct r values: Stress
function dydt = diffun(t,y,r)
    global cave Cave vCell vMed

    c=cave;
    C=Cave;
    
    dydt = zeros(5,1);
    
    n=1;
    m=1;
    
    %dydt(1) = r(1)*c*y(1)*y(2)*(y(1)+C);
    dydt(1) = c*y(1)*y(2)*(y(1)+C)*r(1)^n/(r(1)^n+y(4)^n)-r(7)*y(1)*y(4);
    dydt(2) = -c*y(1)*y(2)*(y(1)+C)*r(1)^n/(r(1)^n+y(4)^n);
    dydt(3) = r(2)*(y(5)-y(3))-c*y(3)*y(2)*(y(1)+C)*r(1)^n/(r(1)^n+y(4)^n) -r(6)*y(3);
    dydt(4) = r(3)*y(3)-r(4)*y(4)^m/(r(5)^m+y(4)^m);
    dydt(5) = -r(6)*y(5)-r(2)*(y(5)-y(3))*y(1)*vCell/(vMed-vCell);    
end

% function that computes the ODE solution using parameters r: Stress
function solpts = RtoODE(r,tspan,y0)
    %sol = ode45(@(t,y)diffun(t,y,r,[y0(1) y0(2)]),tspan,y0);
    sol = ode45(@(t,y)diffun(t,y,r),tspan,y0);
    solpts = deval(sol,tspan);
    solpts = solpts(1,:); % Just y(1)
end

% function that computes the full ODE solution vector using parameters r: Stress
function solpts5 = RtoODE5(r,tspan,y0)
    %sol = ode45(@(t,y)diffun(t,y,r,[y0(1) y0(2)]),tspan,y0);
    sol = ode45(@(t,y)diffun(t,y,r),tspan,y0);
    solpts5 = deval(sol,tspan);
end
