% Developed on: April 23, 2020
% Description:
% This script performs piecewise exponential growth curve fitting
 
clearvars; close all;
 
[num,txt,raw]=xlsread('DecFits_export_fitdataNEW','casp_fitdata'); 
 
amb=num(1,:);amb=amb(~isnan(amb)); %amB concentrations
% r1=num(2:73,1:3:13); %WT %uncomment for TBR1
% r2=num(2:73,2:3:14); %WT
% r3=num(2:73,3:3:15); %WT

r1=num(2:73,17:3:30); %MT %uncomment for TBR1dA
r2=num(2:73,18:3:31); %MT
r3=num(2:73,19:3:32); %MT

t=[1:1:72];	
% t=1:length(mw);
% % t=t'-1;
y1=r1(:,1); %uncomment for R1
y2=r1(:,2);
y3=r1(:,3);
y4=r1(:,4);
y5=r1(:,5);
% 
% y1=r2(:,1); %uncomment for R2
% y2=r2(:,2);
% y3=r2(:,3);
% y4=r2(:,4);
% y5=r2(:,5);

% y1=r3(:,1); %uncomment for R3
% y2=r3(:,2);
% y3=r3(:,3);
% y4=r3(:,4);
% y5=r3(:,5);

 
%% plot the ultimate result
figure(1);
h1=plot(t,y1,'color',[1.0 1.0 0.2],'LineWidth',3); hold on;
area(y1,'facecolor',[1.0 1.0 0.2],'FaceAlpha',0.3);

h2=plot(t,y2,'color',[1.0 0.8 0.2],'LineWidth',3); 
area(y2,'facecolor',[1.0 0.8 0.2],'FaceAlpha',0.3);

h3=plot(t,y3,'color',[1.0 0.4 0.2],'LineWidth',3); 
area(y3,'facecolor',[1.0 0.4 0.2],'FaceAlpha',0.3);

h4=plot(t,y4,'color',[0.7 0.2 0.0],'LineWidth',3); 
area(y4,'facecolor',[0.7 0.2 0.0],'FaceAlpha',0.3);

h5=plot(t,y5,'color',[0.6 0.0 0.0],'LineWidth',3); 
area(y5,'facecolor',[0.6 0.0 0.0],'FaceAlpha',0.3);

% h6=plot(t,y6,'color',[0.6 0.0 0.0],'LineWidth',3); 
% area(y6,'facecolor',[0.6 0.0 0.0],'FaceAlpha',0.3);

% set(gca,'color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
set(gca,'color',[0.8 0.8 0.8],'FontSize',28,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
pbaspect([1 1 1]); box on; ylim([3.9 7.1]);xlim([1 72]);
xlabel('Time (hrs)'); ylabel('log(N)'); title ('TBR1\Deltaa R1');  
 
%% trapz

Q1 = trapz(y1-y1(1,1)); %LINEAR -y0
Q2 = trapz(y2-y2(1,1)); %LINEAR -y0
Q3 = trapz(y3-y3(1,1)); %LINEAR -y0
Q4 = trapz(y4-y4(1,1)); %LINEAR -y0
Q5 = trapz(y5-y5(1,1)); %LINEAR -y0
% Q6 = trapz(y6-y6(1,1)); %LINEAR -y0
% Q6 = trapz(y6	-	0.195099995	); %LINEAR -y0
Q_model = [Q1 Q2 Q3 Q4 Q5];

% DQ1 = trapz(pd1-pd1(1,1)); %LINEAR -y0
% DQ2 = trapz(pd2-pd2(1,1)); %LINEAR -y0
% DQ3 = trapz(pd3-pd3(1,1)); %LINEAR -y0
% DQ4 = trapz(pd4-pd4(1,1)); %LINEAR -y0
% DQ5 = trapz(pd5-pd5(1,1)); %LINEAR -y0
% 
% Q_data = [DQ1 DQ2 DQ3 DQ4 DQ5];


