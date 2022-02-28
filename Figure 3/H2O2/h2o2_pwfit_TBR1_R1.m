% Developed on: April 23, 2020
% Description:
% This script performs piecewise exponential growth curve fitting
 
clearvars; close all;
 
[num,txt,raw]=xlsread('Lesia2020_h2o2.xlsx','tbr1replicates'); %Sheet 'amb' with means ONLY
 
amb=num(1,:);amb=amb(~isnan(amb)); %amB concentrations
mw=num(3:74,2:4:end); %row3 thru 74, column 2 with interval 4 thru end of numbers
ma=num(3:74,2:4:end);
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
 
dt = max(tspan) - min(tspan);
[interiorbreak1,fval1] = fminbnd(@(b2) breakfit(b2,tspan,y1),min(tspan) + dt/100,max(t) - dt/100);
interiorbreak1
 
figure(1);
plot(t,y1,'color',[0.75 1.0 1.0],'LineWidth',3); hold on;
plot(round(interiorbreak1),y1(round(interiorbreak1+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
t1i=t(1:interiorbreak1);
y1i=y1(1:interiorbreak1);
dt = max(t1i) - min(t1i);
[interiorbreak1i,fval1i] = fminbnd(@(b2) breakfit(b2,t1i,y1i),min(t1i) + dt/100,max(t1i) - dt/100);
interiorbreak1i
 
t1ii=t(1:(interiorbreak1i-1));
y1ii=y1(1:(interiorbreak1i-1));
dt = max(t1ii) - min(t1ii);
[interiorbreak1ii,fval1ii] = fminbnd(@(b2) breakfit(b2,t1ii,y1ii),min(t1ii) + dt/100,max(t1ii) - dt/100);
interiorbreak1ii
 
figure(2);
plot(t,y1,'color',[0.75 1.0 1.0],'LineWidth',3); hold on;
plot(round(interiorbreak1ii),y1(round(interiorbreak1ii+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');ylim([-1.9 -1.6]);xlim([0 2]);
 
%% concentration 0.02 
dt = max(t) - min(t);
[interiorbreak2,fval2] = fminbnd(@(b2) breakfit(b2,t,y2),min(t) + dt/100,max(t) - dt/100);
interiorbreak2
 
t2i=t(1:interiorbreak2);
y2i=y2(1:interiorbreak2);
dt = max(t2i) - min(t2i);
[interiorbreak2i,fval2i] = fminbnd(@(b2) breakfit(b2,t2i,t2i),min(t2i) + dt/100,max(t2i) - dt/100);
interiorbreak2i
 
t2ii=t((interiorbreak2i+9):interiorbreak2);
y2ii=y2((interiorbreak2i+9):interiorbreak2);
dt = max(t2ii) - min(t2ii);
[interiorbreak2ii,fval2ii] = fminbnd(@(b2) breakfit(b2,t2ii,t2ii),min(t2ii) + dt/100,max(t2ii) - dt/100);
interiorbreak2ii
 
figure(3);
plot(t,y2,'LineWidth',3); hold on;
plot(round(interiorbreak2ii),y2(round(interiorbreak2ii+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
t2iii=t(1:interiorbreak2i);
y2iii=y2(1:interiorbreak2i);
dt = max(t2iii) - min(t2iii);
[interiorbreak2iii,fval2iii] = fminbnd(@(b2) breakfit(b2,t2iii,t2iii),min(t2iii) + dt/100,max(t2iii) - dt/100);
interiorbreak2iii
 
t2iv=t(8);
y2iv=y2(8);
dt = max(t2iv) - min(t2iv);
[interiorbreak2iv,fval2iv] = fminbnd(@(b2) breakfit(b2,t2iv,t2iv),min(t2iv) + dt/100,max(t2iv) - dt/100);
interiorbreak2iv
 
figure(4);
plot(t,y2,'color',[0.5 0.8 0.8],'LineWidth',3); hold on;
plot(round(interiorbreak2iv),y2(round(interiorbreak2iv)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');ylim([-1.9 -1.6]);xlim([6 8]);
  
%% concentration 0.04
dt = max(t) - min(t);
[interiorbreak9,fval9] = fminbnd(@(b2) breakfit(b2,t,y3),min(t) + dt/100,max(t) - dt/100);
interiorbreak9
 
tred2=t(1:interiorbreak9);
yred2=y3(1:interiorbreak9);
 
dt = max(tred2) - min(tred2);
[interiorbreak10,fval10] = fminbnd(@(b2) breakfit(b2,tred2,yred2),min(tred2) + dt/100,max(tred2) - dt/100);
interiorbreak10
 
figure(5);
plot(t,y3,'color',[0.4 0.75 0.6],'LineWidth',3); hold on;
plot(round(interiorbreak10),y3(round(interiorbreak10+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');ylim([-1.9 -1.6]);xlim([18 22]);
 
tfin2=tred2(1:interiorbreak10);
yfin2=y3(1:interiorbreak10);
 
dt = max(tfin2) - min(tfin2);
[interiorbreak11,fval10] = fminbnd(@(b2) breakfit(b2,tfin2,yfin2),min(tfin2) + dt/100,max(tfin2) - dt/100);
interiorbreak11
 
trev2=t(interiorbreak10:end);
yrev2=y3(interiorbreak10:end);
 
dt = max(trev2) - min(trev2);
 
[interiorbreak12,fval10] = fminbnd(@(b2) breakfit(b2,trev2,yrev2),min(trev2) + dt/100,max(trev2) - dt/100);
interiorbreak12
 
figure(6);
plot(trev2,yrev2,'LineWidth',3); hold on;
plot(round(interiorbreak12),y3(round(interiorbreak12+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
%% concentration 0.06
dt = max(t) - min(t);
[interiorbreak4,fval4] = fminbnd(@(b2) breakfit(b2,t,y4),min(t) + dt/100,max(t) - dt/100);
interiorbreak4
 
t4i=t(interiorbreak4:end);
y4i=y4(interiorbreak4:end);
dt = max(t4i) - min(t4i);
[interiorbreak4i,fval4i] = fminbnd(@(b2) breakfit(b2,t4i,t4i),min(t4i) + dt/100,max(t4i) - dt/100);
interiorbreak4i
 
t4ii=t(interiorbreak4:interiorbreak4i);
y4ii=y4(interiorbreak4:interiorbreak4i);
dt = max(t4ii) - min(t4ii);
[interiorbreak4ii,fval4ii] = fminbnd(@(b2) breakfit(b2,t4ii,t4ii),min(t4ii) + dt/100,max(t4ii) - dt/100);
interiorbreak4ii
 
figure(7);
plot(t,y4,'color',[0.3 0.5 0.4],'LineWidth',3); hold on;
plot(round(interiorbreak4ii),y4(round(interiorbreak4ii+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})'); ylim([-1.9 -1.6]);xlim([32 40]);
 
t4iii=t(interiorbreak4i:(end-9));
y4iii=y4(interiorbreak4i:(end-9));
dt = max(t4iii) - min(t4iii);
[interiorbreak4iii,fval4iii] = fminbnd(@(b2) breakfit(b2,t4iii,t4iii),min(t4iii) + dt/100,max(t4iii) - dt/100);
interiorbreak4iii
 
figure(8);
plot(t,y4,'LineWidth',3); hold on;
plot(round(interiorbreak4iii),y4(round(interiorbreak4iii+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
%% concentration 0.08
dt = max(t) - min(t);
[interiorbreak16,fval12] = fminbnd(@(b2) breakfit(b2,t,y5),min(t) + dt/100,max(t) - dt/100);
interiorbreak16
 
trev6=t(interiorbreak16:end);
yrev6=y5(interiorbreak16:end);
dt = max(trev6) - min(trev6);
[interiorbreak17,fval13] = fminbnd(@(b2) breakfit(b2,trev6,yrev6),min(trev6) + dt/100,max(trev6) - dt/100);
interiorbreak17
 
t5i=t(interiorbreak17:end);
y5i=y5(interiorbreak17:end);
dt = max(t5i) - min(t5i);
[interiorbreak17i,fval13i] = fminbnd(@(b2) breakfit(b2,t5i,t5i),min(t5i) + dt/100,max(t5i) - dt/100);
interiorbreak17i
 
figure(9);
plot(t,y5,'LineWidth',3); hold on;
plot(round(interiorbreak17),y5(round(interiorbreak17+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
trev7=t(1:interiorbreak17);
yrev7=y5(1:interiorbreak17);
dt = max(trev7) - min(trev7);
[interiorbreak18,fval14] = fminbnd(@(b2) breakfit(b2,trev7,yrev7),min(trev7) + dt/100,max(trev7) - dt/100);
interiorbreak18
 
trev7i=t(1:interiorbreak18);
yrev7i=y5(1:interiorbreak18);
dt = max(trev7i) - min(trev7i);
[interiorbreak18i,fval14i] = fminbnd(@(b2) breakfit(b2,trev7i,yrev7i),min(trev7i) + dt/100,max(trev7i) - dt/100);
interiorbreak18i
 
figure(10);
plot(t,y5,'color',[0.2 0.25 0.3],'LineWidth',3); hold on;
plot(round(interiorbreak18i),y5(round(interiorbreak18i+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})'); ylim([-1.9 -1.6]);xlim([38 40]);
 
%% concentration 0.1
dt = max(t) - min(t);
[interiorbreak19,fval19] = fminbnd(@(b2) breakfit(b2,t,y6),min(t) + dt/100,max(t) - dt/100);
interiorbreak19
 
trev8=t(interiorbreak19:end);
yrev8=y6(interiorbreak19:end);
 
dt = max(trev8) - min(trev8);
 
[interiorbreak20,fval20] = fminbnd(@(b2) breakfit(b2,trev8,yrev8),min(trev8) + dt/100,max(trev8) - dt/100);
interiorbreak20
 
figure(11);
plot(trev8,yrev8,'LineWidth',3); hold on;
plot(round(interiorbreak20),y6(round(interiorbreak20+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
trev9=t(1:interiorbreak20);
yrev9=y6(1:interiorbreak20);
 
dt = max(trev9) - min(trev9);
 
[interiorbreak21,fval21] = fminbnd(@(b2) breakfit(b2,trev9,yrev9),min(trev9) + dt/100,max(trev9) - dt/100);
interiorbreak21
%new
trev10=t(1:interiorbreak21);
yrev10=y6(1:interiorbreak21);
 
dt = max(trev10) - min(trev10);
[interiorbreak22,fval22] = fminbnd(@(b2) breakfit(b2,trev10,yrev10),min(trev10) + dt/100,max(trev10) - dt/100);
interiorbreak22
 
figure(12);
plot(t,y6,'color',[0.1 0.0 0.2],'LineWidth',3); hold on;
plot(round(interiorbreak22),y6(round(interiorbreak22+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})'); ylim([-1.9 -1.6]);xlim([46 48]);
%% plot the ultimate results
 
figure(13);
h1=plot(t,y1,'color',[0.75 1.0 1.0],'LineWidth',3); hold on;
% p.Color = 'red';hold on;
h2=plot(round(interiorbreak1ii),y1(round(interiorbreak1ii+1)),'ko','LineWidth',3,'MarkerSize',12); % 2
h3=plot(round(interiorbreak1),y1(round(interiorbreak1+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
 
h4=plot(t,y2,'color',[0.5 0.8 0.8],'LineWidth',3); hold on;
h5=plot(round(interiorbreak2iv),y2(round(interiorbreak2iv+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
h6=plot(round(interiorbreak2ii),y2(round(interiorbreak2ii+1)),'ko','LineWidth',3,'MarkerSize',12); % 2
 
h7=plot(t,y3,'color',[0.4 0.75 0.6],'LineWidth',3); hold on;
h8=plot(round(interiorbreak10),y3(round(interiorbreak10+1)),'ko','LineWidth',3,'MarkerSize',12); % 1 
h9=plot(round(interiorbreak12),y3(round(interiorbreak12+1)),'ko','LineWidth',3,'MarkerSize',12); % 2
 
h10=plot(t,y4,'color',[0.3 0.5 0.4],'LineWidth',3); hold on;
h11=plot(round(interiorbreak4ii),y4(round(interiorbreak4ii+1)),'ko','LineWidth',3,'MarkerSize',12); % 2
h12=plot(round(interiorbreak4iii),y4(round(interiorbreak4iii+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
 
h13=plot(t,y5,'color',[0.2 0.25 0.3],'LineWidth',3); hold on;
h14=plot(round(interiorbreak18i),y5(round(interiorbreak18i+1)),'ko','LineWidth',3,'MarkerSize',12); % 2
h15=plot(round(interiorbreak17),y5(round(interiorbreak17+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
 
h16=plot(t,y6,'color',[0.1 0.0 0.2],'LineWidth',3); hold on;
h17=plot(round(interiorbreak22),y6(round(interiorbreak22+1)),'ko','LineWidth',3,'MarkerSize',12); % 2
h18=plot(round(interiorbreak20),y6(round(interiorbreak20+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
 
set(gca, 'Color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
pbaspect([1 1 1]); box on; ylim([-2 1]); xlim([-5 77]);
xlabel('Time (hrs)'); ylabel('log(OD_{600})'); title ('TBR1 R1');
legend([h1 h4 h7 h10 h13 h16],{'0','0.02','0.04','0.06','0.08','0.1 % H_{2}O_{2}'},'Location','northeastoutside','EdgeColor','none');
 
%% slopes and durations of all growth phases
% concentration 00
slopeht001=(y1(round(interiorbreak3+1))-y1(1))/interiorbreak3
durationht001=interiorbreak3
 
slopeht002=(y1(round(interiorbreak1+1))-y1(round(interiorbreak3+1)))/(interiorbreak1-interiorbreak3)
durationht002=interiorbreak1-interiorbreak3
 
slopeht003=(y1(end)-y1(round(interiorbreak1+1)))/(t(end)-interiorbreak1)
durationht003=t(end)-interiorbreak1
 
% concentration 02
slopeht021=(y2(round(interiorbreak6+1))-y2(1))/interiorbreak6
durationht021=interiorbreak6
 
slopeht022=(y2(round(interiorbreak8+1))-y2(round(interiorbreak6+1)))/(interiorbreak8-interiorbreak6)
durationht022=interiorbreak8-interiorbreak6
 
slopeht023=(y2(end)-y2(round(interiorbreak8+1)))/(t(end)-interiorbreak8)
durationht023=t(end)-interiorbreak8
 
% concentration 04
slopeht041=(y3(round(interiorbreak10+1))-y3(1))/interiorbreak10
durationht041=interiorbreak10
 
slopeht042=(y3(round(interiorbreak12+1))-y3(round(interiorbreak10+1)))/(interiorbreak12-interiorbreak10)
durationht042=interiorbreak12-interiorbreak10
 
slopeht043=(y3(end)-y3(round(interiorbreak12+1)))/(t(end)-interiorbreak12)
durationht043=t(end)-interiorbreak12
 
% concentration 06
slopeht061=(y4(round(interiorbreak15+1))-y4(1))/interiorbreak15
durationht061=interiorbreak15
 
slopeht062=(y4(round(interiorbreak14+1))-y4(round(interiorbreak15+1)))/(interiorbreak14-interiorbreak15)
durationht062=interiorbreak14-interiorbreak15
 
slopeht063=(y4(end)-y4(round(interiorbreak14+1)))/(t(end)-interiorbreak14)
durationht063=t(end)-interiorbreak14
 
% concentration 08
slopeht081=(y5(round(interiorbreak18+1))-y5(1))/interiorbreak18
durationht081=interiorbreak18
 
slopeht082=(y5(round(interiorbreak17+1))-y5(round(interiorbreak18+1)))/(interiorbreak17-interiorbreak18)
durationht082=interiorbreak17-interiorbreak18
 
slopeht083=(y5(end)-y5(round(interiorbreak17+1)))/(t(end)-interiorbreak17)
durationht083=t(end)-interiorbreak17
 
% concentration 10
slopeht101=(y6(round(interiorbreak22+1))-y6(1))/interiorbreak22
durationht101=interiorbreak22
 
slopeht102=(y6(round(interiorbreak20+1))-y6(round(interiorbreak22+1)))/(interiorbreak20-interiorbreak22)
durationht102=interiorbreak20-interiorbreak22
 
slopeht103=(y6(end)-y6(round(interiorbreak20+1)))/(t(end)-interiorbreak20)
durationht103=t(end)-interiorbreak20
 
% break1
interiorbreak3
interiorbreak6
interiorbreak10
interiorbreak15
interiorbreak18
interiorbreak22
 
% break2
interiorbreak1
interiorbreak8
interiorbreak12
interiorbreak14
interiorbreak17
interiorbreak20
 
figure(14);
% subplot(2,2,1);
hold on
Y = [interiorbreak3,interiorbreak1
    interiorbreak6,interiorbreak8
    interiorbreak10,interiorbreak12
    interiorbreak15,interiorbreak14
    interiorbreak18,interiorbreak17
    interiorbreak22,interiorbreak20];
ba=bar(Y,'stacked','FaceColor','flat','LineWidth',3);
 
XTickLabel={'a','b','c','d','e','f'};
XTick=[1:6];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
set(gca, 'XTickLabelRotation', 45); 
 
ba(1).CData = [0.2 0.2 0.6];
ba(2).CData = [0.6 0.8 0.8];
 
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'0','0.02','0.04','0.06','0.08','0.1'}); box on;
legend('B1','B2','Location','northwest','EdgeColor','none'); ylabel('Break Time (hrs)'); 
pbaspect([1 1 1]);
 
hold off
%% slope
% the following letters mean:
% h - h2o2 // a - amB // c - CASP// f - FLC
% 00 // 02 // 04 // 06 // 08 // 10 - concentrations
% t - TBR1 // a - TBR1deltaAMN1
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
 
