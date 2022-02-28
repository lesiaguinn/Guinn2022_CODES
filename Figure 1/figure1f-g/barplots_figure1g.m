clc; close all;
%% YPD & SC slopes & durations
% Directions: follow the statements in bold to plot STAT OD and EXP slope for SC-Glc growth curves in TBR1 and TBR1dA

[num,txt,raw]=xlsread('ypdANDsc_PARAMETERS.xlsx','allparameters');
%% apply for STAT OD

scwt05=num(27,2:4); %SC-Glc TBR1
scwt1=num(28,2:4); 
scwt2=num(29,2:4);

scmt05=num(27,5:7); %SC-Glc TBR1dA
scmt1=num(28,5:7); 
scmt2=num(29,5:7);

%% apply for EXP slope

% scwt05=num(9,2:4); %SC-Glc TBR1
% scwt1=num(10,2:4); 
% scwt2=num(11,2:4);
% 
% scmt05=num(9,5:7); %SC-Glc TBR1dA
% scmt1=num(10,5:7); 
% scmt2=num(11,5:7);

%% leave ON
% x coordinates
j1=0.777777777777778;
j2=1;
j3=1.222222222222222;

j4=j1+1;
j5=j2+1;
j6=j3+1;

%% Apply for SC
statmean = [0.628493335	0.787308466	1.223443549;
0.69580606	0.928012823	1.037430771];

statsd = [0.049263919	0.033643493	0.02736685;
0.014757306	0.005885602	0.017916071];

expslopemean = [0.1689	0.1711	0.188466667;
0.2379	0.2546	0.225266667];

expslopesd = [0.0073	0.006030755	0.009932438;
0.001708801	0.00295973	0.002557994];

%%
figure(1);
%% apply for STAT OD
hb6 = bar(statmean,1);
xBar=cell2mat(get(hb6,'XData')).' + [hb6.XOffset];  
hold on
hE6=errorbar(xBar,statmean,statsd,'k.','Linewidth',3);

%% apply for EXP slope
% hb6 = bar(expslopemean,1); 
% xBar=cell2mat(get(hb6,'XData')).' + [hb6.XOffset];  
% hold on
% hE6=errorbar(xBar,expslopemean,expslopesd,'k.','Linewidth',3); hold on;

%% leave ON
XTickLabel={'a','b'};
XTick=[1:2];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
set(gca, 'XTickLabelRotation', 45); 

set(hb6,'FaceColor','none','FaceColor','flat','LineWidth',3,'FaceAlpha',1);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'TBR1','TBR1\Deltaa'}); 
ylabel('STAT OD_{600}'); %apply for STAT OD
% ylabel('S_{exp} (hrs^{-1})'); %apply for EXP slope

pbaspect([2 1 1]); 
ylim([0 1.5]); %xlim([0 5]); %apply for STAT OD
% ylim([0 0.3]); %xlim([0 5]); %apply for EXP slope
box on;

hb6(1).FaceColor = [0.5 0.8 0.8]; %tbr1 colors
hb6(2).FaceColor = [0.3 0.5 0.4];
hb6(3).FaceColor = [0.1 0.0 0.2];

% hb6(1).FaceColor = [1.0 1.0 0.6]; %tbr1dA colors //colors were manually adjusted for TBR1dA
% hb6(2).FaceColor = [1.0 0.4 0.2];
% hb6(3).FaceColor = [0.6 0.0 0.0];
hold on;

p1=plot(j1,scwt05,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
p2=plot(j2,scwt1,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
p3=plot(j3,scwt2,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
p4=plot(j4,scmt05,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
p5=plot(j5,scmt1,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
p6=plot(j6,scmt2,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 

hold on;

uistack(p1,'up');
uistack(p2,'up');
uistack(p3,'up');
uistack(p4,'up');
uistack(p5,'up');
uistack(p6,'up'); hold on;
uistack(hE6,'top');

hold off 
