% Developed on: April 23, 2020
% Description:
% This script performs piecewise exponential growth curve fitting
 
clearvars; close all;
 
[num,txt,raw]=xlsread('Lesia2020_flc.xlsx','waterdeltaamn1replicates'); %Sheet 'amb' with means ONLY
 
amb=num(1,:);amb=amb(~isnan(amb)); %amB concentrations
mw=num(3:74,2:4:end); %row3 thru 74, column 2 with interval 4 thru end of numbers
ma=num(3:74,2:4:end);
sw=num(3:74,6:8:end);
sa=num(3:74,7:8:end);
 
t=1:length(mw);
tspan=[0	3699.7	7399.4	11099	14798.7	18498.4	22198.1	25897.7	29597.4	33297.1	36996.7	40696.4	44396.1	48095.8	51795.4	55495.1	59194.8	62894.5	66594.1	70293.8	73993.5	77693.2	81392.9	85092.5	88792.2	92491.9	96191.5	99891.2	103590.9	107290.6	110990.2	114689.9	118389.6	122089.2	125788.9	129488.6	133188.3	136887.9	140587.6	144287.3	147986.9	151686.6	155386.3	159085.9	162785.6	166485.3	170185	173884.6	177584.3	181284	184983.6	188683.3	192383	196082.7	199782.3	203482	207181.7	210881.3	214581	218280.7	221980.4	225680	229379.7	233079.4	236779	240478.7	244178.4	247878	251577.7	255277.4	258977.1	262676.8]/3600;
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
 
