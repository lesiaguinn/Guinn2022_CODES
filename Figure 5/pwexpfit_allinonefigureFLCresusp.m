% Developed on: April 23, 2020
% Description:
% This script performs piecewise exponential growth curve fitting
% Color schemes for BY4742 and BY4742dA use lines 336 through 351 of this code

clearvars; close all;
 
% [num,txt,raw]=xlsread('Lesia2020_BY_FLCresusp.xlsx','byreplicates'); %apply for BY4742
[num,txt,raw]=xlsread('Lesia2020_BY_FLCresusp.xlsx','ybrreplicates'); %apply for BY4742dA

amb=num(1,:);amb=amb(~isnan(amb)); %amB concentrations
mw=num(3:74,4:4:end); %row3 thru 74, column 2 with interval 4 thru end of numbers
ma=num(3:74,4:4:end);
sw=num(3:74,6:8:end);
sa=num(3:74,7:8:end);
 
t=1:length(mw);
tspan=[0	3672.9	7346	11019	14686.8	18359.8	22032.8	25705.8	29378.9	33051.9	36724.9	40397.9	44070.9	47744	51417	55090	58763	62436	66109	69782	73455.1	77128.1	80801.1	84474.1	88147.1	91820.1	95493.2	99166.2	102839.2	106512.2	110185.2	113858.3	117531.3	121204.3	124877.3	128550.3	132223.4	135896.4	139569.4	143242.4	146915.4	150588.4	154261.5	157934.5	161607.5	165280.5	168953.5	172626.6	176299.6	179972.6	183645.6	187318.6	190991.6	194664.7	198337.7	202010.7	205683.7	209356.8	213029.8	216702.8	220375.8	224048.8	227721.8	231394.8	235067.9	238740.9	242413.9	246086.9	249760.1	253433.3	257106.4	260779.4]/3600;
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
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');ylim([-2 1]);xlim([-4 77]);
pbaspect([1 1 1]);box on;
xlabel('Time (hrs)');ylabel('log(OD_{600})'); 
 
%% concentration 0.02 
dt = max(t) - min(t);
[interiorbreak2,fval2] = fminbnd(@(b2) breakfit(b2,t,y2),min(t) + dt/100,max(t) - dt/100);
interiorbreak2
 
t2i=t(1:interiorbreak2);
y2i=y2(1:interiorbreak2);
dt = max(t2i) - min(t2i);
[interiorbreak2i,fval2i] = fminbnd(@(b2) breakfit(b2,t2i,y2i),min(t2i) + dt/100,max(t2i) - dt/100);
interiorbreak2i
 
