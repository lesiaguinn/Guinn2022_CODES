% Developed on: April 23, 2020
% Description:
% This script performs piecewise exponential growth curve fitting
 
clearvars; close all;
 
[num,txt,raw]=xlsread('DecFits_export_fitdataNEW','casp_fitdata'); %change h2o2, amB, casp, flc, flcR HERE
[num1,txt1,raw1]=xlsread('DecFits_export_fitdataNEW','casp_cellNdata'); 

% r1=num(2:73,1:3:13); %WT 
% r2=num(2:73,2:3:14); %WT
% r3=num(2:73,3:3:15); %WT
r1=num(2:73,17:3:29); %MT 
r2=num(2:73,18:3:30); %MT
r3=num(2:73,19:3:31); %MT

% d1=num1(2:73,1:3:13); %WT
% d2=num1(2:73,2:3:14); %WT
% d3=num1(2:73,3:3:15); %WT
d1=num1(2:73,23:3:35); %MT
d2=num1(2:73,24:3:36); %MT
d3=num1(2:73,25:3:37); %MT

t=[0	3699.7	7399.4	11099	14798.7	18498.4	22198.1	25897.7	29597.4	33297.1	36996.7	40696.4	44396.1	48095.8	51795.4	55495.1	59194.8	62894.5	66594.1	70293.8	73993.5	77693.2	81392.9	85092.5	88792.2	92491.9	96191.5	99891.2	103590.9	107290.6	110990.2	114689.9	118389.6	122089.2	125788.9	129488.6	133188.3	136887.9	140587.6	144287.3	147986.9	151686.6	155386.3	159085.9	162785.6	166485.3	170185	173884.6	177584.3	181284	184983.6	188683.3	192383	196082.7	199782.3	203482	207181.7	210881.3	214581	218280.7	221980.4	225680	229379.7	233079.4	236779	240478.7	244178.4	247878	251577.7	255277.4	258977.1	262676.8]/3600;

%% choose replicate HERE

y1=r1(:,1); %add minimal value of the curve to lift it above 0: e.g. y1=log(mw(:,1));
y2=r1(:,2);
y3=r1(:,3);
y4=r1(:,4);
y5=r1(:,5);
% % 
% y1=r2(:,1); %add minimal value of the curve to lift it above 0: e.g. y1=log(mw(:,1));
% y2=r2(:,2);
% y3=r2(:,3);
% y4=r2(:,4);
% y5=r2(:,5);

% y1=r3(:,1); %add minimal value of the curve to lift it above 0: e.g. y1=log(mw(:,1));
% y2=r3(:,2);
% y3=r3(:,3);
% y4=r3(:,4);
% y5=r3(:,5);

pd1=d1(:,1); %add minimal value of the curve to lift it above 0: e.g. y1=log(mw(:,1));
pd2=d1(:,2);
pd3=d1(:,3);
pd4=d1(:,4);
pd5=d1(:,5);
% 
% pd1=d2(:,1); %add minimal value of the curve to lift it above 0: e.g. y1=log(mw(:,1));
% pd2=d2(:,2);
% pd3=d2(:,3);
% pd4=d2(:,4);
% pd5=d2(:,5);

% pd1=d3(:,1); %add minimal value of the curve to lift it above 0: e.g. y1=log(mw(:,1));
% pd2=d3(:,2);
% pd3=d3(:,3);
% pd4=d3(:,4);
% pd5=d3(:,5);
 
%% plot the ultimate result
figure(1);

