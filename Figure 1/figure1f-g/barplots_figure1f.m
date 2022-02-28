clc; close all;
%% YPD & SC slopes & durations
% Directions: follow the statements in bold to plot STAT OD and EXP slope for SC-Glc growth curves in TBR1 and TBR1dA

[num,txt,raw]=xlsread('ypdANDsc_PARAMETERS.xlsx','allparameters');
%% apply for STAT OD
ypdwt05=num(19,2:4); %YPD-Glc TBR1
ypdwt1=num(20,2:4); 
ypdwt2=num(21,2:4);

ypdmt05=num(19,5:7); %YPD-Glc TBR1dA
ypdmt1=num(20,5:7); 
ypdmt2=num(21,5:7);

%% apply for EXP slope
% ypdwt05=num(1,2:4); %YPD-Glc TBR1
% ypdwt1=num(2,2:4); 
% ypdwt2=num(3,2:4);
% 
% ypdmt05=num(1,5:7); %YPD-Glc TBR1dA
% ypdmt1=num(2,5:7); 
% ypdmt2=num(3,5:7);

%% leave ON
% x coordinates
j1=0.777777777777778;
j2=1;
j3=1.222222222222222;

j4=j1+1;
j5=j2+1;
j6=j3+1;

%% Apply for YPD
statmean = [0.596976202	0.764554549	0.995103763;
0.719833332	0.907136407	1.176240228];

statsd = [0.0332958	0.080217801	0.025314401;
0.011716634	0.006895903	0.009726737];

expslopemean = [0.086533333	0.108766667	0.111;
0.117933333	0.130233333	0.1427];

expslopesd = [0.003453018	0.01850009	0.001967232;
0.006726316	0.002409011	0.004881598];

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
% hold on;
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

p1=plot(j1,ypdwt05,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
p2=plot(j2,ypdwt1,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
p3=plot(j3,ypdwt2,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
p4=plot(j4,ypdmt05,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
p5=plot(j5,ypdmt1,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
p6=plot(j6,ypdmt2,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 

hold on;

uistack(p1,'up');
uistack(p2,'up');
uistack(p3,'up');
uistack(p4,'up');
uistack(p5,'up');
uistack(p6,'up'); hold on;
uistack(hE6,'top');

hold off 