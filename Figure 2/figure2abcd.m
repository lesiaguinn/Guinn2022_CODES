% Developed on: April 23, 2020
% Description:
% This script performs piecewise exponential growth curve fitting
 
clearvars; close all;

Wcolors=[...
    0.75 1.0 1.0
    0.5 0.8 0.8
    0.4 0.75 0.6
    0.3 0.5 0.4
    0.2 0.25 0.3
    0.1 0.0 0.2];

Mcolors=[...
    1.0 1.0 0.6
    1.0 1.0 0.2
    1.0 0.8 0.2
    1.0 0.4 0.2
    0.7 0.2 0.0
    0.6 0.0 0.0];

%% 2a) h2o2 WT
[num,txt,raw]=xlsread('Lesia2020_alldrugs.xlsx','h2o2_tbr1'); %change h2o2 to amB, casp, flc for the corresponding drugs
stress=num(1,:);stress=stress(~isnan(stress)); stress=stress(1:6); %h2o2 concentrations
mw=num(3:74,2:4:26); %change to 3:4:26 for Replicate 2, 4:4:26 for replicate 3
% ma=num(3:74,4:4:26);
% sw=num(3:74,6:8:end);
% sa=num(3:74,7:8:end);

t=[1:1:72];	
% t=1:length(mw);
% t=t'-1;
y1=mw(:,1); %add minimal value of the curve to lift it above 0: e.g. y1=log(mw(:,1))+1.864;
y2=mw(:,2);
y3=mw(:,3);
y4=mw(:,4);
y5=mw(:,5);
y6=mw(:,6);
 
% plot the flc WT result
figure(1);

h1=plot(t,y1,'color',Wcolors(1,:),'LineWidth',3); hold on;
area(y1,'facecolor',Wcolors(1,:),'FaceAlpha',0.3);

h2=plot(t,y2,'color',Wcolors(2,:),'LineWidth',3); 
area(y2,'facecolor',Wcolors(2,:),'FaceAlpha',0.3);

h3=plot(t,y3,'color',Wcolors(3,:),'LineWidth',3); 
area(y3,'facecolor',Wcolors(3,:),'FaceAlpha',0.3);

h4=plot(t,y4,'color',Wcolors(4,:),'LineWidth',3); 
area(y4,'facecolor',Wcolors(4,:),'FaceAlpha',0.3);

h5=plot(t,y5,'color',Wcolors(5,:),'LineWidth',3); 
area(y5,'facecolor',Wcolors(5,:),'FaceAlpha',0.3);

h6=plot(t,y6,'color',Wcolors(6,:),'LineWidth',3); 
area(y6,'facecolor',Wcolors(6,:),'FaceAlpha',0.3);


