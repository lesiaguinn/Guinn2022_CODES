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
tspan2=11:82;
tspan3=83:tEND;
tspan=[tspan1 tspan2 tspan3];
tspan1=tspan1*3681.7/3600;
tspan2=tspan2*3681.7/3600;
tspan3=tspan3*3681.7/3600;
tspan=tspan*3681.7/3600;
yM(tEND+1:end,:)=[];

global cave Cave vCell vMed
twDiam = 4.6366;twV=(4/3)*pi*(twDiam/2)^3;
taDiam = 4.8844;taV=(4/3)*pi*(taDiam/2)^3;
bwDiam = 3.4040;bwV=(4/3)*pi*(bwDiam/2)^3;
baDiam = 3.2600;baV=(4/3)*pi*(baDiam/2)^3;
vCell=taV;vMed=2e11; % 1 microLiter = 1e9 microm^3

cave=3.006522935006745e-06;
Cave=1.903799757314577e+02;
Sin=5.296538485439166e+02;

% Now, fit the stress
Se=sig*Sug;
figure;
for d=2:length(Stress)
    Dind=d; %current Stress index
    cStress=Stress(d)

    for n=1:3   % 3 replicates
        Cind=n; %current replicate index
        Cdata=yM(1:tEND,(Dind-1)*3+Cind)';
        
        Nin1=Cdata(1);
        %Nend=mean(Cdata(end-10:end));
        Nend1=Cdata(10);
        Nin2=Cdata(11);
        Nend2=Nin2+Sin;
        Nin3=Cdata(83);
        Nend3=Nin3+Sin;

        %y01=[Nin1 Nend1-Nin1];
        y01=[Nin1 Sin];
        y02=[Nin2 Nend2-Nin2 cStress];
        y03=[Nin3 Nend3-Nin3 cStress];

%         NendR=mean(Cdata(end-5:end));
%         Cdata=Nin+(Nend-Nin)*(Cdata-Nin)/(NendR-Nin);
        
        y0=[Nin1 Nend1-Nin1 0.0 0.0 cStress];
        
        subplot(length(Stress)-1,3,3*(Dind-2)+Cind);hold on;
        plot(tspan,log(Cdata),'o');
        set(gca,'YLim',[3 7.1])
        
        %[ab, slope, CI, m, global_std] = PLR (tspan(1:24), log(Cdata(1:24)), 4, 0.05);

        % prepare the problem, create a three-element optimization variable r
        r = optimvar('r',8,"LowerBound",[0.01 0.005 2.5 1.5 1.0 0.2 1e-6 1e-3],"UpperBound",[0.05 0.05 25.0 2.5 500.0 0.25 1e-4 0.1]); 
            
        % To use RtoODE in an objective function:
        % convert the function to an optimization expression by using fcn2optimexpr
        %myfcn = fcn2optimexpr(@RtoODE,r,tspan,y0,'OutputSize',[1 length(tspan)]);
        %diffun(tspan,y0,[0.1 5.0 4.0 1.0 0.1 2.0])
        myfcn = fcn2optimexpr(@RtoODE,r,tspan1,tspan2,tspan3,y0,y02,y03);

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
        %r0.r = [0.4 1.0 4.0 0.75 1.5 0.5 0.5 0.0];
        r0.r = [0.4 0.1 1.0 4.0 100.0 0.5 0.05e-4 0.01];
               
        [rsol,sumsq] = solve(prob,r0,'Options',options);  %solve problem
        %disp(rsol.r)

        ss = RtoODE(rsol.r,tspan1,tspan2,tspan3,y0,y02,y03);
        plot(tspan,log(ss(1,:)),'c>--');
        
        ss5=RtoODE5(rsol.r,tspan1,tspan2,tspan3,y0,y02,y03);
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
        best(Dind-1,Cind)=rsol.r(8);
        qual(Dind-1,Cind)=sumsq;
    end
end

dlmwrite('varFLCRbN.txt',reshape(solN,15,tEND),'\t');
dlmwrite('varFLCRbS.txt',reshape(solS,15,tEND),'\t');
dlmwrite('varFLCRbD.txt',reshape(solD,15,tEND),'\t');
dlmwrite('varFLCRbT.txt',reshape(solT,15,tEND),'\t');
dlmwrite('varFLCRbE.txt',reshape(solE,15,tEND),'\t');

parsO=[qest;fest;aest;pest;rest;dest;kest;best;qual]

parsR=[qest(1,:);fest(1,:);aest(1,:);pest(1,:);rest(1,:);dest(1,:);kest(1,:);...
       qest(2,:);fest(2,:);aest(2,:);pest(2,:);rest(2,:);dest(2,:);kest(2,:);...
       qest(3,:);fest(3,:);aest(3,:);pest(3,:);rest(3,:);dest(3,:);kest(3,:);...
       qest(4,:);fest(4,:);aest(4,:);pest(4,:);rest(4,:);dest(4,:);kest(4,:);...
       qest(5,:);fest(5,:);aest(5,:);pest(5,:);rest(5,:);dest(5,:);kest(5,:);]
dlmwrite('parsFLCRb.txt',parsO,'\t');

