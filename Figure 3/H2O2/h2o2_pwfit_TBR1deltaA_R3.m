% Developed on: April 23, 2020
% Description:
% This script performs piecewise exponential growth curve fitting
 
clearvars; close all;
 
[num,txt,raw]=xlsread('Lesia2020_h2o2.xlsx','deltaamn1replicates'); %Sheet 'amb' with means ONLY
 
amb=num(1,:);amb=amb(~isnan(amb)); %amB concentrations
mw=num(3:74,4:4:end); %row3 thru 74, column 2 with interval 4 thru end of numbers
ma=num(3:74,4:4:end);
sw=num(3:74,6:8:end);
sa=num(3:74,7:8:end);
 
t=1:length(mw);
tspan=[0 3699.6	7399.3	11098.9	14798.5	18498.1	22197.8	25897.4	29597	33296.7	36996.3	40695.9	44395.5	48095.2	51794.8	55494.4	59194	62893.7	66593.3	70293	73992.6	77692.2	81391.8	85091.5	88791.1	92490.7	96190.3	99890	103589.6	107289.2	110988.8	114688.5	118388.1	122087.7	125787.4	129487	133186.7	136886.3	140585.9	144285.5	147985.2	151684.8	155384.4	159084	162783.7	166483.3	170182.9	173882.5	177582.2	181281.8	184981.5	188681.1	192380.7	196080.3	199780	203479.6	207179.2	210878.8	214578.5	218278.1	221977.8	225677.4	229377	233076.6	236776.3	240475.9	244175.5	247875.1	251574.8	255274.4	258974	262673.7]/3600;
t=t'-1;
y1=log(mw(:,1));
y2=log(mw(:,2));
y3=log(mw(:,3));
y4=log(mw(:,4));
y5=log(mw(:,5));
y6=log(mw(:,6));
%% concentration 0.00
 
dt = max(t) - min(t);
[interiorbreak1,fval1] = fminbnd(@(b2) breakfit(b2,t,y1),min(t) + dt/100,max(t) - dt/100);
interiorbreak1
 
