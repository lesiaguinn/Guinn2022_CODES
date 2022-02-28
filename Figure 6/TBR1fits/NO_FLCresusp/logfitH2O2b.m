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
%tEND=24;   %3699.6 is the non-shaken
tspan=[0	3699.6	7399.3	11098.9	14798.5	18498.1	22197.8	25897.4	29597	33296.7	36996.3	40695.9	44395.5	48095.2	51794.8	55494.4	59194	62893.7	66593.3	70293	73992.6	77692.2	81391.8	85091.5	88791.1	92490.7	96190.3	99890	103589.6	107289.2	110988.8	114688.5	118388.1	122087.7	125787.4	129487	133186.7	136886.3	140585.9	144285.5	147985.2	151684.8	155384.4	159084	162783.7	166483.3	170182.9	173882.5	177582.2	181281.8	184981.5	188681.1	192380.7	196080.3	199780	203479.6	207179.2	210878.8	214578.5	218278.1	221977.8	225677.4	229377	233076.6	236776.3	240475.9	244175.5	247875.1	251574.8	255274.4	258974	262673.7]/3600;
yW(tEND+1:end,:)=[];

global cave Cave vCell vMed
twDiam = 4.6366;twV=(4/3)*pi*(twDiam/2)^3;
taDiam = 4.8844;taV=(4/3)*pi*(taDiam/2)^3;
bwDiam = 3.4040;bwV=(4/3)*pi*(bwDiam/2)^3;
baDiam = 3.2600;baV=(4/3)*pi*(baDiam/2)^3;
vCell=twV;vMed=2e11; % 1 microLiter = 1e9 microm^3

cave=5.367775274522914e-06;
Cave=-8.228361157550276;
Sin=519.8791992076812;

% Now, fit the stress
Se=sig*Sug;
figure;
for d=2:length(Stress)
    Dind=d; %current Stress index
    cStress=Stress(d)

    for n=1:3   % 3 replicates
        Cind=n; %current replicate index
        Cdata=yW(:,(Dind-1)*3+Cind)';
        
        Nin=Cdata(1);
        Nend=Nin+Sin;
        NendR=mean(Cdata(end-5:end));
        Cdata=Nin+(Nend-Nin)*(Cdata-Nin)/(NendR-Nin);
        
        y0=[Nin Nend-Nin 0.0 0.0 cStress];
        %y0=[Nin];
        
        subplot(length(Stress)-1,3,3*(Dind-2)+Cind);hold on;
        plot(tspan,log(Cdata),'o');
        ylim([3 7.1]);
        
        %[ab, slope, CI, m, global_std] = PLR (tspan(1:24), log(Cdata(1:24)), 4, 0.05);

        % prepare the problem, create a three-element optimization variable r
        r = optimvar('r',7,"LowerBound",[3e-6 0.1 1.5 0.5 1.0 1.0 0.001],"UpperBound",[1e-3 0.5 4.0 0.8 5.0 1.1 0.5]);
            
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
                        'StepTolerance',1e-12,...
                        'OptimalityTolerance',1e-3,...
                        'FunctionTolerance',1e-6,...
                        'MaxIterations',1000);
        
        
        % view problem
        % extraparams1: time points
        % extraparams2: initial conditions
        % extraparams3: true solutions
        %show(prob)

        % give an initial guess r0 for the solver
        r0.r = [0.004 8.0 4.0 0.75 1.5 3.0 1.0];
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

dlmwrite('varH2O2bN.txt',reshape(solN,15,tEND),'\t');
dlmwrite('varH2O2bS.txt',reshape(solS,15,tEND),'\t');
dlmwrite('varH2O2bD.txt',reshape(solD,15,tEND),'\t');
dlmwrite('varH2O2bT.txt',reshape(solT,15,tEND),'\t');
dlmwrite('varH2O2bE.txt',reshape(solE,15,tEND),'\t');

pars=[qest;fest;aest;pest;rest;dest;kest;qual]
dlmwrite('parsH2O2b.txt',pars,'\t');

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

b(1).FaceColor = [0.5 0.8 0.8];
b(2).FaceColor = [0.4 0.75 0.6];
b(3).FaceColor = [0.3 0.5 0.4];
b(4).FaceColor = [0.2 0.25 0.3];
b(5).FaceColor = [0.1 0.0 0.2];

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