%%
figure(2); 
parammean=[mean(qest(1,1:3))	mean(qest(2,1:3))	mean(qest(3,1:3))	mean(qest(4,1:3))	mean(qest(5,1:3))
mean(fest(1,1:3))	mean(fest(2,1:3))	mean(fest(3,1:3))	mean(fest(4,1:3))	mean(fest(5,1:3))
mean(aest(1,1:3))	mean(aest(2,1:3))	mean(aest(3,1:3))	mean(aest(4,1:3))	mean(aest(5,1:3))
mean(pest(1,1:3))	mean(pest(2,1:3))	mean(pest(3,1:3))	mean(pest(4,1:3))	mean(pest(5,1:3))
mean(rest(1,1:3))	mean(rest(2,1:3))	mean(rest(3,1:3))	mean(rest(4,1:3))	mean(rest(5,1:3))
mean(dest(1,1:3))	mean(dest(2,1:3))	mean(dest(3,1:3))	mean(dest(4,1:3))	mean(dest(5,1:3))
mean(kest(1,1:3))	mean(kest(2,1:3))	mean(kest(3,1:3))	mean(kest(4,1:3))	mean(kest(5,1:3))
mean(best(1,1:3))	mean(best(2,1:3))	mean(best(3,1:3))	mean(best(4,1:3))	mean(best(5,1:3))
mean(qual(1,1:3))	mean(qual(2,1:3))	mean(qual(3,1:3))	mean(qual(4,1:3))	mean(qual(5,1:3))];

paramstd=[std(qest(1,1:3))	std(qest(2,1:3))	std(qest(3,1:3))	std(qest(4,1:3))	std(qest(5,1:3))
std(fest(1,1:3))	std(fest(2,1:3))	std(fest(3,1:3))	std(fest(4,1:3))	std(fest(5,1:3))
std(aest(1,1:3))	std(aest(2,1:3))	std(aest(3,1:3))	std(aest(4,1:3))	std(aest(5,1:3))
std(pest(1,1:3))	std(pest(2,1:3))	std(pest(3,1:3))	std(pest(4,1:3))	std(pest(5,1:3))
std(rest(1,1:3))	std(rest(2,1:3))	std(rest(3,1:3))	std(rest(4,1:3))	std(rest(5,1:3))
std(dest(1,1:3))	std(dest(2,1:3))	std(dest(3,1:3))	std(dest(4,1:3))	std(dest(5,1:3))
std(kest(1,1:3))	std(kest(2,1:3))	std(kest(3,1:3))	std(kest(4,1:3))	std(kest(5,1:3))
std(best(1,1:3))	std(best(2,1:3))	std(best(3,1:3))	std(best(4,1:3))	std(best(5,1:3))
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
set(gca,'FontSize',24,'LineWidth',3,'fontname','Arial','xcolor','k','ycolor','k','XTickLabel',{'q','f','a','p','r','d','k','b','qual'}); 
pbaspect([2 1 1]); box on; ylabel('est param mean');
ylim([0 12]); xlim([0.5 9.5]);

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
    
    dydt(1) = ( c*r(1)^n/(r(1)^n+y(4)^n) - r(7)*y(4) )*y(1)*y(2)*(y(1)+C)-r(8)*y(1)*y(4);
    %dydt(1) = c*y(1)*y(2)*(y(1)+C)*r(1)^n/(r(1)^n+y(4)^n)-r(7)*y(1)*y(4);
    dydt(2) = -c*y(1)*y(2)*(y(1)+C)*r(1)^n/(r(1)^n+y(4)^n);
    dydt(3) = r(2)*(y(5)-y(3))-c*y(3)*y(2)*(y(1)+C)*r(1)^n/(r(1)^n+y(4)^n)-r(6)*y(3);
    dydt(4) = r(3)*y(3)-r(4)*y(4)^m/(r(5)^m+y(4)^m);
    dydt(5) = -r(6)*y(5)-r(2)*(y(5)-y(3))*y(1)*vCell/(vMed-vCell);
    
end

% function that computes the ODE solution using parameters r: Stress
function solpts = RtoODE(r,tspan1,tspan2,tspan3,y0,y02,y03)
    sol1 = ode45(@(t,y)diffun(t,y,r),tspan1,y0);
    solpts1 = deval(sol1,tspan1);
    y1=solpts1(:,end);
    y1(1)=y02(1);y1(2)=y02(2);y1(5)=y02(3);
    solpts1 = solpts1(1,:); % Just y(1)
    sol2 = ode45(@(t,y)diffun(t,y,r),tspan2,y1);
    solpts2 = deval(sol2,tspan2);
    y2=solpts2(:,end);
    y2(1)=y03(1);y2(2)=y03(2);y2(3)=0.0;y2(4)=0.0;y2(5)=y03(3);
    solpts2 = solpts2(1,:); % Just y(1)
    sol3 = ode45(@(t,y)diffun(t,y,r),tspan3,y2);
    solpts3 = deval(sol3,tspan3);
    solpts3 = solpts3(1,:); % Just y(1)
    solpts=[solpts1 solpts2 solpts3];
end

% function that computes the full ODE solution vector using parameters r: Stress
function solpts5 = RtoODE5(r,tspan1,tspan2,tspan3,y0,y02,y03)
    sol1 = ode45(@(t,y)diffun(t,y,r),tspan1,y0);
    solpts1 = deval(sol1,tspan1);
    y1=solpts1(:,end);
    y1(1)=y02(1);y1(2)=y02(2);y1(5)=y02(3);
%    solpts1 = solpts1(1,:); % Just y(1)
    sol2 = ode45(@(t,y)diffun(t,y,r),tspan2,y1);
    solpts2 = deval(sol2,tspan2);
%    solpts2 = solpts2(1,:); % Just y(1)
    y2=solpts2(:,end);
    y2(1)=y03(1);y2(2)=y03(2);y2(3)=0.0;y2(4)=0.0;y2(5)=y03(3);
    sol3 = ode45(@(t,y)diffun(t,y,r),tspan3,y2);
    solpts3 = deval(sol3,tspan3);
%    solpts3 = solpts3(1,:); % Just y(1)
    solpts5=[solpts1 solpts2 solpts3];
end