figure(1);
plot(t,y1,'LineWidth',3); hold on;
plot(round(interiorbreak1),y1(round(interiorbreak1+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
%% concentration 0.02 
dt = max(t) - min(t);
[interiorbreak2,fval2] = fminbnd(@(b2) breakfit(b2,t,y2),min(t) + dt/100,max(t) - dt/100);
interiorbreak2
 
% figure(2);
% plot(t,y2,'LineWidth',3); hold on;
% plot(round(interiorbreak2),y2(round(interiorbreak2+1)),'ko','LineWidth',3,'MarkerSize',12);
% set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
% xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
tred=t(interiorbreak2:end);
yred=y2(interiorbreak2:end);
 
dt = max(tred) - min(tred);
[interiorbreak3,fval3] = fminbnd(@(b2) breakfit(b2,tred,yred),min(tred) + dt/100,max(tred) - dt/100);
interiorbreak3
 
figure(2);
plot(tred,yred,'LineWidth',3); hold on;
plot(round(interiorbreak3),y2(round(interiorbreak3+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
tred1=t(interiorbreak2:interiorbreak3);
yred1=y2(interiorbreak2:interiorbreak3);
 
dt = max(tred1) - min(tred1);
[interiorbreak4,fval4] = fminbnd(@(b2) breakfit(b2,tred1,yred1),min(tred1) + dt/100,max(tred1) - dt/100);
interiorbreak4
 
tint=t(interiorbreak4:interiorbreak3);
yint=y2(interiorbreak4:interiorbreak3);
 
dt = max(tred1) - min(tred1);
[interiorbreak4i,fval4i] = fminbnd(@(b2) breakfit(b2,tint,yint),min(tint) + dt/100,max(tint) - dt/100);
interiorbreak4i
 
figure(3);
plot(tint,yint,'LineWidth',3); hold on;
plot(round(interiorbreak4i),y2(round(interiorbreak4i+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
%% concentration 0.04
dt = max(t) - min(t);
[interiorbreak5,fval5] = fminbnd(@(b2) breakfit(b2,t,y3),min(t) + dt/100,max(t) - dt/100);
interiorbreak5
 
ti=t(1:interiorbreak5);
yi=y3(1:interiorbreak5);
 
dt = max(ti) - min(ti);
[interiorbreak5i,fval5i] = fminbnd(@(b2) breakfit(b2,ti,yi),min(ti) + dt/100,max(ti) - dt/100);
interiorbreak5i
 
figure(4);
plot(t,y3,'LineWidth',3); hold on;
plot(round(interiorbreak5i),y3(round(interiorbreak5i+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
%% concentration 0.06
dt = max(t) - min(t);
[interiorbreak6,fval6] = fminbnd(@(b2) breakfit(b2,t,y4),min(t) + dt/100,max(t) - dt/100);
interiorbreak6
 
tnew=t(1:interiorbreak6);
ynew=y4(1:interiorbreak6);
 
dt = max(tnew) - min(tnew);
[interiorbreak7,fval7] = fminbnd(@(b2) breakfit(b2,tnew,ynew),min(tnew) + dt/100,max(tnew) - dt/100);
interiorbreak7
 
figure(5);
plot(t,y4,'LineWidth',3); hold on;
plot(round(interiorbreak7),y4(round(interiorbreak7+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
%% concentration 0.08
dt = max(t) - min(t);
[interiorbreak8,fval8] = fminbnd(@(b2) breakfit(b2,t,y5),min(t) + dt/100,max(t) - dt/100);
interiorbreak8
 
tnew1=t(1:interiorbreak8);
ynew1=y5(1:interiorbreak8);
 
dt = max(tnew1) - min(tnew1);
[interiorbreak9,fval9] = fminbnd(@(b2) breakfit(b2,tnew1,ynew1),min(tnew1) + dt/100,max(tnew1) - dt/100);
interiorbreak9
 
figure(6);
plot(t,y5,'LineWidth',3); hold on;
plot(round(interiorbreak9),y5(round(interiorbreak9+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
%% concentration 0.1
dt = max(t) - min(t);
[interiorbreak10,fval10] = fminbnd(@(b2) breakfit(b2,t,y6),min(t) + dt/100,max(t) - dt/100);
interiorbreak10
 
tnew2=t(1:interiorbreak10);
ynew2=y6(1:interiorbreak10);
 
dt = max(tnew2) - min(tnew2);
[interiorbreak11,fval11] = fminbnd(@(b2) breakfit(b2,tnew2,ynew2),min(tnew2) + dt/100,max(tnew2) - dt/100);
interiorbreak11
 
figure(7);
plot(t,y6,'LineWidth',3); hold on;
plot(round(interiorbreak11),y6(round(interiorbreak11+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k'); pbaspect([1 1 1]); box on; ylim([-2 1]); xlim([-5 77]);
xlabel('Time (hrs)'); ylabel('log(OD_{600})');
 
tnew3=t(interiorbreak11:end);
ynew3=y6(interiorbreak11:end);
 
dt = max(tnew3) - min(tnew3);
[interiorbreak12,fval12] = fminbnd(@(b2) breakfit(b2,tnew3,ynew3),min(tnew3) + dt/100,max(tnew3) - dt/100);
interiorbreak12
 
figure(8);
plot(t,y6,'LineWidth',3); hold on;
plot(round(interiorbreak12),y6(round(interiorbreak12+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k'); pbaspect([1 1 1]); box on; ylim([-2 1]); xlim([-5 77]);
xlabel('Time (hrs)'); ylabel('log(OD_{600})');
 
tnew4=t(interiorbreak11:interiorbreak12);
ynew4=y6(interiorbreak11:interiorbreak12);
 
dt = max(tnew4) - min(tnew4);
[interiorbreak13,fval13] = fminbnd(@(b2) breakfit(b2,tnew4,ynew4),min(tnew4) + dt/100,max(tnew4) - dt/100);
interiorbreak13
 
tnew5=t(1:interiorbreak11);
ynew5=y6(1:interiorbreak11);
 
dt = max(tnew5) - min(tnew5);
[interiorbreak14,fval14] = fminbnd(@(b2) breakfit(b2,tnew5,ynew5),min(tnew5) + dt/100,max(tnew5) - dt/100);
interiorbreak14
 
figure(9);
plot(t,y4,'LineWidth',3); hold on;
plot(round(interiorbreak14),y6(round(interiorbreak14+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k'); pbaspect([1 1 1]); box on; ylim([-2 1]); xlim([-5 77]);
xlabel('Time (hrs)'); ylabel('log(OD_{600})');
 
%% plot the ultimate results
 
figure(10);
h1=plot(t,y1,'color',[1.0 1.0 0.6],'LineWidth',3); hold on;
% p.Color = 'red';hold on;
h2=plot(round(interiorbreak1),y1(round(interiorbreak1+1)),'ko','LineWidth',3,'MarkerSize',12); %% 1
% h3=plot(round(interiorbreak4),y1(round(interiorbreak4+1)),'ko','LineWidth',3,'MarkerSize',12);
 
h4=plot(t,y2,'color',[1.0 1.0 0.2],'LineWidth',3); hold on;
h5=plot(round(interiorbreak4),y2(round(interiorbreak4+1)),'ko','LineWidth',3,'MarkerSize',12); %% 1
h6=plot(round(interiorbreak4i),y2(round(interiorbreak4i+1)),'ko','LineWidth',3,'MarkerSize',12); %% 2
 
h7=plot(t,y3,'color',[1.0 0.8 0.2],'LineWidth',3); hold on;
h8=plot(round(interiorbreak5i),y3(round(interiorbreak5i+1)),'ko','LineWidth',3,'MarkerSize',12); %% 1
% h9=plot(round(interiorbreak12),y3(round(interiorbreak12+1)),'ko','LineWidth',3,'MarkerSize',12);
 
h10=plot(t,y4,'color',[1.0 0.4 0.2],'LineWidth',3); hold on;
h11=plot(round(interiorbreak7),y4(round(interiorbreak7+1)),'ko','LineWidth',3,'MarkerSize',12); %% 1
% h12=plot(round(interiorbreak15),y4(round(interiorbreak15+1)),'ko','LineWidth',3,'MarkerSize',12);
 
h13=plot(t,y5,'color',[0.7 0.2 0.0],'LineWidth',3); hold on;
h14=plot(round(interiorbreak9),y5(round(interiorbreak9+1)),'ko','LineWidth',3,'MarkerSize',12); %% 1
% h15=plot(round(interiorbreak18),y5(round(interiorbreak18+1)),'ko','LineWidth',3,'MarkerSize',12);
 
h16=plot(t,y6,'color',[0.6 0.0 0.0],'LineWidth',3); hold on;
% h17=plot(round(interiorbreak12),y6(round(interiorbreak12+1)),'ko','LineWidth',3,'MarkerSize',12);
h18=plot(round(interiorbreak14),y6(round(interiorbreak14+1)),'ko','LineWidth',3,'MarkerSize',12); %% 1
 
set(gca,'Color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
pbaspect([1 1 1]); box on; ylim([-2 1]); xlim([-5 77]);
xlabel('Time (hrs)'); ylabel('log(OD_{600})'); title ('TBR1\Deltaa R3');
legend([h1 h4 h7 h10 h13 h16],{'0','0.02','0.04','0.06','0.08','0.1 % H_{2}O_{2}'},'Location','northeastoutside','EdgeColor','none');
%slopes and durations of all growth phases
 
%% slopes and durations of all growth phases
% concentration 00
slopeat001=(y1(round(interiorbreak1+1))-y1(1))/interiorbreak1
durationat001=interiorbreak1
 
slopeat003=(y1(end)-y1(round(interiorbreak1+1)))/(t(end)-interiorbreak1)
durationat003=t(end)-interiorbreak1
 
% concentration 02
slopeat021=(y2(round(interiorbreak4+1))-y2(1))/interiorbreak4
durationat021=interiorbreak4
 
slopeat022=(y2(round(interiorbreak4i+1))-y2(round(interiorbreak4+1)))/(interiorbreak4i-interiorbreak4)
durationat022=interiorbreak4i-interiorbreak4
 
slopeat023=(y2(end)-y2(round(interiorbreak4i+1)))/(t(end)-interiorbreak4i)
durationat023=t(end)-interiorbreak4i
 
% concentration 04
slopeat041=(y3(round(interiorbreak5i+1))-y3(1))/interiorbreak5i
durationat041=interiorbreak5i
 
slopeat043=(y3(end)-y3(round(interiorbreak5i+1)))/(t(end)-interiorbreak5i)
durationat043=t(end)-interiorbreak5i
 
% concentration 06
slopeat061=(y4(round(interiorbreak7+1))-y4(1))/interiorbreak7
durationat061=interiorbreak7
 
slopeat063=(y4(end)-y4(round(interiorbreak7+1)))/(t(end)-interiorbreak7)
durationat063=t(end)-interiorbreak7
 
% concentration 08
slopeat081=(y5(round(interiorbreak9+1))-y5(1))/interiorbreak9
durationat081=interiorbreak9
 
slopeat083=(y5(end)-y5(round(interiorbreak9+1)))/(t(end)-interiorbreak9)
durationat083=t(end)-interiorbreak9;
 
% concentration 10
slopeat101=(y6(round(interiorbreak14+1))-y6(1))/interiorbreak14
durationat101=interiorbreak14
 
slopeat102=(y6(end)-y6(round(interiorbreak14+1)))/(t(end)-interiorbreak14)
durationat102=t(end)-interiorbreak14
 
% break 1 
 
interiorbreak1
interiorbreak4
interiorbreak5i
interiorbreak7
interiorbreak9
interiorbreak14
 
% break 2
 
interiorbreak4i
 
figure(11);
% subplot(2,2,1);
hold on
Y = [interiorbreak1,0
    interiorbreak4,interiorbreak4i
    interiorbreak5i,0
    interiorbreak7,0
    interiorbreak9,0
    interiorbreak14,0];
ba=bar(Y,'stacked','FaceColor','flat','LineWidth',3);
 
XTickLabel={'a','b','c','d','e','f'};
XTick=[1:6];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
set(gca, 'XTickLabelRotation', 45); 
 
ba(1).CData = [1.0 0.8 0.4];
ba(2).CData = [1.0 1.0 0.4];
 
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'0','0.02','0.04','0.06','0.08','0.1'}); box on;
legend('B1','B2','Location','northeast','EdgeColor','none'); ylabel('Break Time (hrs)'); 
pbaspect([1 1 1]); ylim([0 100]);
 
hold off
 
%%
function [err,fittedlines] = breakfit(interiorbreaks,x,y)
  % objective function to estimate the interior break of a simple broken
  % line fit. fittedlines is a cell array, containing the slope and
  % intercepts of the pair of fitted lines.
  
  % ensure that x and y are column vectors.
  x = x(:);
  y = y(:);
  
  nx = numel(x);
  
  breaks = [min(x),interiorbreaks,max(x)];
    
  % which points lie in which interval?
  xbins = discretize(x,breaks);
  
  % write the problem in matrix form
  A = [ones(nx,1),x - breaks(1),(x - breaks(2)).*(xbins == 2)];
  
  % we could use pinv here, but it would be slower then backslash, 
  % and I'll be careful to ensure the problem is not singular.
  coef = A\y;
  
  err = norm(y - A*coef);
  
  % unpack the coefficients so we can convert to a pair of line
  % coefficients. I'll do this in a fairly long form so it might be more
  % comprehensible.
  c1 = coef(1);
  s1 = coef(2);
  s2 = coef(3);
  b1 = breaks(1);
  b2 = breaks(2);
  fittedlines = {[s1,c1 - b1*s1],[s2 + s1,c1 - b2*s2]};
end

