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
tEND=length(tALL);
%tEND=36;
tspan1=1:10;
tspan2=11:82;
tspan3=83:tEND;

tspan1=[0	3673	7346	11019	14692.1	18365.1	22038.1	25711.2	29384.2	33057.2]/3600;
tspan2=[0	3672.9	7346	11019	14686.8	18359.8	22032.8	25705.8	29378.9	33051.9	36724.9	40397.9	44070.9	47744	51417	55090	58763	62436	66109	69782	73455.1	77128.1	80801.1	84474.1	88147.1	91820.1	95493.2	99166.2	102839.2	106512.2	110185.2	113858.3	117531.3	121204.3	124877.3	128550.3	132223.4	135896.4	139569.4	143242.4	146915.4	150588.4	154261.5	157934.5	161607.5	165280.5	168953.5	172626.6	176299.6	179972.6	183645.6	187318.6	190991.6	194664.7	198337.7	202010.7	205683.7	209356.8	213029.8	216702.8	220375.8	224048.8	227721.8	231394.8	235067.9	238740.9	242413.9	246086.9	249760.1	253433.3	257106.4	260779.4]/3600;
tspan2=mean(tspan1(2:end)-tspan1(1:end-1))+tspan1(end)+tspan2;
tspan3=[0	3699.6	7399.2	11098.8	14798.4	18498	22197.6	25897.2	29596.8	33296.4	36996	40695.6	44395.3	48094.9	51794.5	55494.1	59193.6	62893.3	66592.9	70292.5	73992.1	77691.7	81391.3	85090.9	88790.5	92490.1	96189.6	99889.2	103588.9	107288.5	110988.1	114687.7	118387.3	122086.9	125786.5	129486.1	133185.7	136885.3	140584.9	144284.5	147984.1	151683.7	155383.3	159082.9	162782.5	166482.1	170181.7	173881.3	177580.9	181280.5	184980.1	188679.7	192379.3	196078.9	199778.5	203478.1	207177.7	210877.3	214576.9	218276.5	221976.1	225675.8	229375.3	233074.9	236774.5	240474.1	244173.7	247873.3	251572.9	255272.5	258972.1	262671.8]/3600;
tspan3=mean(tspan2(2:end)-tspan2(1:end-1))+tspan2(end)+tspan3;
tspan=[tspan1 tspan2 tspan3];
yW(tEND+1:end,:)=[];

global cave Cave vCell vMed
twDiam = 4.6366;twV=(4/3)*pi*(twDiam/2)^3;
taDiam = 4.8844;taV=(4/3)*pi*(taDiam/2)^3;
bwDiam = 3.4040;bwV=(4/3)*pi*(bwDiam/2)^3;
baDiam = 3.2600;baV=(4/3)*pi*(baDiam/2)^3;
vCell=bwV;vMed=2e11; % 1 microLiter = 1e9 microm^3

cave =	2.186725454334630e-06;
Cave =	1.432975507683226e+02;
Sin =	7.060085197497939e+02;

% Now, fit the stress
Se=sig*Sug;
figure;
for d=2:length(Stress)
    Dind=d; %current Stress index
    cStress=Stress(d)

    for n=1:3   % 3 replicates
        Cind=n; %current replicate index
        Cdata=yW(1:tEND,(Dind-1)*3+Cind)';
        
        Nin1=Cdata(1);
        %Nend=mean(Cdata(end-10:end));
        Nend1=Nin1+Sin;
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
        r = optimvar('r',8,"LowerBound",[0.03 0.01 0.1 0.5 100.0 0.25 1e-5 0.05],"UpperBound",[0.075 0.05 10.0 2.5 250.0 0.3 1e-3 0.25]);
        
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
                        'StepTolerance',1e-12,...
                        'OptimalityTolerance',1e-12,...
                        'FunctionTolerance',1e-18,...
                        'MaxIterations',5000);

        % view problem
        % extraparams1: time points
        % extraparams2: initial conditions
        % extraparams3: true solutions
        %show(prob)

        % give an initial guess r0 for the solver
        %r0.r = [0.4 1.0 4.0 0.75 1.5 0.5 0.5 0.0];
        r0.r = [0.1 0.0 1.0 4.0 100.0 0.275 0.05e-3 0.1];
               
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
        legend('log(N)','log(N_f)','log(S)','D','T','E','Location','East');
        
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
qual
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
    
    %dydt(1) = (c-r(7)*y(4))*y(1)*y(2)*(y(1)+C)*r(1)^n/(r(1)^n+y(4)^n)-r(8)*y(1)*y(4);
    dydt(1) = (c*r(1)^n/(r(1)^n+y(4)^n)-r(7)*y(4))*y(1)*y(2)*(y(1)+C)-r(8)*y(1)*y(4);
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