figure(2);
plot(t,y2,'LineWidth',3); hold on;
plot(round(interiorbreak2),y2(round(interiorbreak2+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
%% concentration 0.04
dt = max(t) - min(t);
[interiorbreak3,fval3] = fminbnd(@(b2) breakfit(b2,t,y3),min(t) + dt/100,max(t) - dt/100);
interiorbreak3
 
figure(3);
plot(t,y3,'LineWidth',3); hold on;
plot(round(interiorbreak3),y3(round(interiorbreak3+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
%% concentration 0.06
dt = max(t) - min(t);
[interiorbreak4,fval4] = fminbnd(@(b2) breakfit(b2,t,y4),min(t) + dt/100,max(t) - dt/100);
interiorbreak4
 
figure(4);
plot(t,y4,'LineWidth',3); hold on;
plot(round(interiorbreak4),y4(round(interiorbreak4+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
  
%% concentration 0.08
dt = max(t) - min(t);
[interiorbreak5,fval5] = fminbnd(@(b2) breakfit(b2,t,y5),min(t) + dt/100,max(t) - dt/100);
interiorbreak5
 
figure(5);
plot(t,y5,'LineWidth',3); hold on;
plot(round(interiorbreak5),y5(round(interiorbreak5+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
%% concentration 0.1
dt = max(t) - min(t);
[interiorbreak6,fval6] = fminbnd(@(b2) breakfit(b2,t,y6),min(t) + dt/100,max(t) - dt/100);
interiorbreak6
 
figure(6);
plot(t,y6,'LineWidth',3); hold on;
plot(round(interiorbreak6),y6(round(interiorbreak6+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
%% plot the ultimate result
figure(8);
h1=plot(t,y1,'color',[1.0 1.0 0.6],'LineWidth',3); hold on;
h2=plot(round(interiorbreak1),y1(round(interiorbreak1+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
 
h3=plot(t,y2,'color',[1.0 1.0 0.2],'LineWidth',3); hold on;
h4=plot(round(interiorbreak2),y2(round(interiorbreak2+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
 
h8=plot(t,y3,'color',[1.0 0.8 0.2],'LineWidth',3); hold on;
h9=plot(round(interiorbreak3),y3(round(interiorbreak3+1)),'ko','LineWidth',3,'MarkerSize',12); % 1 
 
h12=plot(t,y4,'color',[1.0 0.4 0.2],'LineWidth',3); hold on;
h13=plot(round(interiorbreak4),y4(round(interiorbreak4+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
 
h16=plot(t,y5,'color',[0.7 0.2 0.0],'LineWidth',3); hold on;
h17=plot(round(interiorbreak5),y5(round(interiorbreak5+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
 
h20=plot(t,y6,'color',[0.6 0.0 0.0],'LineWidth',3); hold on;
h21=plot(round(interiorbreak6),y6(round(interiorbreak6+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
 
set(gca,'color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
pbaspect([1 1 1]); box on; ylim([-2 1]); xlim([-5 77]);
xlabel('Time (hrs)'); ylabel('log(OD_{600})'); title ('TBR1\Deltaa R1');
legend([h1 h3 h8 h12 h16 h20],{'0','50','75','100','125','150 \mug/ml FLC'},'Location','northeastoutside','EdgeColor','none');
 
%% slopes and durations of all growth phases
% concentration 00
slopeat001=(y1(round(interiorbreak1+1))-y1(1))/interiorbreak1
durationat001=interiorbreak1
 
slopeat002=(y1(end)-y1(round(interiorbreak1+1)))/(t(end)-interiorbreak1)
durationat002=t(end)-interiorbreak1
 
% concentration 02
slopeat021=(y2(round(interiorbreak2+1))-y2(1))/interiorbreak2
durationat021=interiorbreak2
 
slopeat022=(y2(end)-y2(round(interiorbreak2+1)))/(t(end)-interiorbreak2)
durationat022=t(end)-interiorbreak2
 
% concentration 04
slopeat041=(y3(round(interiorbreak3+1))-y3(1))/interiorbreak3
durationat041=interiorbreak3
 
slopeat042=(y3(end)-y3(round(interiorbreak3+1)))/(t(end)-interiorbreak3)
durationat042=t(end)-interiorbreak3
 
% concentration 06
slopeat061=(y4(round(interiorbreak4+1))-y4(1))/interiorbreak4
durationat061=interiorbreak4
 
slopeat062=(y4(end)-y4(round(interiorbreak4+1)))/(t(end)-interiorbreak4)
durationat062=t(end)-interiorbreak4
 
% concentration 08
slopeat081=(y5(round(interiorbreak5+1))-y5(1))/interiorbreak5
durationat081=interiorbreak5
 
slopeat082=(y5(end)-y5(round(interiorbreak5+1)))/(t(end)-interiorbreak5)
durationat082=t(end)-interiorbreak5
 
% concentration 10
slopeat101=(y6(round(interiorbreak6+1))-y6(1))/interiorbreak6
durationat101=interiorbreak6
 
slopeat102=(y6(end)-y6(round(interiorbreak6+1)))/(t(end)-interiorbreak6)
durationat102=t(end)-interiorbreak6
 
%%
slopeat001
slopeat002
 
slopeat021
slopeat022
 
slopeat041
slopeat042
 
slopeat061
slopeat062
 
slopeat081
slopeat082
 
slopeat101
slopeat102
%%
durationat001
durationat002
 
durationat021
durationat022
 
durationat041
durationat042
 
durationat061
durationat062
 
durationat081
durationat082
 
durationat101
durationat102
%%
% conc 1
interiorbreak1
 
% conc 2
interiorbreak2
 
% conc 3
interiorbreak3
 
% conc 4
interiorbreak4
 
% conc 5
interiorbreak5
 
% conc 6
interiorbreak6
 
% %  
figure(17);
subplot(3,2,1);
hold on
 
Y = [interiorbreak1;
    interiorbreak2;
    interiorbreak3;
    interiorbreak4;
    interiorbreak5;
    interiorbreak6];
 
ba=bar(Y,'FaceColor',[1.0 0.75 0.35],'LineWidth',3);
 
% XTickLabel={'a','b','c','d','e','f'};
% XTick=[1:6];
% set(gca, 'XTick',XTick);
% set(gca, 'XTickLabel', XTickLabel);
% set(gca, 'XTickLabelRotation', 45); 
%  
% ba(1).CData = [0.0 0.4 0.6];
% ba(2).CData = [1.0 0.75 0.35];
% ba(3).CData = [1.0 1.0 0.4];
 
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'0','50','75','100','125','150'}); box on;
legend('B','Location','northeastoutside','EdgeColor','none'); ylabel('Break Time (hrs)'); ylim([0 100]);
pbaspect([2 1 1]);
 
hold off
%% slope
% the following letters mean:
% h - h2o2 // a - amB // c - CASP// f - FLC
% 00 // 02 // 04 // 06 // 08 // 10 - concentrations
% t - TBR1 // d - TBR1deltaAMN1
% 1 - phase 1 // 2 - phase 2 // 3 - phase 3
 
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