% set(gca,'color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
set(gca,'color',[0.8 0.8 0.8],'FontSize',28,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
%pbaspect([1 1 1]); box on; ylim([-2 0.5]);xlim([1 71]);
pbaspect([1 1 1]); box on; xlim([1 73]); ylim([0.2 1.5])
xlabel('Time (hrs)'); ylabel('log(OD_{600})'); title ('TBR1 R1', 'Position', [40, 1.2, 0]);  
 
% trapz WT

Q1 = trapz(y1	-	y1(1)	); %LINEAR -y0
Q2 = trapz(y2	-	y2(1)	); %LINEAR -y0
Q3 = trapz(y3	-	y3(1)	); %LINEAR -y0
Q4 = trapz(y4	-	y4(1)	); %LINEAR -y0
Q5 = trapz(y5	-	y5(1)	); %LINEAR -y0
Q6 = trapz(y6	-	y6(1)	); %LINEAR -y0

Q = [Q1 Q2 Q3 Q4 Q5 Q6];

figure(2);hold on;
h=bar(stress,diag(Q),'stacked');
set(h(1),'facecolor',Wcolors(1,:),'FaceAlpha',0.5);
set(h(2),'facecolor',Wcolors(2,:),'FaceAlpha',0.5);
set(h(3),'facecolor',Wcolors(3,:),'FaceAlpha',0.5);
set(h(4),'facecolor',Wcolors(4,:),'FaceAlpha',0.5);
set(h(5),'facecolor',Wcolors(5,:),'FaceAlpha',0.5);
set(h(6),'facecolor',Wcolors(6,:),'FaceAlpha',0.5);
xlim([stress(1)-stress(2) stress(end)+stress(2)])
set(gca,'XTick',stress(1:2:end),'FontSize',24);
xlabel('%H2O2') 

% ctz = cumtrapz(y1);
% TA = table(t',ctz','VariableNames',{'Time','Growth'})
% TA

%% 2b) h2o2 MT
[num,txt,raw]=xlsread('Lesia2020_alldrugs.xlsx','h2o2_deltaamn1'); %Sheet 'h2o2' with means ONLY
stress=num(1,:);stress=stress(~isnan(stress)); stress=stress(1:6); %h2o2 concentrations
%mw=num(3:74,4:4:26); %row3 thru 74, column 2 with interval 4 thru end of numbers
 ma=num(3:74,4:4:26);
% sw=num(3:74,6:8:end);
% sa=num(3:74,7:8:end);

t=[1:1:72];	
% t=1:length(mw);
% t=t'-1;
y1=ma(:,1); %add minimal value of the curve to lift it above 0: e.g. y1=log(mw(:,1))+1.864;
y2=ma(:,2);
y3=ma(:,3);
y4=ma(:,4);
y5=ma(:,5);
y6=ma(:,6);
 
% plot the flc MT result
figure(3);
h1=plot(t,y1,'color',Mcolors(1,:),'LineWidth',3); hold on;
area(y1,'facecolor',Mcolors(1,:),'FaceAlpha',0.3);

h2=plot(t,y2,'color',Mcolors(2,:),'LineWidth',3); 
area(y2,'facecolor',Mcolors(2,:),'FaceAlpha',0.3);

h3=plot(t,y3,'color',Mcolors(3,:),'LineWidth',3); 
area(y3,'facecolor',Mcolors(3,:),'FaceAlpha',0.3);

h4=plot(t,y4,'color',Mcolors(4,:),'LineWidth',3); 
area(y4,'facecolor',Mcolors(4,:),'FaceAlpha',0.3);

h5=plot(t,y5,'color',Mcolors(5,:),'LineWidth',3); 
area(y5,'facecolor',Mcolors(5,:),'FaceAlpha',0.3);

h6=plot(t,y6,'color',Mcolors(6,:),'LineWidth',3); 
area(y6,'facecolor',Mcolors(6,:),'FaceAlpha',0.3);

% set(gca,'color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
set(gca,'color',[0.8 0.8 0.8],'FontSize',28,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
%pbaspect([1 1 1]); box on; ylim([-2 0.5]);xlim([1 71]);
pbaspect([1 1 1]); box on; xlim([1 73]); ylim([0.2 1.5])
xlabel('Time (hrs)'); ylabel('log(OD_{600})'); title ('TBR1\Deltaa R1', 'Position', [40, 1.2, 0]);  
 
% trapz MT

Q1 = trapz(y1	-	y1(1)	); %LINEAR -y0
Q2 = trapz(y2	-	y2(1)	); %LINEAR -y0
Q3 = trapz(y3	-	y3(1)	); %LINEAR -y0
Q4 = trapz(y4	-	y4(1)	); %LINEAR -y0
Q5 = trapz(y5	-	y5(1)	); %LINEAR -y0
Q6 = trapz(y6	-	y6(1)	); %LINEAR -y0

Q = [Q1 Q2 Q3 Q4 Q5 Q6];

figure(4);hold on;
h=bar(stress,diag(Q),'stacked');
set(h(1),'facecolor',Mcolors(1,:),'FaceAlpha',0.5);
set(h(2),'facecolor',Mcolors(2,:),'FaceAlpha',0.5);
set(h(3),'facecolor',Mcolors(3,:),'FaceAlpha',0.5);
set(h(4),'facecolor',Mcolors(4,:),'FaceAlpha',0.5);
set(h(5),'facecolor',Mcolors(5,:),'FaceAlpha',0.5);
set(h(6),'facecolor',Mcolors(6,:),'FaceAlpha',0.5);
xlim([stress(1)-stress(2) stress(end)+stress(2)])
set(gca,'XTick',stress(1:2:end),'FontSize',24);
xlabel('%H2O2')

% ctz = cumtrapz(y1);
% TA = table(t',ctz','VariableNames',{'Time','Growth'})
% TA

 
%% 2a) amB WT
[num,txt,raw]=xlsread('Lesia2020_alldrugs.xlsx','amB_tbr1'); %Sheet 'amB' with means ONLY
stress=num(1,:);stress=stress(~isnan(stress)); stress=stress(1:6); %flc concentrations
mw=num(3:74,4:4:26); %row3 thru 74, column 2 with interval 4 thru end of numbers
% ma=num(3:74,4:4:26);
% sw=num(3:74,6:8:end);
% sa=num(3:74,7:8:end);

t=[1:1:72];	
% t=1:length(mw);
% t=t'-1;
y1=mw(:,1); %add minimal value of the curve to lift it above 0: e.g. y1=log(mw(:,1))+1.864;
y2=mw(:,2);
y3=mw(:,3);
y4=mw(:,4);
y5=mw(:,5);
y6=mw(:,6);
 
% plot the flc WT result
figure(5);

h1=plot(t,y1,'color',Wcolors(1,:),'LineWidth',3); hold on;
area(y1,'facecolor',Wcolors(1,:),'FaceAlpha',0.3);

h2=plot(t,y2,'color',Wcolors(2,:),'LineWidth',3); 
area(y2,'facecolor',Wcolors(2,:),'FaceAlpha',0.3);

h3=plot(t,y3,'color',Wcolors(3,:),'LineWidth',3); 
area(y3,'facecolor',Wcolors(3,:),'FaceAlpha',0.3);

h4=plot(t,y4,'color',Wcolors(4,:),'LineWidth',3); 
area(y4,'facecolor',Wcolors(4,:),'FaceAlpha',0.3);

h5=plot(t,y5,'color',Wcolors(5,:),'LineWidth',3); 
area(y5,'facecolor',Wcolors(5,:),'FaceAlpha',0.3);

h6=plot(t,y6,'color',Wcolors(6,:),'LineWidth',3); 
area(y6,'facecolor',Wcolors(6,:),'FaceAlpha',0.3);


% set(gca,'color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
set(gca,'color',[0.8 0.8 0.8],'FontSize',28,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
%pbaspect([1 1 1]); box on; ylim([-2 0.5]);xlim([1 71]);
pbaspect([1 1 1]); box on; xlim([1 73]); ylim([0.2 1.5])
xlabel('Time (hrs)'); ylabel('log(OD_{600})'); title ('TBR1 R1', 'Position', [40, 1.2, 0]);  
 
% trapz WT

Q1 = trapz(y1	-	y1(1)	); %LINEAR -y0
Q2 = trapz(y2	-	y2(1)	); %LINEAR -y0
Q3 = trapz(y3	-	y3(1)	); %LINEAR -y0
Q4 = trapz(y4	-	y4(1)	); %LINEAR -y0
Q5 = trapz(y5	-	y5(1)	); %LINEAR -y0
Q6 = trapz(y6	-	y6(1)	); %LINEAR -y0

Q = [Q1 Q2 Q3 Q4 Q5 Q6];

figure(6);hold on;
h=bar(stress,diag(Q),'stacked');
set(h(1),'facecolor',Wcolors(1,:),'FaceAlpha',0.5);
set(h(2),'facecolor',Wcolors(2,:),'FaceAlpha',0.5);
set(h(3),'facecolor',Wcolors(3,:),'FaceAlpha',0.5);
set(h(4),'facecolor',Wcolors(4,:),'FaceAlpha',0.5);
set(h(5),'facecolor',Wcolors(5,:),'FaceAlpha',0.5);
set(h(6),'facecolor',Wcolors(6,:),'FaceAlpha',0.5);
xlim([stress(1)-stress(2) stress(end)+stress(2)])
set(gca,'XTick',stress(1:2:end),'FontSize',24);
xlabel('\mug/ml AmB')

% ctz = cumtrapz(y1);
% TA = table(t',ctz','VariableNames',{'Time','Growth'})
% TA

%% 2b) amB MT
[num,txt,raw]=xlsread('Lesia2020_alldrugs.xlsx','amB_deltaamn1'); %Sheet 'amB' with means ONLY
stress=num(1,:);stress=stress(~isnan(stress)); stress=stress(1:6); %flc concentrations
%mw=num(3:74,4:4:26); %row3 thru 74, column 2 with interval 4 thru end of numbers
 ma=num(3:74,4:4:26);
% sw=num(3:74,6:8:end);
% sa=num(3:74,7:8:end);

t=[1:1:72];	
% t=1:length(mw);
% t=t'-1;
y1=ma(:,1); %add minimal value of the curve to lift it above 0: e.g. y1=log(mw(:,1))+1.864;
y2=ma(:,2);
y3=ma(:,3);
y4=ma(:,4);
y5=ma(:,5);
y6=ma(:,6);
 
% plot the flc MT result
figure(7);
h1=plot(t,y1,'color',Mcolors(1,:),'LineWidth',3); hold on;
area(y1,'facecolor',Mcolors(1,:),'FaceAlpha',0.3);

h2=plot(t,y2,'color',Mcolors(2,:),'LineWidth',3); 
area(y2,'facecolor',Mcolors(2,:),'FaceAlpha',0.3);

h3=plot(t,y3,'color',Mcolors(3,:),'LineWidth',3); 
area(y3,'facecolor',Mcolors(3,:),'FaceAlpha',0.3);

h4=plot(t,y4,'color',Mcolors(4,:),'LineWidth',3); 
area(y4,'facecolor',Mcolors(4,:),'FaceAlpha',0.3);

h5=plot(t,y5,'color',Mcolors(5,:),'LineWidth',3); 
area(y5,'facecolor',Mcolors(5,:),'FaceAlpha',0.3);

h6=plot(t,y6,'color',Mcolors(6,:),'LineWidth',3); 
area(y6,'facecolor',Mcolors(6,:),'FaceAlpha',0.3);

% set(gca,'color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
set(gca,'color',[0.8 0.8 0.8],'FontSize',28,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
%pbaspect([1 1 1]); box on; ylim([-2 0.5]);xlim([1 71]);
pbaspect([1 1 1]); box on; xlim([1 73]); ylim([0.2 1.5])
xlabel('Time (hrs)'); ylabel('log(OD_{600})'); title ('TBR1\Deltaa R1', 'Position', [40, 1.2, 0]);  
 
% trapz MT

Q1 = trapz(y1	-	y1(1)	); %LINEAR -y0
Q2 = trapz(y2	-	y2(1)	); %LINEAR -y0
Q3 = trapz(y3	-	y3(1)	); %LINEAR -y0
Q4 = trapz(y4	-	y4(1)	); %LINEAR -y0
Q5 = trapz(y5	-	y5(1)	); %LINEAR -y0
Q6 = trapz(y6	-	y6(1)	); %LINEAR -y0

Q = [Q1 Q2 Q3 Q4 Q5 Q6];

figure(8);hold on;
h=bar(stress,diag(Q),'stacked');
set(h(1),'facecolor',Mcolors(1,:),'FaceAlpha',0.5);
set(h(2),'facecolor',Mcolors(2,:),'FaceAlpha',0.5);
set(h(3),'facecolor',Mcolors(3,:),'FaceAlpha',0.5);
set(h(4),'facecolor',Mcolors(4,:),'FaceAlpha',0.5);
set(h(5),'facecolor',Mcolors(5,:),'FaceAlpha',0.5);
set(h(6),'facecolor',Mcolors(6,:),'FaceAlpha',0.5);
xlim([stress(1)-stress(2) stress(end)+stress(2)])
set(gca,'XTick',stress(1:2:end),'FontSize',24);
xlabel('\mug/ml AmB')

% ctz = cumtrapz(y1);
% TA = table(t',ctz','VariableNames',{'Time','Growth'})
% TA

 
%% 3a) casp WT
[num,txt,raw]=xlsread('Lesia2020_alldrugs.xlsx','casp_tbr1'); %Sheet 'casp' with means ONLY
stress=num(1,:);stress=stress(~isnan(stress)); stress=stress(1:6); %flc concentrations
mw=num(3:74,4:4:26); %row3 thru 74, column 2 with interval 4 thru end of numbers
% ma=num(3:74,4:4:26);
% sw=num(3:74,6:8:end);
% sa=num(3:74,7:8:end);

t=[1:1:72];	
% t=1:length(mw);
% t=t'-1;
y1=mw(:,1); %add minimal value of the curve to lift it above 0: e.g. y1=log(mw(:,1))+1.864;
y2=mw(:,2);
y3=mw(:,3);
y4=mw(:,4);
y5=mw(:,5);
y6=mw(:,6);
 
% plot the flc WT result
figure(9);

h1=plot(t,y1,'color',Wcolors(1,:),'LineWidth',3); hold on;
area(y1,'facecolor',Wcolors(1,:),'FaceAlpha',0.3);

h2=plot(t,y2,'color',Wcolors(2,:),'LineWidth',3); 
area(y2,'facecolor',Wcolors(2,:),'FaceAlpha',0.3);

h3=plot(t,y3,'color',Wcolors(3,:),'LineWidth',3); 
area(y3,'facecolor',Wcolors(3,:),'FaceAlpha',0.3);

h4=plot(t,y4,'color',Wcolors(4,:),'LineWidth',3); 
area(y4,'facecolor',Wcolors(4,:),'FaceAlpha',0.3);

h5=plot(t,y5,'color',Wcolors(5,:),'LineWidth',3); 
area(y5,'facecolor',Wcolors(5,:),'FaceAlpha',0.3);

h6=plot(t,y6,'color',Wcolors(6,:),'LineWidth',3); 
area(y6,'facecolor',Wcolors(6,:),'FaceAlpha',0.3);


% set(gca,'color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
set(gca,'color',[0.8 0.8 0.8],'FontSize',28,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
%pbaspect([1 1 1]); box on; ylim([-2 0.5]);xlim([1 71]);
pbaspect([1 1 1]); box on; xlim([1 73]); ylim([0.2 1.5])
xlabel('Time (hrs)'); ylabel('log(OD_{600})'); title ('TBR1 R1', 'Position', [40, 1.2, 0]);  


 
% trapz WT

Q1 = trapz(y1	-	y1(1)	); %LINEAR -y0
Q2 = trapz(y2	-	y2(1)	); %LINEAR -y0
Q3 = trapz(y3	-	y3(1)	); %LINEAR -y0
Q4 = trapz(y4	-	y4(1)	); %LINEAR -y0
Q5 = trapz(y5	-	y5(1)	); %LINEAR -y0
Q6 = trapz(y6	-	y6(1)	); %LINEAR -y0

Q = [Q1 Q2 Q3 Q4 Q5 Q6];

figure(10);hold on;
h=bar(stress,diag(Q),'stacked');
set(h(1),'facecolor',Wcolors(1,:),'FaceAlpha',0.5);
set(h(2),'facecolor',Wcolors(2,:),'FaceAlpha',0.5);
set(h(3),'facecolor',Wcolors(3,:),'FaceAlpha',0.5);
set(h(4),'facecolor',Wcolors(4,:),'FaceAlpha',0.5);
set(h(5),'facecolor',Wcolors(5,:),'FaceAlpha',0.5);
set(h(6),'facecolor',Wcolors(6,:),'FaceAlpha',0.5);
xlim([stress(1)-stress(2) stress(end)+stress(2)])
set(gca,'XTick',stress(1:2:end),'FontSize',24);
xlabel('\mug/ml CASP')

% ctz = cumtrapz(y1);
% TA = table(t',ctz','VariableNames',{'Time','Growth'})
% TA

%% 3b) casp MT
[num,txt,raw]=xlsread('Lesia2020_alldrugs.xlsx','casp_deltaamn1'); %Sheet 'casp' with means ONLY
stress=num(1,:);stress=stress(~isnan(stress)); stress=stress(1:6); %flc concentrations
%mw=num(3:74,4:4:26); %row3 thru 74, column 2 with interval 4 thru end of numbers
 ma=num(3:74,4:4:26);
% sw=num(3:74,6:8:end);
% sa=num(3:74,7:8:end);

t=[1:1:72];	
% t=1:length(mw);
% t=t'-1;
y1=ma(:,1); %add minimal value of the curve to lift it above 0: e.g. y1=log(mw(:,1))+1.864;
y2=ma(:,2);
y3=ma(:,3);
y4=ma(:,4);
y5=ma(:,5);
y6=ma(:,6);
 
% plot the flc MT result
figure(11);
h1=plot(t,y1,'color',Mcolors(1,:),'LineWidth',3); hold on;
area(y1,'facecolor',Mcolors(1,:),'FaceAlpha',0.3);

h2=plot(t,y2,'color',Mcolors(2,:),'LineWidth',3); 
area(y2,'facecolor',Mcolors(2,:),'FaceAlpha',0.3);

h3=plot(t,y3,'color',Mcolors(3,:),'LineWidth',3); 
area(y3,'facecolor',Mcolors(3,:),'FaceAlpha',0.3);

h4=plot(t,y4,'color',Mcolors(4,:),'LineWidth',3); 
area(y4,'facecolor',Mcolors(4,:),'FaceAlpha',0.3);

h5=plot(t,y5,'color',Mcolors(5,:),'LineWidth',3); 
area(y5,'facecolor',Mcolors(5,:),'FaceAlpha',0.3);

h6=plot(t,y6,'color',Mcolors(6,:),'LineWidth',3); 
area(y6,'facecolor',Mcolors(6,:),'FaceAlpha',0.3);

% set(gca,'color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
set(gca,'color',[0.8 0.8 0.8],'FontSize',28,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
%pbaspect([1 1 1]); box on; ylim([-2 0.5]);xlim([1 71]);
pbaspect([1 1 1]); box on; xlim([1 73]); ylim([0.2 1.5])
xlabel('Time (hrs)'); ylabel('log(OD_{600})'); title ('TBR1\Deltaa R1', 'Position', [40, 1.2, 0]);  
 
% trapz MT

Q1 = trapz(y1	-	y1(1)	); %LINEAR -y0
Q2 = trapz(y2	-	y2(1)	); %LINEAR -y0
Q3 = trapz(y3	-	y3(1)	); %LINEAR -y0
Q4 = trapz(y4	-	y4(1)	); %LINEAR -y0
Q5 = trapz(y5	-	y5(1)	); %LINEAR -y0
Q6 = trapz(y6	-	y6(1)	); %LINEAR -y0

Q = [Q1 Q2 Q3 Q4 Q5 Q6];

figure(12);hold on;
h=bar(stress,diag(Q),'stacked');
set(h(1),'facecolor',Mcolors(1,:),'FaceAlpha',0.5);
set(h(2),'facecolor',Mcolors(2,:),'FaceAlpha',0.5);
set(h(3),'facecolor',Mcolors(3,:),'FaceAlpha',0.5);
set(h(4),'facecolor',Mcolors(4,:),'FaceAlpha',0.5);
set(h(5),'facecolor',Mcolors(5,:),'FaceAlpha',0.5);
set(h(6),'facecolor',Mcolors(6,:),'FaceAlpha',0.5);
xlim([stress(1)-stress(2) stress(end)+stress(2)])
set(gca,'XTick',stress(1:2:end),'FontSize',24);
xlabel('\mug/ml CASP')

% ctz = cumtrapz(y1);
% TA = table(t',ctz','VariableNames',{'Time','Growth'})
% TA


%% 4a) flc WT
[num,txt,raw]=xlsread('Lesia2020_alldrugs.xlsx','flc_tbr1'); %Sheet 'flc' with means ONLY
stress=num(1,:);stress=stress(~isnan(stress)); stress=stress(1:6); %flc concentrations
mw=num(3:74,4:4:26); %row3 thru 74, column 2 with interval 4 thru end of numbers
% ma=num(3:74,4:4:26);
% sw=num(3:74,6:8:end);
% sa=num(3:74,7:8:end);

t=[1:1:72];	
% t=1:length(mw);
% t=t'-1;
y1=mw(:,1); %add minimal value of the curve to lift it above 0: e.g. y1=log(mw(:,1))+1.864;
y2=mw(:,2);
y3=mw(:,3);
y4=mw(:,4);
y5=mw(:,5);
y6=mw(:,6);
 
% plot the flc WT result
figure(13);

h1=plot(t,y1,'color',Wcolors(1,:),'LineWidth',3); hold on;
area(y1,'facecolor',Wcolors(1,:),'FaceAlpha',0.3);

h2=plot(t,y2,'color',Wcolors(2,:),'LineWidth',3); 
area(y2,'facecolor',Wcolors(2,:),'FaceAlpha',0.3);

h3=plot(t,y3,'color',Wcolors(3,:),'LineWidth',3); 
area(y3,'facecolor',Wcolors(3,:),'FaceAlpha',0.3);

h4=plot(t,y4,'color',Wcolors(4,:),'LineWidth',3); 
area(y4,'facecolor',Wcolors(4,:),'FaceAlpha',0.3);

h5=plot(t,y5,'color',Wcolors(5,:),'LineWidth',3); 
area(y5,'facecolor',Wcolors(5,:),'FaceAlpha',0.3);

h6=plot(t,y6,'color',Wcolors(6,:),'LineWidth',3); 
area(y6,'facecolor',Wcolors(6,:),'FaceAlpha',0.3);


% set(gca,'color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
set(gca,'color',[0.8 0.8 0.8],'FontSize',28,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
%pbaspect([1 1 1]); box on; ylim([-2 0.5]);xlim([1 71]);
pbaspect([1 1 1]); box on; xlim([1 73]); ylim([0.2 1.5])
xlabel('Time (hrs)'); ylabel('log(OD_{600})'); title ('TBR1 R1', 'Position', [40, 1.2, 0]);  


 
% trapz WT

Q1 = trapz(y1	-	y1(1)	); %LINEAR -y0
Q2 = trapz(y2	-	y2(1)	); %LINEAR -y0
Q3 = trapz(y3	-	y3(1)	); %LINEAR -y0
Q4 = trapz(y4	-	y4(1)	); %LINEAR -y0
Q5 = trapz(y5	-	y5(1)	); %LINEAR -y0
Q6 = trapz(y6	-	y6(1)	); %LINEAR -y0

Q = [Q1 Q2 Q3 Q4 Q5 Q6];

figure(14);hold on;
h=bar(stress,diag(Q),'stacked');
set(h(1),'facecolor',Wcolors(1,:),'FaceAlpha',0.5);
set(h(2),'facecolor',Wcolors(2,:),'FaceAlpha',0.5);
set(h(3),'facecolor',Wcolors(3,:),'FaceAlpha',0.5);
set(h(4),'facecolor',Wcolors(4,:),'FaceAlpha',0.5);
set(h(5),'facecolor',Wcolors(5,:),'FaceAlpha',0.5);
set(h(6),'facecolor',Wcolors(6,:),'FaceAlpha',0.5);
xlim([stress(1)-stress(2) stress(end)+stress(2)])
set(gca,'XTick',stress(1:2:end),'FontSize',24);
xlabel('\mug/ml FLC')

% ctz = cumtrapz(y1);
% TA = table(t',ctz','VariableNames',{'Time','Growth'})
% TA

%% 4b) flc MT
[num,txt,raw]=xlsread('Lesia2020_alldrugs.xlsx','flc_deltaamn1'); %Sheet 'flc' with means ONLY
stress=num(1,:);stress=stress(~isnan(stress)); stress=stress(1:6); %flc concentrations
%mw=num(3:74,4:4:26); %row3 thru 74, column 2 with interval 4 thru end of numbers
 ma=num(3:74,4:4:26);
% sw=num(3:74,6:8:end);
% sa=num(3:74,7:8:end);

t=[1:1:72];	
% t=1:length(mw);
% t=t'-1;
y1=ma(:,1); %add minimal value of the curve to lift it above 0: e.g. y1=log(mw(:,1))+1.864;
y2=ma(:,2);
y3=ma(:,3);
y4=ma(:,4);
y5=ma(:,5);
y6=ma(:,6);
 
% plot the flc MT result
figure(15);
h1=plot(t,y1,'color',Mcolors(1,:),'LineWidth',3); hold on;
area(y1,'facecolor',Mcolors(1,:),'FaceAlpha',0.3);

h2=plot(t,y2,'color',Mcolors(2,:),'LineWidth',3); 
area(y2,'facecolor',Mcolors(2,:),'FaceAlpha',0.3);

h3=plot(t,y3,'color',Mcolors(3,:),'LineWidth',3); 
area(y3,'facecolor',Mcolors(3,:),'FaceAlpha',0.3);

h4=plot(t,y4,'color',Mcolors(4,:),'LineWidth',3); 
area(y4,'facecolor',Mcolors(4,:),'FaceAlpha',0.3);

h5=plot(t,y5,'color',Mcolors(5,:),'LineWidth',3); 
area(y5,'facecolor',Mcolors(5,:),'FaceAlpha',0.3);

h6=plot(t,y6,'color',Mcolors(6,:),'LineWidth',3); 
area(y6,'facecolor',Mcolors(6,:),'FaceAlpha',0.3);

% set(gca,'color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
set(gca,'color',[0.8 0.8 0.8],'FontSize',28,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
%pbaspect([1 1 1]); box on; ylim([-2 0.5]);xlim([1 71]);
pbaspect([1 1 1]); box on; xlim([1 73]); ylim([0.2 1.5])
xlabel('Time (hrs)'); ylabel('log(OD_{600})'); title ('TBR1\Deltaa R1', 'Position', [40, 1.2, 0]);  
 
% trapz MT

Q1 = trapz(y1	-	y1(1)	); %LINEAR -y0
Q2 = trapz(y2	-	y2(1)	); %LINEAR -y0
Q3 = trapz(y3	-	y3(1)	); %LINEAR -y0
Q4 = trapz(y4	-	y4(1)	); %LINEAR -y0
Q5 = trapz(y5	-	y5(1)	); %LINEAR -y0
Q6 = trapz(y6	-	y6(1)	); %LINEAR -y0

Q = [Q1 Q2 Q3 Q4 Q5 Q6];

figure(16);hold on;
h=bar(stress,diag(Q),'stacked');
set(h(1),'facecolor',Mcolors(1,:),'FaceAlpha',0.5);
set(h(2),'facecolor',Mcolors(2,:),'FaceAlpha',0.5);
set(h(3),'facecolor',Mcolors(3,:),'FaceAlpha',0.5);
set(h(4),'facecolor',Mcolors(4,:),'FaceAlpha',0.5);
set(h(5),'facecolor',Mcolors(5,:),'FaceAlpha',0.5);
set(h(6),'facecolor',Mcolors(6,:),'FaceAlpha',0.5);
xlim([stress(1)-stress(2) stress(end)+stress(2)])
set(gca,'XTick',stress(1:2:end),'FontSize',24);
xlabel('\mug/ml FLUC')

% ctz = cumtrapz(y1);
% TA = table(t',ctz','VariableNames',{'Time','Growth'})
% TA

