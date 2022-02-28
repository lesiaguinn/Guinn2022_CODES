% Developed on: April 23, 2020
% Description:
% This script performs piecewise exponential growth curve fitting
 
clearvars; close all;
 
[num,txt,raw]=xlsread('Lesia2020_caspNEW.xlsx','tbr1replicates'); %Sheet 'amb' with means ONLY
 
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
 
t1i=t(1:(interiorbreak1-6));
y1i=y2(1:(interiorbreak1-6));
dt = max(t1i) - min(t1i);
[interiorbreak1i,fval1i] = fminbnd(@(b2) breakfit(b2,t1i,y1i),min(t1i) + dt/100,max(t1i) - dt/100);
interiorbreak1i
 
figure(1);
plot(t,y1,'LineWidth',3); hold on;
plot(round(interiorbreak1),y1(round(interiorbreak1+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak1i),y1(round(interiorbreak1i+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');ylim([-2 1]);xlim([-4 77]);
pbaspect([1 1 1]);box on;
xlabel('Time (hrs)');ylabel('log(OD_{600})'); 
 
%% concentration 0.02 
dt = max(t) - min(t);
[interiorbreak2,fval2] = fminbnd(@(b2) breakfit(b2,t,y2),min(t) + dt/100,max(t) - dt/100);
interiorbreak2
 
t2i=t(interiorbreak2:end);
y2i=y2(interiorbreak2:end);
dt = max(t2i) - min(t2i);
[interiorbreak2i,fval2i] = fminbnd(@(b2) breakfit(b2,t2i,y2i),min(t2i) + dt/100,max(t2i) - dt/100);
interiorbreak2i
 
t2ii=t(1:(interiorbreak2-15));
y2ii=y2(1:(interiorbreak2-15));
dt = max(t2ii) - min(t2ii);
[interiorbreak2ii,fval2ii] = fminbnd(@(b2) breakfit(b2,t2ii,y2ii),min(t2ii) + dt/100,max(t2ii) - dt/100);
interiorbreak2ii
 
figure(2);
plot(t,y2,'LineWidth',3); hold on;
% plot(round(interiorbreak2),y2(round(interiorbreak2+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak2i),y2(round(interiorbreak2i+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak2ii),y2(round(interiorbreak2ii+1)),'ko','LineWidth',3,'MarkerSize',12);
% plot(round(interiorbreak2iii),y2(round(interiorbreak2iii+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-4 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
%% concentration 0.04
dt = max(t) - min(t);
[interiorbreak3,fval3] = fminbnd(@(b2) breakfit(b2,t,y3),min(t) + dt/100,max(t) - dt/100);
interiorbreak3
 
t3i=t(1:(interiorbreak3-10));
y3i=y3(1:(interiorbreak3-10));
dt = max(t3i) - min(t3i);
[interiorbreak3i,fval3i] = fminbnd(@(b2) breakfit(b2,t3i,y3i),min(t3i) + dt/100,max(t3i) - dt/100);
interiorbreak3i
 
t3ii=t(interiorbreak3:end);
y3ii=y3(interiorbreak3:end);
dt = max(t3ii) - min(t3ii);
[interiorbreak3ii,fval3ii] = fminbnd(@(b2) breakfit(b2,t3ii,y3ii),min(t3ii) + dt/100,max(t3ii) - dt/100);
interiorbreak3ii
 
figure(3);
plot(t,y3,'LineWidth',3); hold on;
% plot(round(interiorbreak3),y3(round(interiorbreak3+1)),'ko','LineWidth',3,'MarkerSize',12); 
plot(round(interiorbreak3i),y3(round(interiorbreak3i+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak3ii),y3(round(interiorbreak3ii+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-4 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
%% concentration 0.06
dt = max(t) - min(t);
[interiorbreak4,fval4] = fminbnd(@(b2) breakfit(b2,t,y4),min(t) + dt/100,max(t) - dt/100);
interiorbreak4
 
t4i=t(1:interiorbreak4);
y4i=y5(1:interiorbreak4);
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
y5i=y5(1:interiorbreak5);
dt = max(t5i) - min(t5i);
[interiorbreak5i,fval5i] = fminbnd(@(b2) breakfit(b2,t5i,y5i),min(t5i) + dt/100,max(t5i) - dt/100);
interiorbreak5i
 
t5ii=t(interiorbreak5:end);
y5ii=y5(interiorbreak5:end);
dt = max(t5ii) - min(t5ii);
[interiorbreak5ii,fval5ii] = fminbnd(@(b2) breakfit(b2,t5ii,y5ii),min(t5ii) + dt/100,max(t5ii) - dt/100);
interiorbreak5ii
 
figure(5);
plot(t,y5,'LineWidth',3); hold on;
% plot(round(interiorbreak5),y5(round(interiorbreak5+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak5i),y5(round(interiorbreak5i+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak5ii),y5(round(interiorbreak5ii+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-4 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
%% concentration 0.1
dt = max(t) - min(t);
[interiorbreak6,fval6] = fminbnd(@(b2) breakfit(b2,t,y6),min(t) + dt/100,max(t) - dt/100);
interiorbreak6
 
t6i=t(1:interiorbreak6);
y6ii=y6(1:interiorbreak6);
dt = max(t6i) - min(t6i);
[interiorbreak6i,fval6i] = fminbnd(@(b2) breakfit(b2,t6i,y6ii),min(t6i) + dt/100,max(t6i) - dt/100);
interiorbreak6i
 
figure(6);
plot(t,y6,'LineWidth',3); hold on;
plot(round(interiorbreak6),y6(round(interiorbreak6+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak6i),y6(round(interiorbreak6i+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-4 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
%% plot the ultimate result
figure(7);
h1=plot(t,y1,'color',[0.75 1.0 1.0],'LineWidth',3); hold on;
plot(round(interiorbreak1i),y1(round(interiorbreak1i+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
plot(round(interiorbreak1),y1(round(interiorbreak1+1)),'ko','LineWidth',3,'MarkerSize',12); % 2
 
h3=plot(t,y2,'color',[0.5 0.8 0.8],'LineWidth',3); hold on;
plot(round(interiorbreak2ii),y2(round(interiorbreak2ii+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
plot(round(interiorbreak2),y2(round(interiorbreak2+1)),'ko','LineWidth',3,'MarkerSize',12); % 2
 
h5=plot(t,y3,'color',[0.4 0.75 0.6],'LineWidth',3); hold on;
plot(round(interiorbreak3i),y3(round(interiorbreak3i+1)),'ko','LineWidth',3,'MarkerSize',12); % 1 
plot(round(interiorbreak3ii),y3(round(interiorbreak3ii+1)),'ko','LineWidth',3,'MarkerSize',12); % 2 
 
h7=plot(t,y4,'color',[0.3 0.5 0.4],'LineWidth',3); hold on;
h9=plot(round(interiorbreak4i),y4(round(interiorbreak4i+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
h10=plot(round(interiorbreak4),y4(round(interiorbreak4+1)),'ko','LineWidth',3,'MarkerSize',12); % 2
 
h11=plot(t,y5,'color',[0.2 0.25 0.3],'LineWidth',3); hold on;
% h12=plot(round(interiorbreak5ii),y5(round(interiorbreak5ii+1)),'ko','LineWidth',3,'MarkerSize',12); 
h13=plot(round(interiorbreak5ii),y5(round(interiorbreak5ii+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
h14=plot(round(interiorbreak5i),y5(round(interiorbreak5i+1)),'ko','LineWidth',3,'MarkerSize',12); % 2
 
h15=plot(t,y6,'color',[0.1 0.0 0.2],'LineWidth',3); hold on;
% h16=plot(round(interiorbreak6ii),y6(round(interiorbreak6ii+1)),'ko','LineWidth',3,'MarkerSize',12); 
h17=plot(round(interiorbreak6),y6(round(interiorbreak6+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
h18=plot(round(interiorbreak6i),y6(round(interiorbreak6i+1)),'ko','LineWidth',3,'MarkerSize',12); % 2
 
set(gca,'color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
pbaspect([1 1 1]); box on; ylim([-2 1]);xlim([-4 77]);
xlabel('Time (hrs)'); ylabel('log(OD_{600})'); title ('TBR1 R1');  
legend([h1 h3 h5 h7 h11 h15],{'0','0.2','0.4','0.6','0.8','1 \mug/ml CASP'},'Location','northeastoutside','EdgeColor','none');
 
%% slopes and durations of all growth phases
% concentration 00
slopeat001=(y1(round(interiorbreak1i+1))-y1(1))/interiorbreak1i
durationat001=interiorbreak1i
 
slopeat002=(y1(round(interiorbreak1+1))-y1(round(interiorbreak1i+1)))/(interiorbreak1-interiorbreak1i)
durationat002=interiorbreak1-interiorbreak1i
 
slopeat003=(y1(end)-y1(round(interiorbreak1+1)))/(t(end)-interiorbreak1)
durationat003=t(end)-interiorbreak1
 
% concentration 02
slopeat021=(y2(round(interiorbreak2ii+1))-y2(1))/interiorbreak2ii
durationat021=interiorbreak2ii
 
slopeat022=(y2(round(interiorbreak2i+1))-y2(round(interiorbreak2ii+1)))/(interiorbreak2i-interiorbreak2ii)
durationat022=interiorbreak2i-interiorbreak2ii
 
slopeat023=(y2(end)-y3(round(interiorbreak2i+1)))/(t(end)-interiorbreak2i)
durationat023=t(end)-interiorbreak2i
 
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
 
slopeat082=(y5(round(interiorbreak5+1))-y5(round(interiorbreak5i+1)))/(interiorbreak5-interiorbreak5i)
durationat082=interiorbreak5-interiorbreak5i
 
slopeat083=(y5(end)-y5(round(interiorbreak5+1)))/(t(end)-interiorbreak5)
durationat083=t(end)-interiorbreak5
 
% concentration 10
slopeat101=(y6(round(interiorbreak6i+1))-y6(1))/interiorbreak6i
durationat101=interiorbreak6i
 
slopeat102=(y6(round(interiorbreak6+1))-y6(round(interiorbreak6i+1)))/(interiorbreak6-interiorbreak6i)
durationat102=interiorbreak6-interiorbreak6i
 
slopeat103=(y6(end)-y6(round(interiorbreak6+1)))/(t(end)-interiorbreak6)
durationat103=t(end)-interiorbreak6
 
%%
 

slopeat001
slopeat021
slopeat041
slopeat061
slopeat081
slopeat101 

slopeat002
slopeat022
slopeat042
slopeat062
slopeat082
slopeat102

slopeat003
slopeat023
slopeat043
slopeat063
slopeat083
slopeat103
 
 
durationat001
durationat021
durationat041
durationat061
durationat081
durationat101

durationat002
durationat022
durationat042
durationat062
durationat082
durationat102

durationat003
durationat023
durationat043
durationat063
durationat083
durationat103 
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
figure(8);
% subplot(1,2,1);
 
E = [0 0.2 0.4 0.6 0.8 1];
s2 = [slopeat002 slopeat022 slopeat042 slopeat062 slopeat082 slopeat102];
 
hb1 = bar(E,s2,'FaceColor','flat','EdgeColor','k','LineWidth',3);
 
hb1.CData(1,:) = [0.75 1.0 1.0];
hb1.CData(2,:) = [0.5 0.8 0.8];
hb1.CData(3,:) = [0.4 0.75 0.6];
hb1.CData(4,:) = [0.3 0.5 0.4];
hb1.CData(5,:) = [0.2 0.25 0.3];
hb1.CData(6,:) = [0.1 0.0 0.2];
 
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'0','0.2','0.4','0.6','0.8','1'});
ylabel('S2');
pbaspect([2 1 1]); ylim([0 0.2]); xlim([-0.2 1.2]);
 
hold off
 %%
figure(9);
% subplot(1,2,1);
 
E = [0 0.2 0.4 0.6 0.8 1];
dur2 = [durationat002 durationat022 durationat042 durationat062 durationat082 durationat102];
 
hb2 = bar(E,dur2,'FaceColor','flat','EdgeColor','k','LineWidth',3);
 
hb2.CData(1,:) = [0.75 1.0 1.0];
hb2.CData(2,:) = [0.5 0.8 0.8];
hb2.CData(3,:) = [0.4 0.75 0.6];
hb2.CData(4,:) = [0.3 0.5 0.4];
hb2.CData(5,:) = [0.2 0.25 0.3];
hb2.CData(6,:) = [0.1 0.0 0.2];
 
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'0','0.2','0.4','0.6','0.8','1'});
ylabel('D2');
pbaspect([2 1 1]); ylim([0 50]); xlim([-0.2 1.2]);
 
hold off
%%
figure(10);
% subplot(1,2,1);
hold on
Y = [interiorbreak1i interiorbreak1;
    interiorbreak2i interiorbreak2ii;
    interiorbreak3i interiorbreak3;
    interiorbreak4i interiorbreak4; 
    interiorbreak5i interiorbreak5; 
    interiorbreak6i interiorbreak6];
 
ba=bar(Y,'stacked','FaceColor','flat','LineWidth',3);
 
XTickLabel={'a','b','c','d','e','f'};
XTick=[1:6];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
set(gca, 'XTickLabelRotation', 45); 
 
ba(1).CData = [0.3 0.5 0.4];
ba(2).CData = [0.75 1.0 1.0];
 
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'0','0.2','0.4','0.6','0.8','1'}); box on;
legend('B1','B2','B3','Location','northeastoutside','EdgeColor','none'); ylabel('Break Time (hrs)'); ylim([0 50]);
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