figure(2);
plot(t,y2,'LineWidth',3); hold on;
plot(round(interiorbreak2),y2(round(interiorbreak2+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak2i),y2(round(interiorbreak2i+1)),'ko','LineWidth',3,'MarkerSize',12);
% plot(round(interiorbreak2ii),y2(round(interiorbreak2ii+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-4 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
%% concentration 0.04
dt = max(t) - min(t);
[interiorbreak3,fval3] = fminbnd(@(b2) breakfit(b2,t,y3),min(t) + dt/100,max(t) - dt/100);
interiorbreak3
 
t3i=t(1:interiorbreak3);
y3i=y3(1:interiorbreak3);
dt = max(t3i) - min(t3i);
[interiorbreak3i,fval3i] = fminbnd(@(b2) breakfit(b2,t3i,y3i),min(t3i) + dt/100,max(t3i) - dt/100);
interiorbreak3i
 
figure(3);
plot(t,y3,'LineWidth',3); hold on;
plot(round(interiorbreak3),y3(round(interiorbreak3+1)),'ko','LineWidth',3,'MarkerSize',12); 
plot(round(interiorbreak3i),y3(round(interiorbreak3i+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-4 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
%% concentration 0.06
dt = max(t) - min(t);
[interiorbreak4,fval4] = fminbnd(@(b2) breakfit(b2,t,y4),min(t) + dt/100,max(t) - dt/100);
interiorbreak4
 
t4i=t(1:interiorbreak4);
y4i=y4(1:interiorbreak4);
dt = max(t4i) - min(t4i);
[interiorbreak4i,fval4i] = fminbnd(@(b2) breakfit(b2,t4i,y4i),min(t4i) + dt/100,max(t4i) - dt/100);
interiorbreak4i
 
figure(4);
plot(t,y4,'LineWidth',3); hold on;
plot(round(interiorbreak4),y4(round(interiorbreak4+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak4i),y4(round(interiorbreak4i+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-4 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})'); 
%% concentration 0.08
dt = max(t) - min(t);
[interiorbreak5,fval5] = fminbnd(@(b2) breakfit(b2,t,y5),min(t) + dt/100,max(t) - dt/100);
interiorbreak5
 
t5i=t(1:interiorbreak5);
y5i=y4(1:interiorbreak5);
dt = max(t5i) - min(t5i);
[interiorbreak5i,fval5i] = fminbnd(@(b2) breakfit(b2,t5i,y5i),min(t5i) + dt/100,max(t5i) - dt/100);
interiorbreak5i
 
t5ii=t((interiorbreak5+19):end);
y5ii=y4((interiorbreak5+19):end);
dt = max(t5ii) - min(t5ii);
[interiorbreak5ii,fval5ii] = fminbnd(@(b2) breakfit(b2,t5ii,y5ii),min(t5ii) + dt/100,max(t5ii) - dt/100);
interiorbreak5ii
 
figure(5);
plot(t,y5,'LineWidth',3); hold on;
plot(round(interiorbreak5i),y5(round(interiorbreak5i+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak5ii),y5(round(interiorbreak5ii+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-4 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
%% concentration 0.1
dt = max(t) - min(t);
[interiorbreak6,fval6] = fminbnd(@(b2) breakfit(b2,t,y6),min(t) + dt/100,max(t) - dt/100);
interiorbreak6
 
 
figure(6);
plot(t,y6,'LineWidth',3); hold on;
plot(round(interiorbreak6),y6(round(interiorbreak6+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-4 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
%% plot the ultimate result
figure(7);
h1=plot(t,y1,'color',[1.0 0.8 0.8],'LineWidth',3); hold on;
h2=plot(round(interiorbreak1),y1(round(interiorbreak1+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
 
h3=plot(t,y2,'color',[1.0 0.6 0.6],'LineWidth',3); hold on;
h4=plot(round(interiorbreak2i),y2(round(interiorbreak2i+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
h5=plot(round(interiorbreak2),y2(round(interiorbreak2+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
 
h7=plot(t,y3,'color',[1.0 0.2 0.6],'LineWidth',3); hold on;
h8=plot(round(interiorbreak3),y3(round(interiorbreak3+1)),'ko','LineWidth',3,'MarkerSize',12); 
h9=plot(round(interiorbreak3i),y3(round(interiorbreak3i+1)),'ko','LineWidth',3,'MarkerSize',12);
 
h11=plot(t,y4,'color',[0.8 0.2 0.4],'LineWidth',3); hold on;
h12=plot(round(interiorbreak4i),y4(round(interiorbreak4i+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak4),y4(round(interiorbreak4+1)),'ko','LineWidth',3,'MarkerSize',12);
 
h15=plot(t,y5,'color',[0.6 0.2 0.4],'LineWidth',3); hold on;
h16=plot(round(interiorbreak5i),y5(round(interiorbreak5i+1)),'ko','LineWidth',3,'MarkerSize',12);
h17=plot(round(interiorbreak5ii),y5(round(interiorbreak5ii+1)),'ko','LineWidth',3,'MarkerSize',12);
 
h19=plot(t,y6,'color',[0.4 0.0 0.2],'LineWidth',3); hold on;
% h17=plot(round(interiorbreak6),y6(round(interiorbreak6+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
 
set(gca,'color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
pbaspect([1 1 1]); box on; ylim([-2 1]);xlim([-4 77]);
xlabel('Time (hrs)'); ylabel('log(OD_{600})'); title ('BY4742\Deltaa R3_{RESUSP.}');  
legend([h1 h3 h7 h11 h15 h19],{'0','50','75','100','125','150 \mug/ml FLC'},'Location','northeastoutside','EdgeColor','none');
 
interiorbreak1
 
interiorbreak2i
interiorbreak2
 
interiorbreak3i
interiorbreak3
 
interiorbreak4i
interiorbreak4
 
interiorbreak5i
interiorbreak5ii
 
 
%% slopes and durations of all growth phases
% concentration 00
slopeat001=(y1(round(interiorbreak1+1))-y1(1))/interiorbreak1
durationat001=interiorbreak1
 
slopeat002=(y1(end)-y1(round(interiorbreak1+1)))/(t(end)-interiorbreak1)
durationat002=t(end)-interiorbreak1
 
% concentration 02
slopeat021=(y2(round(interiorbreak2i+1))-y2(1))/interiorbreak2i
durationat021=interiorbreak2i
 
slopeat022=(y2(round(interiorbreak2+1))-y2(round(interiorbreak2i+1)))/(interiorbreak2-interiorbreak2i)
durationat022=interiorbreak2-interiorbreak2i
 
slopeat023=(y2(end)-y2(round(interiorbreak2+1)))/(t(end)-interiorbreak2)
durationat023=t(end)-interiorbreak2
 
% concentration 04
slopeat041=(y3(round(interiorbreak3i+1))-y3(1))/interiorbreak3i
durationat041=interiorbreak3i
 
slopeat042=(y3(round(interiorbreak3+1))-y3(round(interiorbreak3i+1)))/(interiorbreak3-interiorbreak3i)
durationat042=interiorbreak3-interiorbreak3i
 
slopeat043=(y3(end)-y3(round(interiorbreak3+1)))/(t(end)-interiorbreak3)
durationat043=t(end)-interiorbreak3
 
% concentration 06
slopeat061=(y4(round(interiorbreak4i+1))-y4(1))/interiorbreak4i
durationat061=interiorbreak4i
 
slopeat062=(y4(round(interiorbreak4+1))-y4(round(interiorbreak4i+1)))/(interiorbreak4-interiorbreak4i)
durationat062=interiorbreak4-interiorbreak4i
 
slopeat063=(y4(end)-y4(round(interiorbreak4+1)))/(t(end)-interiorbreak4)
durationat063=t(end)-interiorbreak4
 
% concentration 08
slopeat081=(y5(round(interiorbreak5i+1))-y5(1))/interiorbreak5i
durationat081=interiorbreak5i
 
slopeat082=(y5(round(interiorbreak5ii+1))-y5(round(interiorbreak5i+1)))/(interiorbreak5ii-interiorbreak5i)
durationat082=interiorbreak5ii-interiorbreak5i
 
slopeat083=(y5(end)-y5(round(interiorbreak5ii+1)))/(t(end)-interiorbreak5ii)
durationat083=t(end)-interiorbreak5ii
 
% concentration 10
slopeat101=(y6(round(interiorbreak6+1))-y6(1))/interiorbreak6
durationat101=interiorbreak6
 
slopeat102=(y1(end)-y6(round(interiorbreak6+1)))/(t(end)-interiorbreak6)
durationat102=t(end)-interiorbreak6
 
%% 
durationat001 
durationat021 
durationat041 
durationat061 
durationat081 
71
 
0 
durationat022 
durationat042 
durationat062 
durationat082 
0
 
durationat002
durationat023 
durationat043 
durationat063 
durationat083
0
 
%%
slopeat001 
slopeat021 
slopeat041 
slopeat061 
slopeat081 
71
 
0 
slopeat022 
slopeat042 
slopeat062 
slopeat082 
0
 
slopeat002
slopeat023 
slopeat043 
slopeat063 
slopeat083 
0
 
%%
figure(8);
% subplot(2,2,1);
hold on
Y = [durationat001 0 durationat002;
    durationat021 durationat022 durationat023;
    durationat041 durationat042 durationat043;
    durationat061 durationat062 durationat063;
    durationat081 durationat082 durationat083;
    71 0 0];
 
ba=bar(Y,'stacked','FaceColor','flat','LineWidth',3);
 
XTickLabel={'a','b','c','d','e','f'};
XTick=[1:6];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
set(gca, 'XTickLabelRotation', 45); 
 
ba(1).CData = [1.0 0.6 0.6];
ba(2).CData = [0.8 0.2 0.4];
ba(3).CData = [0.4 0.0 0.2];
 
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'0','50','75','100','125','150'}); box on;
legend('B1','B2','B3','Location','northeastoutside','EdgeColor','none'); ylabel('Break Time (hrs)'); ylim([0 80]);
pbaspect([1 1 1]);
 
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

%% Color codes
% For BY4742, use:
% [0.6 0.2 1.0]
% [0.55 0.1 0.75]
% [0.5 0.0 0.6]
% [0.35 0.0 0.45]
% [0.25 0.0 0.3]
% [0.15 0.0 0.15]

%For BY4742dA, use:
% [1.0 0.8 0.8]
% [1.0 0.6 0.6]
% [1.0 0.2 0.6]
% [0.8 0.2 0.4]
% [0.6 0.2 0.4]
% [0.4 0.0 0.2]