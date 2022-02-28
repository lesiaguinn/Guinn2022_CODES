% Developed on: April 23, 2020
% Description:
% This script performs piecewise exponential growth curve fitting
 
clearvars; close all;
 
[num,txt,raw]=xlsread('Lesia2020_flcRESUSP.xlsx','tbr1replicates'); 
amb=num(1,:);amb=amb(~isnan(amb)); %amB concentrations
mw=num(3:74,3:4:end); %row3 thru 74, column 2 with interval 4 thru end of numbers
ma=num(3:74,3:4:end);
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
 
t2i=t(interiorbreak2:end);
y2i=y2(interiorbreak2:end);
dt = max(t2i) - min(t2i);
[interiorbreak2i,fval2i] = fminbnd(@(b2) breakfit(b2,t2i,y2i),min(t2i) + dt/100,max(t2i) - dt/100);
interiorbreak2i
 
t2ii=t(interiorbreak2:interiorbreak2i);
y2ii=y2(interiorbreak2:interiorbreak2i);
dt = max(t2ii) - min(t2ii);
[interiorbreak2ii,fval2ii] = fminbnd(@(b2) breakfit(b2,t2ii,y2ii),min(t2ii) + dt/100,max(t2ii) - dt/100);
interiorbreak2ii
 
figure(2);
plot(t,y2,'LineWidth',3); hold on;
% plot(round(interiorbreak2),y2(round(interiorbreak2+1)),'ko','LineWidth',3,'MarkerSize',12);
% plot(round(interiorbreak2i),y2(round(interiorbreak2i+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak2ii),y2(round(interiorbreak2ii+1)),'ko','LineWidth',3,'MarkerSize',12);
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
 
t3ii=t(1:interiorbreak3i);
y3ii=y3(1:interiorbreak3i);
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
plot(round(interiorbreak3i),y3(round(interiorbreak3i+1)),'ko','LineWidth',3,'MarkerSize',12); 
plot(round(interiorbreak3ii),y3(round(interiorbreak3ii+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak3iii),y3(round(interiorbreak3iii+1)),'ko','LineWidth',3,'MarkerSize',12);
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
 
t4ii=t(interiorbreak4i:interiorbreak4);
y4ii=y4(interiorbreak4i:interiorbreak4);
dt = max(t4ii) - min(t4ii);
[interiorbreak4ii,fval4ii] = fminbnd(@(b2) breakfit(b2,t4ii,y4ii),min(t4ii) + dt/100,max(t4ii) - dt/100);
interiorbreak4ii
 
t4iii=t(interiorbreak4i:interiorbreak4ii);
y4iii=y4(interiorbreak4i:interiorbreak4ii);
dt = max(t4iii) - min(t4iii);
[interiorbreak4iii,fval4iii] = fminbnd(@(b2) breakfit(b2,t4iii,y4iii),min(t4iii) + dt/100,max(t4iii) - dt/100);
interiorbreak4iii
 
figure(4);
plot(t,y4,'LineWidth',3); hold on;
plot(round(interiorbreak4),y4(round(interiorbreak4+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak4ii),y4(round(interiorbreak4ii+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak4iii),y4(round(interiorbreak4iii+1)),'ko','LineWidth',3,'MarkerSize',12);
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
 
t5ii=t(interiorbreak5i:interiorbreak5);
y5ii=y5(interiorbreak5i:interiorbreak5);
dt = max(t5ii) - min(t5ii);
[interiorbreak5ii,fval5ii] = fminbnd(@(b2) breakfit(b2,t5ii,y5ii),min(t5ii) + dt/100,max(t5ii) - dt/100);
interiorbreak5ii
 
t5iii=t(1:interiorbreak5i);
y5iii=y5(1:interiorbreak5i);
dt = max(t5iii) - min(t5iii);
[interiorbreak5iii,fval5iii] = fminbnd(@(b2) breakfit(b2,t5iii,y5iii),min(t5iii) + dt/100,max(t5iii) - dt/100);
interiorbreak5iii
 
figure(5);
plot(t,y5,'LineWidth',3); hold on;
plot(round(interiorbreak5i),y5(round(interiorbreak5i+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak5ii),y5(round(interiorbreak5ii+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak5iii),y5(round(interiorbreak5iii+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-4 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
%% concentration 0.1
dt = max(t) - min(t);
[interiorbreak6,fval6] = fminbnd(@(b2) breakfit(b2,t,y6),min(t) + dt/100,max(t) - dt/100);
interiorbreak6
 
t6i=t(interiorbreak6:end);
y6i=y6(interiorbreak6:end);
dt = max(t6i) - min(t6i);
[interiorbreak6i,fval6i] = fminbnd(@(b2) breakfit(b2,t6i,y6i),min(t6i) + dt/100,max(t6i) - dt/100);
interiorbreak6i
 
t6ii=t(1:interiorbreak6);
y6ii=y6(1:interiorbreak6);
dt = max(t6ii) - min(t6ii);
[interiorbreak6ii,fval6ii] = fminbnd(@(b2) breakfit(b2,t6ii,y6ii),min(t6ii) + dt/100,max(t6ii) - dt/100);
interiorbreak6ii
 
t6iii=t(interiorbreak6:interiorbreak6i);
y6iii=y6(interiorbreak6:interiorbreak6i);
dt = max(t6iii) - min(t6iii);
[interiorbreak6iii,fval6iii] = fminbnd(@(b2) breakfit(b2,t6iii,y6iii),min(t6iii) + dt/100,max(t6iii) - dt/100);
interiorbreak6iii
 
figure(6);
plot(t,y6,'LineWidth',3); hold on;
% plot(round(interiorbreak6),y6(round(interiorbreak6+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak6i),y6(round(interiorbreak6i+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak6ii),y6(round(interiorbreak6ii+1)),'ko','LineWidth',3,'MarkerSize',12);
plot(round(interiorbreak6iii),y6(round(interiorbreak6iii+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-4 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
%% plot the ultimate result
figure(7);
h1=plot(t,y1,'color',[0.75 1.0 1.0],'LineWidth',3); hold on;
h2=plot(round(interiorbreak1),y1(round(interiorbreak1+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
 
h3=plot(t,y2,'color',[0.5 0.8 0.8],'LineWidth',3); hold on;
h4=plot(round(interiorbreak2ii),y2(round(interiorbreak2ii+1)),'ko','LineWidth',3,'MarkerSize',12);
 
h5=plot(t,y3,'color',[0.4 0.75 0.6],'LineWidth',3); hold on;
h6=plot(round(interiorbreak3i),y3(round(interiorbreak3i+1)),'ko','LineWidth',3,'MarkerSize',12); 
h7=plot(round(interiorbreak3ii),y3(round(interiorbreak3ii+1)),'ko','LineWidth',3,'MarkerSize',12);
h8=plot(round(interiorbreak3iii),y3(round(interiorbreak3iii+1)),'ko','LineWidth',3,'MarkerSize',12);
 
h9=plot(t,y4,'color',[0.3 0.5 0.4],'LineWidth',3); hold on;
h10=plot(round(interiorbreak4),y4(round(interiorbreak4+1)),'ko','LineWidth',3,'MarkerSize',12);
h11=plot(round(interiorbreak4ii),y4(round(interiorbreak4ii+1)),'ko','LineWidth',3,'MarkerSize',12);
h12=plot(round(interiorbreak4iii),y4(round(interiorbreak4iii+1)),'ko','LineWidth',3,'MarkerSize',12);
 
h13=plot(t,y5,'color',[0.2 0.25 0.3],'LineWidth',3); hold on;
h14=plot(round(interiorbreak5i),y5(round(interiorbreak5i+1)),'ko','LineWidth',3,'MarkerSize',12);
h15=plot(round(interiorbreak5ii),y5(round(interiorbreak5ii+1)),'ko','LineWidth',3,'MarkerSize',12);
h16=plot(round(interiorbreak5iii),y5(round(interiorbreak5iii+1)),'ko','LineWidth',3,'MarkerSize',12);
 
h17=plot(t,y6,'color',[0.1 0.0 0.2],'LineWidth',3); hold on;
h18=plot(round(interiorbreak6),y6(round(interiorbreak6+1)),'ko','LineWidth',3,'MarkerSize',12);
h19=plot(round(interiorbreak6i),y6(round(interiorbreak6i+1)),'ko','LineWidth',3,'MarkerSize',12);
h20=plot(round(interiorbreak6ii),y6(round(interiorbreak6ii+1)),'ko','LineWidth',3,'MarkerSize',12);
 
set(gca,'color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
pbaspect([1 1 1]); box on; ylim([-2 1]);xlim([-4 77]);
xlabel('Time (hrs)'); ylabel('log(OD_{600})'); title ('TBR1 R2_{RESUSP.}');  
legend([h1 h3 h5 h9 h13 h17],{'0','50','100','125','150 \mug/ml FLC'},'Location','northeastoutside','EdgeColor','none');
 
 
interiorbreak1
 
interiorbreak2ii
 
 
interiorbreak3ii
interiorbreak3i
interiorbreak3iii
 
interiorbreak4iii
interiorbreak4ii
interiorbreak4
 
interiorbreak5iii
interiorbreak5i
interiorbreak5ii
 
interiorbreak6ii
interiorbreak6iii
interiorbreak6i
 
%% slopes and durations of all growth phases
% concentration 00
slopeat001=(y1(round(interiorbreak1+1))-y1(1))/interiorbreak1
durationat001=interiorbreak1
 
slopeat002=(y1(end)-y1(round(interiorbreak1+1)))/(t(end)-interiorbreak1)
durationat002=t(end)-interiorbreak1
 
% concentration 02
slopeat021=(y2(round(interiorbreak2ii+1))-y2(1))/interiorbreak2ii
durationat021=interiorbreak2ii
 
slopeat022=(y2(end)-y2(round(interiorbreak2ii+1)))/(t(end)-interiorbreak2ii)
durationat022=t(end)-interiorbreak2ii
 
% concentration 04
slopeat041=(y3(round(interiorbreak3ii+1))-y3(1))/interiorbreak3ii
durationat041=interiorbreak3ii
 
slopeat042=(y3(round(interiorbreak3i+1))-y3(round(interiorbreak3ii+1)))/(interiorbreak3i-interiorbreak3ii)
durationat042=interiorbreak3i-interiorbreak3ii
 
slopeat043=(y3(round(interiorbreak3iii+1))-y3(round(interiorbreak3i+1)))/(interiorbreak3iii-interiorbreak3i)
durationat043=interiorbreak3iii-interiorbreak3i
 
slopeat044=(y3(end)-y3(round(interiorbreak3iii+1)))/(t(end)-interiorbreak3iii)
durationat044=t(end)-interiorbreak3iii
 
% concentration 06
slopeat061=(y4(round(interiorbreak4iii+1))-y4(1))/interiorbreak4iii
durationat061=interiorbreak4iii
 
slopeat062=(y4(round(interiorbreak4ii+1))-y4(round(interiorbreak4iii+1)))/(interiorbreak4ii-interiorbreak4iii)
durationat062=interiorbreak4ii-interiorbreak4iii
 
slopeat063=(y4(round(interiorbreak4+1))-y4(round(interiorbreak4ii+1)))/(interiorbreak4-interiorbreak4ii)
durationat063=interiorbreak4-interiorbreak4ii
 
slopeat064=(y4(end)-y4(round(interiorbreak4+1)))/(t(end)-interiorbreak4)
durationat064=t(end)-interiorbreak4
 
% concentration 08
slopeat081=(y5(round(interiorbreak5iii+1))-y5(1))/interiorbreak5iii
durationat081=interiorbreak5iii
 
slopeat082=(y5(round(interiorbreak5i+1))-y5(round(interiorbreak5iii+1)))/(interiorbreak5i-interiorbreak5iii)
durationat082=interiorbreak5i-interiorbreak5iii
 
slopeat083=(y5(round(interiorbreak5ii+1))-y5(round(interiorbreak5i+1)))/(interiorbreak5ii-interiorbreak5i)
durationat083=interiorbreak5ii-interiorbreak5i
 
slopeat084=(y5(end)-y5(round(interiorbreak5ii+1)))/(t(end)-interiorbreak5ii)
durationat084=t(end)-interiorbreak5ii
 
% concentration 10
slopeat101=(y6(round(interiorbreak6ii+1))-y6(1))/interiorbreak6ii
durationat101=interiorbreak6ii
 
slopeat102=(y6(round(interiorbreak6iii+1))-y6(round(interiorbreak6ii+1)))/(interiorbreak6iii-interiorbreak6ii)
durationat102=interiorbreak6iii-interiorbreak6ii
 
slopeat103=(y6(round(interiorbreak6i+1))-y6(round(interiorbreak6iii+1)))/(interiorbreak6i-interiorbreak6iii)
durationat103=interiorbreak6i-interiorbreak6iii
 
slopeat104=(y6(end)-y6(round(interiorbreak6i+1)))/(t(end)-interiorbreak6i)
durationat104=t(end)-interiorbreak6i
 
%% 
durationat001 
durationat021 
durationat041 
durationat061 
durationat081 
durationat101
 
0 
0 
durationat042 
durationat062 
durationat082 
durationat102
 
0 
0
durationat043 
durationat063 
durationat083 
durationat103
 
durationat002 
durationat022 
durationat044 
durationat064 
durationat084 
durationat104
 
%%
slopeat001 
slopeat021 
slopeat041 
slopeat061 
slopeat081 
slopeat101
 
0 
0 
slopeat042 
slopeat062 
slopeat082 
slopeat102
 
0 
0 
slopeat043 
slopeat063 
slopeat083 
slopeat103
 
slopeat002 
slopeat022 
slopeat044 
slopeat064 
slopeat084 
slopeat104
 
%%
figure(14);
subplot(2,2,1);
 
E = [0 0.2 0.4 0.6 0.8 1];
dur1 = [durationat001 durationat021 durationat041 durationat061 durationat081 durationat101];
 
hb1 = bar(E,dur1,'FaceColor','flat','EdgeColor','k','LineWidth',3);
 
hb1.CData(1,:) = [0.75 1.0 1.0];
hb1.CData(2,:) = [0.5 0.8 0.8];
hb1.CData(3,:) = [0.4 0.75 0.6];
hb1.CData(4,:) = [0.3 0.5 0.4];
hb1.CData(5,:) = [0.2 0.25 0.3];
hb1.CData(6,:) = [0.1 0.0 0.2];
 
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
pbaspect([2 1 1]); ylim([0 25]); xlim ([-0.2 1.2]);
ylabel('D1 (hrs)'); 
 
hold off
 
subplot(2,2,2);
 
dur2 = [0 0 durationat042 durationat062 durationat082 durationat102];
 
hb2 = bar(E,dur2,'FaceColor','flat','EdgeColor','k','LineWidth',3);
 
hb2.CData(1,:) = [0.75 1.0 1.0];
hb2.CData(2,:) = [0.5 0.8 0.8];
hb2.CData(3,:) = [0.4 0.75 0.6];
hb2.CData(4,:) = [0.3 0.5 0.4];
hb2.CData(5,:) = [0.2 0.25 0.3];
hb2.CData(6,:) = [0.1 0.0 0.2];
 
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
pbaspect([2 1 1]); ylim([0 25]); xlim ([-0.2 1.2]);
ylabel('D2 (hrs)'); 
 
subplot(2,2,3);
 
dur2 = [0 0 durationat043 durationat063 durationat083 durationat103];
 
hb3 = bar(E,dur2,'FaceColor','flat','EdgeColor','k','LineWidth',3);
 
hb3.CData(1,:) = [0.75 1.0 1.0];
hb3.CData(2,:) = [0.5 0.8 0.8];
hb3.CData(3,:) = [0.4 0.75 0.6];
hb3.CData(4,:) = [0.3 0.5 0.4];
hb3.CData(5,:) = [0.2 0.25 0.3];
hb3.CData(6,:) = [0.1 0.0 0.2];
 
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
pbaspect([2 1 1]); ylim([0 25]); xlim ([-0.2 1.2]);
ylabel('D3 (hrs)'); 
 
hold off
 
subplot(2,2,4);
 
dur2 = [durationat002 durationat022 durationat044 durationat064 durationat084 durationat104];
 
hb4 = bar(E,dur2,'FaceColor','flat','EdgeColor','k','LineWidth',3);
 
hb4.CData(1,:) = [0.75 1.0 1.0];
hb4.CData(2,:) = [0.5 0.8 0.8];
hb4.CData(3,:) = [0.4 0.75 0.6];
hb4.CData(4,:) = [0.3 0.5 0.4];
hb4.CData(5,:) = [0.2 0.25 0.3];
hb4.CData(6,:) = [0.1 0.0 0.2];
 
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
pbaspect([2 1 1]); ylim([0 75]); xlim ([-0.2 1.2]);
ylabel('D4 (hrs)'); 
 
hold off
%%
figure(15);
subplot(2,2,1);
 
E = [0 0.2 0.4 0.6 0.8 1];
dur5 = [slopeat001 slopeat021 slopeat041 slopeat061 slopeat081 slopeat101];
 
hb5 = bar(E,dur5,'FaceColor','flat','EdgeColor','k','LineWidth',3);
 
hb5.CData(1,:) = [0.75 1.0 1.0];
hb5.CData(2,:) = [0.5 0.8 0.8];
hb5.CData(3,:) = [0.4 0.75 0.6];
hb5.CData(4,:) = [0.3 0.5 0.4];
hb5.CData(5,:) = [0.2 0.25 0.3];
hb5.CData(6,:) = [0.1 0.0 0.2];
 
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
pbaspect([2 1 1]); ylim([0 0.2]); xlim ([-0.2 1.2]);
ylabel('S1'); 
 
hold off
 
subplot(2,2,2);
 
dur6 = [0 0 slopeat042 slopeat062 slopeat082 slopeat102];
 
hb6 = bar(E,dur6,'FaceColor','flat','EdgeColor','k','LineWidth',3);
 
hb6.CData(1,:) = [0.75 1.0 1.0];
hb6.CData(2,:) = [0.5 0.8 0.8];
hb6.CData(3,:) = [0.4 0.75 0.6];
hb6.CData(4,:) = [0.3 0.5 0.4];
hb6.CData(5,:) = [0.2 0.25 0.3];
hb6.CData(6,:) = [0.1 0.0 0.2];
 
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
pbaspect([2 1 1]); ylim([0 0.025]); xlim ([-0.2 1.2]);
ylabel('S2'); 
 
subplot(2,2,3);
 
dur7 = [0 0 slopeat043 slopeat063 slopeat083 slopeat103];
 
hb7 = bar(E,dur7,'FaceColor','flat','EdgeColor','k','LineWidth',3);
 
hb7.CData(1,:) = [0.75 1.0 1.0];
hb7.CData(2,:) = [0.5 0.8 0.8];
hb7.CData(3,:) = [0.4 0.75 0.6];
hb7.CData(4,:) = [0.3 0.5 0.4];
hb7.CData(5,:) = [0.2 0.25 0.3];
hb7.CData(6,:) = [0.1 0.0 0.2];
 
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
pbaspect([2 1 1]); ylim([-0.002 0.05]); xlim ([-0.2 1.2]);
ylabel('S3'); 
 
hold off
 
subplot(2,2,4);
 
dur8 = [slopeat002 slopeat022 slopeat044 slopeat064 slopeat084 slopeat104];
 
hb8 = bar(E,dur8,'FaceColor','flat','EdgeColor','k','LineWidth',3);
 
hb8.CData(1,:) = [0.75 1.0 1.0];
hb8.CData(2,:) = [0.5 0.8 0.8];
hb8.CData(3,:) = [0.4 0.75 0.6];
hb8.CData(4,:) = [0.3 0.5 0.4];
hb8.CData(5,:) = [0.2 0.25 0.3];
hb8.CData(6,:) = [0.1 0.0 0.2];
 
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
pbaspect([2 1 1]); ylim([-0.01 0.01]); xlim ([-0.2 1.2]);
ylabel('S4'); 
 
hold off
%%
figure(16);
subplot(2,2,1);
hold on
Y = [0 0 interiorbreak1;
    0  0 interiorbreak2ii;
    interiorbreak3ii interiorbreak3i interiorbreak3iii;
    interiorbreak4iii interiorbreak4ii interiorbreak4;
    interiorbreak5iii interiorbreak5i interiorbreak5ii;
    interiorbreak6ii interiorbreak6iii interiorbreak6i];
 
ba=bar(Y,'stacked','FaceColor','flat','LineWidth',3);
 
XTickLabel={'a','b','c','d','e','f'};
XTick=[1:6];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
set(gca, 'XTickLabelRotation', 45); 
 
ba(1).CData = [0.0 0.2 0.4];
ba(2).CData = [0.0 0.4 0.6];
ba(3).CData = [0.0 0.6 0.8];
 
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'0','0.2','0.4','0.6','0.8','1'}); box on;
legend('B1','B2','B3','Location','northeastoutside','EdgeColor','none'); ylabel('Break Time (hrs)'); ylim([0 100]);
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
