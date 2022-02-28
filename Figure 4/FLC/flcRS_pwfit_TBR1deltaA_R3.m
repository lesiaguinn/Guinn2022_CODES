% Developed on: April 23, 2020
% Description:
% This script performs piecewise exponential growth curve fitting
 
clearvars; close all;
 
[num,txt,raw]=xlsread('Lesia2020_flcRESUSP.xlsx','deltaamn1replicates'); %Sheet 'amb' with means ONLY
 
amb=num(1,:);amb=amb(~isnan(amb)); %amB concentrations
mw=num(3:74,4:4:end); %row3 thru 74, column 2 with interval 4 thru end of numbers
ma=num(3:74,4:4:end);
sw=num(3:74,6:8:end);
sa=num(3:74,7:8:end);
 
t=1:length(mw);
tspan=[0	3681.7	7363.4	11045	14726.7	18408.4	22090.1	25771.7	29453.4	33135.1	36816.8	40498.5	44180.1	47861.8	51543.5	55225.2	58906.8	62588.5	66270.2	69951.9	73633.5	77315.2	80996.9	84678.6	88360.2	92042	95723.6	99405.3	103087	106768.7	110450.4	114132	117813.7	121495.4	125177.1	128858.8	132540.5	136222.1	139903.8	143585.5	147267.2	150948.8	154630.5	158312.2	161993.9	165675.6	169357.3	173038.9	176720.6	180402.3	184084	187765.7	191447.3	195129	198810.7	202492.4	206174.1	209855.8	213537.4	217219.1	220900.8	224582.5	228264.2	231945.8	235627.5	239309.2	242990.9	246672.6	250354.2	254035.9	257717.6	261399.3]/3600;
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
 
t3ii=t(interiorbreak3:end);
y3ii=y3(interiorbreak3:end);
dt = max(t3ii) - min(t3ii);
[interiorbreak3ii,fval3ii] = fminbnd(@(b2) breakfit(b2,t3ii,y3ii),min(t3ii) + dt/100,max(t3ii) - dt/100);
interiorbreak3ii
 
t3iii=t(interiorbreak3i:interiorbreak3);
y3iii=y3(interiorbreak3i:interiorbreak3);
dt = max(t3iii) - min(t3iii);
[interiorbreak3iii,fval3iii] = fminbnd(@(b2) breakfit(b2,t3iii,y3iii),min(t3iii) + dt/100,max(t3iii) - dt/100);
interiorbreak3iii
 
figure(3);
plot(t,y3,'LineWidth',3); hold on;
% plot(round(interiorbreak3),y3(round(interiorbreak3+1)),'ko','LineWidth',3,'MarkerSize',12); 
plot(round(interiorbreak3i),y3(round(interiorbreak3i+1)),'ko','LineWidth',3,'MarkerSize',12); 
% plot(round(interiorbreak3ii),y3(round(interiorbreak3ii+1)),'ko','LineWidth',3,'MarkerSize',12);
% plot(round(interiorbreak3iii),y3(round(interiorbreak3iii+1)),'ko','LineWidth',3,'MarkerSize',12);
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
 
t4ii=t(1:interiorbreak4i);
y4ii=y4(1:interiorbreak4i);
dt = max(t4ii) - min(t4ii);
[interiorbreak4ii,fval4ii] = fminbnd(@(b2) breakfit(b2,t4ii,y4ii),min(t4ii) + dt/100,max(t4ii) - dt/100);
interiorbreak4ii
 
t4iii=t(1:interiorbreak4i);
y4iii=y4(1:interiorbreak4i);
dt = max(t4iii) - min(t4iii);
[interiorbreak4iii,fval4iii] = fminbnd(@(b2) breakfit(b2,t4iii,y4iii),min(t4iii) + dt/100,max(t4iii) - dt/100);
interiorbreak4iii
 