% h1=plot(t,y1,'color',[0.5 0.8 0.8],'LineWidth',3); hold on;
% area(y1,'facecolor',[0.5 0.8 0.8],'FaceAlpha',0.3);
% plot(t,pd1,'o','MarkerSize',8,'color',[0.5 0.8 0.8],'LineWidth',1);
% 
% h2=plot(t,y2,'color',[0.4 0.75 0.6],'LineWidth',3); 
% area(y2,'facecolor',[0.4 0.75 0.6],'FaceAlpha',0.3);
% plot(t,pd2,'o','MarkerSize',8,'color',[0.4 0.75 0.6],'LineWidth',1);
% 
% h3=plot(t,y3,'color',[0.3 0.5 0.4],'LineWidth',3); 
% area(y3,'facecolor',[0.3 0.5 0.4],'FaceAlpha',0.3);
% plot(t,pd3,'o','MarkerSize',8,'color',[0.3 0.5 0.4],'LineWidth',1);
% 
% h4=plot(t,y4,'color',[0.2 0.25 0.3],'LineWidth',3); 
% area(y4,'facecolor',[0.2 0.25 0.3],'FaceAlpha',0.3);
% plot(t,pd4,'o','MarkerSize',8,'color',[0.2 0.25 0.3],'LineWidth',1);
% 
% h5=plot(t,y5,'color',[0.1 0.0 0.2],'LineWidth',3); 
% area(y5,'facecolor',[0.1 0.0 0.2],'FaceAlpha',0.3);
% plot(t,pd5,'o','MarkerSize',8,'color',[0.1 0.0 0.2],'LineWidth',1);

h1=plot(t,y1,'color',[1.0 1.0 0.2],'LineWidth',3); hold on;
area(y1,'facecolor',[1.0 1.0 0.2],'FaceAlpha',0.3);
plot(t,pd1,'o','MarkerSize',8,'color',[1.0 1.0 0.2],'LineWidth',1);

h2=plot(t,y2,'color',[1.0 0.8 0.2],'LineWidth',3); 
area(y2,'facecolor',[1.0 0.8 0.2],'FaceAlpha',0.3);
plot(t,pd2,'o','MarkerSize',8,'color',[1.0 0.8 0.2],'LineWidth',1);

h3=plot(t,y3,'color',[1.0 0.4 0.2],'LineWidth',3); 
area(y3,'facecolor',[1.0 0.4 0.2],'FaceAlpha',0.3);
plot(t,pd3,'o','MarkerSize',8,'color',[1.0 0.4 0.2],'LineWidth',1);

h4=plot(t,y4,'color',[0.7 0.2 0.0],'LineWidth',3); 
area(y4,'facecolor',[0.7 0.2 0.0],'FaceAlpha',0.3);
plot(t,pd4,'o','MarkerSize',8,'color',[0.7 0.2 0.0],'LineWidth',1);

h5=plot(t,y5,'color',[0.6 0.0 0.0],'LineWidth',3); 
area(y5,'facecolor',[0.6 0.0 0.0],'FaceAlpha',0.3);
plot(t,pd5,'o','MarkerSize',8,'color',[0.6 0.0 0.0],'LineWidth',1);

% h6=plot(t,y6,'color',[0.6 0.0 0.0],'LineWidth',3); 
% area(y6,'facecolor',[0.6 0.0 0.0],'FaceAlpha',0.3);

% set(gca,'color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
set(gca,'color',[0.8 0.8 0.8],'FontSize',28,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
pbaspect([1 1 1]); box on; ylim([y1(1,1) 7.1]);xlim([1 72]);
xlabel('Time (hrs)'); ylabel('log(N)'); 
% title ('TBR1 R3'); %change replicate HERE
title ('TBR1\Deltaa R1');  
 
%% trapz

Q1 = trapz(y1-y1(1,1)); %LINEAR -y0
Q2 = trapz(y2-y2(1,1)); %LINEAR -y0
Q3 = trapz(y3-y3(1,1)); %LINEAR -y0
Q4 = trapz(y4-y4(1,1)); %LINEAR -y0
Q5 = trapz(y5-y5(1,1)); %LINEAR -y0
% Q6 = trapz(y6	-	0.195099995	); %LINEAR -y0
Q_model = [Q1 Q2 Q3 Q4 Q5];

DQ1 = trapz(pd1-pd1(1,1)); %LINEAR -y0
DQ2 = trapz(pd2-pd2(1,1)); %LINEAR -y0
DQ3 = trapz(pd3-pd3(1,1)); %LINEAR -y0
DQ4 = trapz(pd4-pd4(1,1)); %LINEAR -y0
DQ5 = trapz(pd5-pd5(1,1)); %LINEAR -y0

Q_data = [DQ1 DQ2 DQ3 DQ4 DQ5];

% ctz = cumtrapz(y1);
% TA = table(t',ctz','VariableNames',{'Time','Growth'})