figure(4);
plot(t,y4,'LineWidth',3); hold on;
% plot(round(interiorbreak4),y4(round(interiorbreak4+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak4i),y4(round(interiorbreak4i+1)),'ko','LineWidth',3,'MarkerSize',12);
% plot(round(interiorbreak4ii),y4(round(interiorbreak4ii+1)),'ko','LineWidth',3,'MarkerSize',12);
% plot(round(interiorbreak4iii),y4(round(interiorbreak4iii+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-4 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})'); 
%% concentration 0.08
dt = max(t) - min(t);
[interiorbreak5,fval5] = fminbnd(@(b2) breakfit(b2,t,y5),min(t) + dt/100,max(t) - dt/100);
interiorbreak5
 
t5i=t(1:interiorbreak5);
y5i=y5(1:interiorbreak5);
dt = max(t5i) - min(t5i);
[interiorbreak5i,fval5i] = fminbnd(@(b2) breakfit(b2,t5i,y5i),min(t5i) + dt/100,max(t5i) - dt/100);
interiorbreak5i
 
t5ii=t(1:interiorbreak5i);
y5ii=y5(1:interiorbreak5i);
dt = max(t5ii) - min(t5ii);
[interiorbreak5ii,fval5ii] = fminbnd(@(b2) breakfit(b2,t5ii,y5ii),min(t5ii) + dt/100,max(t5ii) - dt/100);
interiorbreak5ii
 
figure(5);
plot(t,y5,'LineWidth',3); hold on;
% plot(round(interiorbreak5),y5(round(interiorbreak5+1)),'ko','LineWidth',3,'MarkerSize',12);
% plot(round(interiorbreak5i),y5(round(interiorbreak5i+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak5ii),y5(round(interiorbreak5ii+1)),'ko','LineWidth',3,'MarkerSize',12);
% plot(round(interiorbreak5iii),y5(round(interiorbreak5iii+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-4 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
%% concentration 0.1
dt = max(t) - min(t);
[interiorbreak6,fval6] = fminbnd(@(b2) breakfit(b2,t,y6),min(t) + dt/100,max(t) - dt/100);
interiorbreak6
 
t6ii=t(1:interiorbreak6);
y6ii=y6(1:interiorbreak6);
dt = max(t6ii) - min(t6ii);
[interiorbreak6ii,fval6ii] = fminbnd(@(b2) breakfit(b2,t6ii,y6ii),min(t6ii) + dt/100,max(t6ii) - dt/100);
interiorbreak6ii
 
t6i=t(1:interiorbreak6ii);
y6i=y6(1:interiorbreak6ii);
dt = max(t6ii) - min(t6ii);
[interiorbreak6i,fval6i] = fminbnd(@(b2) breakfit(b2,t6i,y6i),min(t6i) + dt/100,max(t6i) - dt/100);
interiorbreak6i
 
figure(6);
plot(t,y6,'LineWidth',3); hold on;
% plot(round(interiorbreak6),y6(round(interiorbreak6+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak6i),y6(round(interiorbreak6i+1)),'ko','LineWidth',3,'MarkerSize',12);
% plot(round(interiorbreak6ii),y6(round(interiorbreak6ii+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-4 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
%% plot the ultimate result
figure(13);
h1=plot(t,y1,'color',[1.0 1.0 0.6],'LineWidth',3); hold on;
h2=plot(round(interiorbreak1),y1(round(interiorbreak1+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
 
h3=plot(t,y2,'color',[1.0 1.0 0.2],'LineWidth',3); hold on;
plot(round(interiorbreak2),y2(round(interiorbreak2+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
plot(round(interiorbreak2i),y2(round(interiorbreak2i+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
 
h5=plot(t,y3,'color',[1.0 0.8 0.2],'LineWidth',3); hold on;
% plot(round(interiorbreak3),y3(round(interiorbreak3+1)),'ko','LineWidth',3,'MarkerSize',12); 
plot(round(interiorbreak3i),y3(round(interiorbreak3i+1)),'ko','LineWidth',3,'MarkerSize',12); 
% plot(round(interiorbreak3ii),y3(round(interiorbreak3ii+1)),'ko','LineWidth',3,'MarkerSize',12);
 
h7=plot(t,y4,'color',[1.0 0.4 0.2],'LineWidth',3); hold on;
% h8=plot(round(interiorbreak4ii),y4(round(interiorbreak4ii+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
h9=plot(round(interiorbreak4i),y4(round(interiorbreak4i+1)),'ko','LineWidth',3,'MarkerSize',12); % 2
% h10=plot(round(interiorbreak4iii),y4(round(interiorbreak4iii+1)),'ko','LineWidth',3,'MarkerSize',12); % 3
 
h11=plot(t,y5,'color',[0.7 0.2 0.0],'LineWidth',3); hold on;
% plot(round(interiorbreak5),y5(round(interiorbreak5+1)),'ko','LineWidth',3,'MarkerSize',12);
% plot(round(interiorbreak5i),y5(round(interiorbreak5i+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak5ii),y5(round(interiorbreak5ii+1)),'ko','LineWidth',3,'MarkerSize',12);
 
h15=plot(t,y6,'color',[0.6 0.0 0.0],'LineWidth',3); hold on;
h16=plot(round(interiorbreak6i),y6(round(interiorbreak6i+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
% h17=plot(round(interiorbreak6),y6(round(interiorbreak6+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
% h18=plot(round(interiorbreak6iii),y6(round(interiorbreak6iii+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
 
set(gca,'color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
pbaspect([1 1 1]); box on; ylim([-2 1]);xlim([-4 77]);
xlabel('Time (hrs)'); ylabel('log(OD_{600})'); title ('TBR1\Deltaa R3_{RESUSP.}');  
legend([h1 h3 h5 h7 h11 h15],{'0','50','75','100','125','150 \mug/ml FLC'},'Location','northeastoutside','EdgeColor','none');
 
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
 
slopeat042=(y3(end)-y3(round(interiorbreak3i+1)))/(t(end)-interiorbreak3i)
durationat042=t(end)-interiorbreak3i
 
% concentration 06
slopeat061=(y4(round(interiorbreak4i+1))-y4(1))/interiorbreak4i
durationat061=interiorbreak4i
 
slopeat062=(y4(end)-y4(round(interiorbreak4i+1)))/(t(end)-interiorbreak4i)
durationat062=t(end)-interiorbreak4i
 
% concentration 08
slopeat081=(y5(round(interiorbreak5ii+1))-y5(1))/interiorbreak5ii
durationat081=interiorbreak5ii
 
slopeat082=(y5(end)-y5(round(interiorbreak5ii+1)))/(t(end)-interiorbreak5ii)
durationat082=t(end)-interiorbreak5ii
 
% concentration 10
slopeat101=(y6(round(interiorbreak6i+1))-y6(1))/interiorbreak6i
durationat101=interiorbreak6i
 
slopeat102=(y6(end)-y6(round(interiorbreak6i+1)))/(t(end)-interiorbreak6i)
durationat102=t(end)-interiorbreak6i
%%
 
slopeat001
slopeat002
 
slopeat021
slopeat022
slopeat023
 
slopeat041
slopeat042
 
slopeat061
slopeat062
 
 
slopeat081
slopeat082
 
slopeat101
slopeat102
 
 
durationat001
durationat002
 
durationat021
durationat022
durationat023
 
durationat041
durationat042
 
durationat061
durationat062
 
durationat081
durationat082
 
durationat101
durationat102
 
% 
%  
% interiorbreak1
% interiorbreak2
% interiorbreak3
% interiorbreak4ii
% interiorbreak4i
% interiorbreak4iii
% interiorbreak5ii
% interiorbreak5i
% interiorbreak5iv
% interiorbreak6i
% interiorbreak6
% interiorbreak6iii
 
%%
figure(14);
subplot(3,2,1);
 
E = [0 0.2 0.4 0.6 0.8 1];
dur2 = [durationat001 durationat021 durationat041 durationat061 durationat081 durationat101];
 
hb1 = bar(E,dur2,'FaceColor','flat','EdgeColor','k','LineWidth',3);
 
hb1.CData(1,:) = [0.8 0.8 0.8];
hb1.CData(2,:) = [0.65 0.65 0.65];
hb1.CData(3,:) = [0.5 0.5 0.5];
hb1.CData(4,:) = [0.35 0.35 0.35];
hb1.CData(5,:) = [0.2 0.2 0.2];
hb1.CData(6,:) = [0.1 0.1 0.1];
 
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
pbaspect([2 1 1]); %xlim([-0.2 1.2]);
 
hold off
 
figure(15);
subplot(3,2,1);
hold on
Y = [0 0 interiorbreak1;
    0 0 interiorbreak2;
    0 0 interiorbreak3;
    interiorbreak4ii interiorbreak4i interiorbreak4iii;
    0 0 interiorbreak5ii;
    0 0 interiorbreak6ii];
 
ba=bar(Y,'stacked','FaceColor','flat','LineWidth',3);
 
XTickLabel={'a','b','c','d','e','f'};
XTick=[1:6];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
set(gca, 'XTickLabelRotation', 45); 
 
ba(1).CData = [0.3 0.3 0.3];
ba(2).CData = [0.6 0.6 0.6];
ba(3).CData = [0.9 0.9 0.9];
 
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'0','0.2','0.4','0.6','0.8','1'}); box on;
legend('B1','B2','B3','Location','northeastoutside','EdgeColor','none'); ylabel('Break Time (hrs)'); ylim([0 300]);
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

