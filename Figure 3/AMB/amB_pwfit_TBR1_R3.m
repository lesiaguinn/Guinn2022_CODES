% Developed on: April 23, 2020
% Description:
% This script performs piecewise exponential growth curve fitting
 
clearvars; close all;
 
[num,txt,raw]=xlsread('Lesia2020_amb.xlsx','tbr1replicates'); %Sheet 'amb' with means ONLY
 
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
 
t1i=t(1:(interiorbreak1-7));
y1i=y1(1:(interiorbreak1-7));
dt = max(t1i) - min(t1i);
[interiorbreak1i,fval1i] = fminbnd(@(b2) breakfit(b2,t1i,y1i),min(t1i) + dt/100,max(t1i) - dt/100);
interiorbreak1i
 
figure(2);
plot(t,y1,'LineWidth',3); hold on;
plot(round(interiorbreak1i),y1(round(interiorbreak1i+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
%% concentration 0.02 
dt = max(t) - min(t);
[interiorbreak2,fval2] = fminbnd(@(b2) breakfit(b2,t,y2),min(t) + dt/100,max(t) - dt/100);
interiorbreak2
 
figure(3);
plot(t,y2,'LineWidth',3); hold on;
plot(round(interiorbreak2),y2(round(interiorbreak2+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
t2i=t(1:(interiorbreak2-8));
y2i=y2(1:(interiorbreak2-8));
dt = max(t2i) - min(t2i);
[interiorbreak2i,fval2i] = fminbnd(@(b2) breakfit(b2,t2i,y2i),min(t2i) + dt/100,max(t2i) - dt/100);
interiorbreak2i
 
figure(4);
plot(t,y2,'LineWidth',3); hold on;
plot(round(interiorbreak2i),y2(round(interiorbreak2i+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
%% concentration 0.04
dt = max(t) - min(t);
[interiorbreak3,fval3] = fminbnd(@(b2) breakfit(b2,t,y3),min(t) + dt/100,max(t) - dt/100);
interiorbreak3
 
figure(5);
plot(t,y3,'LineWidth',3); hold on;
plot(round(interiorbreak3),y3(round(interiorbreak3+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
t3i=t(1:(interiorbreak3-7));
y3i=y2(1:(interiorbreak3-7));
dt = max(t3i) - min(t3i);
[interiorbreak3i,fval3i] = fminbnd(@(b2) breakfit(b2,t3i,y3i),min(t3i) + dt/100,max(t3i) - dt/100);
interiorbreak3i
 
figure(6);
plot(t,y3,'LineWidth',3); hold on;
plot(round(interiorbreak3i),y3(round(interiorbreak3i+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
%% concentration 0.06
dt = max(t) - min(t);
[interiorbreak4,fval4] = fminbnd(@(b2) breakfit(b2,t,y4),min(t) + dt/100,max(t) - dt/100);
interiorbreak4
 
figure(7);
plot(t,y4,'LineWidth',3); hold on;
plot(round(interiorbreak4),y4(round(interiorbreak4+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
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
 
figure(8);
plot(t,y4,'LineWidth',3); hold on;
plot(round(interiorbreak4ii),y4(round(interiorbreak4ii+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
t4iii=t(1:interiorbreak4ii);
y4iii=y4(1:interiorbreak4ii);
dt = max(t4iii) - min(t4iii);
[interiorbreak4iii,fval4iii] = fminbnd(@(b2) breakfit(b2,t4iii,y4iii),min(t4iii) + dt/100,max(t4iii) - dt/100);
interiorbreak4iii
 
figure(9);
plot(t,y4,'LineWidth',3); hold on;
plot(round(interiorbreak4iii),y4(round(interiorbreak4iii+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
t4iv=t(interiorbreak4ii:interiorbreak4);
y4iv=y4(interiorbreak4ii:interiorbreak4);
dt = max(t4iv) - min(t4iv);
[interiorbreak4iv,fval4iv] = fminbnd(@(b2) breakfit(b2,t4iv,y4iv),min(t4iv) + dt/100,max(t4iv) - dt/100);
interiorbreak4iv
 
figure(10);
plot(t,y4,'LineWidth',3); hold on;
plot(round(interiorbreak4iv),y4(round(interiorbreak4iv+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
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
 
figure(11);
plot(t,y5,'LineWidth',3); hold on;
plot(round(interiorbreak5i),y5(round(interiorbreak5i+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
t5ii=t(1:interiorbreak5i);
y5ii=y5(1:interiorbreak5i);
dt = max(t5ii) - min(t5ii);
[interiorbreak5ii,fval5ii] = fminbnd(@(b2) breakfit(b2,t5ii,y5ii),min(t5ii) + dt/100,max(t5ii) - dt/100);
interiorbreak5ii
 
figure(12);
plot(t,y5,'LineWidth',3); hold on;
plot(round(interiorbreak5ii),y5(round(interiorbreak5ii+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
t5iii=t(1:interiorbreak5ii);
y5iii=y5(1:interiorbreak5ii);
dt = max(t5iii) - min(t5iii);
[interiorbreak5iii,fval5iii] = fminbnd(@(b2) breakfit(b2,t5iii,y5iii),min(t5iii) + dt/100,max(t5iii) - dt/100);
interiorbreak5iii
 
figure(13);
plot(t,y5,'LineWidth',3); hold on;
plot(round(interiorbreak5iii),y5(round(interiorbreak5iii+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
t5iv=t(interiorbreak5i:end);
y5iv=y5(interiorbreak5i:end);
dt = max(t5iv) - min(t5iv);
[interiorbreak5iv,fval5iv] = fminbnd(@(b2) breakfit(b2,t5iv,y5iv),min(t5iv) + dt/100,max(t5iv) - dt/100);
interiorbreak5iv
 
figure(14);
plot(t,y5,'LineWidth',3); hold on;
plot(round(interiorbreak5iv),y5(round(interiorbreak5iv+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
%% concentration 0.1
dt = max(t) - min(t);
[interiorbreak6,fval20] = fminbnd(@(b2) breakfit(b2,t,y6),min(t) + dt/100,max(t) - dt/100);
interiorbreak6
 
t6i=t(1:interiorbreak6);
y6i=y6(1:interiorbreak6);
dt = max(t6i) - min(t6i);
[interiorbreak6i,fval6i] = fminbnd(@(b2) breakfit(b2,t6i,y6i),min(t6i) + dt/100,max(t6i) - dt/100);
interiorbreak6i
 
figure(15);
plot(t,y6,'LineWidth',3); hold on;
plot(round(interiorbreak6i),y6(round(interiorbreak6i+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
t6ii=t(interiorbreak6i:interiorbreak6);
y6ii=y6(interiorbreak6i:interiorbreak6);
dt = max(t6ii) - min(t6ii);
[interiorbreak6ii,fval6ii] = fminbnd(@(b2) breakfit(b2,t6ii,y6ii),min(t6ii) + dt/100,max(t6ii) - dt/100);
interiorbreak6ii
 
figure(16);
plot(t,y6,'LineWidth',3); hold on;
plot(round(interiorbreak6ii),y6(round(interiorbreak6ii+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
t6iii=t(1:interiorbreak6i);
y6iii=y6(1:interiorbreak6i);
dt = max(t6iii) - min(t6iii);
[interiorbreak6iii,fval6iii] = fminbnd(@(b2) breakfit(b2,t6iii,y6iii),min(t6iii) + dt/100,max(t6iii) - dt/100);
interiorbreak6iii
 
figure(17);
plot(t,y6,'LineWidth',3); hold on;
plot(round(interiorbreak6iii),y6(round(interiorbreak6iii+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
 
t6iv=t(1:interiorbreak6iii);
y6iv=y6(1:interiorbreak6iii);
dt = max(t6iv) - min(t6iv);
[interiorbreak6iv,fval6iv] = fminbnd(@(b2) breakfit(b2,t6iv,y6iv),min(t6iv) + dt/100,max(t6iv) - dt/100);
interiorbreak6iv
 
figure(18);
plot(t,y6,'LineWidth',3); hold on;
plot(round(interiorbreak6iv),y6(round(interiorbreak6iv+1)),'ko','LineWidth',3,'MarkerSize',12);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');pbaspect([1 1 1]);box on;ylim([-2 1]);xlim([-5 77]);
xlabel('Time (hrs)');ylabel('log(OD_{600})');
%% plot the ultimate results
figure(19);
h1=plot(t,y1,'color',[0.75 1.0 1.0],'LineWidth',3); hold on;
h2=plot(round(interiorbreak1i),y1(round(interiorbreak1i+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
h3=plot(round(interiorbreak1),y1(round(interiorbreak1+1)),'ko','LineWidth',3,'MarkerSize',12); % 2
 
h4=plot(t,y2,'color',[0.5 0.8 0.8],'LineWidth',3); hold on;
h5=plot(round(interiorbreak2i),y2(round(interiorbreak2i+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
h6=plot(round(interiorbreak2),y2(round(interiorbreak2+1)),'ko','LineWidth',3,'MarkerSize',12); % 2
 
h7=plot(t,y3,'color',[0.4 0.75 0.6],'LineWidth',3); hold on;
h8=plot(round(interiorbreak3i),y3(round(interiorbreak3i+1)),'ko','LineWidth',3,'MarkerSize',12); % 1 
h9=plot(round(interiorbreak3),y3(round(interiorbreak3+1)),'ko','LineWidth',3,'MarkerSize',12); % 2
 
h10=plot(t,y4,'color',[0.3 0.5 0.4],'LineWidth',3); hold on;
h11=plot(round(interiorbreak4iii),y4(round(interiorbreak4iii+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
h12=plot(round(interiorbreak4ii),y4(round(interiorbreak4ii+1)),'ko','LineWidth',3,'MarkerSize',12); % 2
h13=plot(round(interiorbreak4iv),y4(round(interiorbreak4iv+1)),'ko','LineWidth',3,'MarkerSize',12); % 3
h14=plot(round(interiorbreak4),y4(round(interiorbreak4+1)),'ko','LineWidth',3,'MarkerSize',12); % 4
 
h15=plot(t,y5,'color',[0.2 0.25 0.3],'LineWidth',3); hold on;
h16=plot(round(interiorbreak5iii),y5(round(interiorbreak5iii+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
h17=plot(round(interiorbreak5ii),y5(round(interiorbreak5ii+1)),'ko','LineWidth',3,'MarkerSize',12); % 2
h18=plot(round(interiorbreak5i),y5(round(interiorbreak5i+1)),'ko','LineWidth',3,'MarkerSize',12); % 3
h19=plot(round(interiorbreak5iv),y5(round(interiorbreak5iv+1)),'ko','LineWidth',3,'MarkerSize',12); % 4
 
h20=plot(t,y6,'color',[0.1 0.0 0.2],'LineWidth',3); hold on;
h21=plot(round(interiorbreak6iv),y6(round(interiorbreak6iv+1)),'ko','LineWidth',3,'MarkerSize',12); % 1
h22=plot(round(interiorbreak6iii),y6(round(interiorbreak6iii+1)),'ko','LineWidth',3,'MarkerSize',12); % 2
h23=plot(round(interiorbreak6i),y6(round(interiorbreak6i+1)),'ko','LineWidth',3,'MarkerSize',12); % 3
h24=plot(round(interiorbreak6ii),y6(round(interiorbreak6ii+1)),'ko','LineWidth',3,'MarkerSize',12); % 4
 
set(gca,'color',[0.8 0.8 0.8],'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
pbaspect([1 1 1]); box on; ylim([-2 0.5]); xlim([-5 77]);
xlabel('Time (hrs)'); ylabel('log(OD_{600})'); title ('TBR1 R3');
legend([h1 h4 h7 h10 h15 h20],{'0','0.2','0.4','0.6','0.8','1 \mug/ml AmB'},'Location','northeastoutside','EdgeColor','none');
 
 
%% slopes and durations of all growth phases
% concentration 00
slopeat001=(y1(round(interiorbreak1i+1))-y1(1))/interiorbreak1i
durationat001=interiorbreak1i
 
slopeat002=(y1(round(interiorbreak1+1))-y1(round(interiorbreak1i+1)))/(interiorbreak1-interiorbreak1i)
durationat002=interiorbreak1-interiorbreak1i
 
slopeat003=(y1(end)-y1(round(interiorbreak1+1)))/(t(end)-interiorbreak1)
durationat003=t(end)-interiorbreak1
  
% % concentration 02
slopeat021=(y2(round(interiorbreak2i+1))-y2(1))/interiorbreak2i
durationat021=interiorbreak2i
 
slopeat022=(y2(round(interiorbreak2+1))-y2(round(interiorbreak2i+1)))/(interiorbreak2-interiorbreak2i)
durationat022=interiorbreak2-interiorbreak2i
 
slopeat023=(y2(end)-y2(round(interiorbreak2+1)))/(t(end)-interiorbreak2)
durationat023=t(end)-interiorbreak2
% %  
% % % concentration 04
slopeat041=(y3(round(interiorbreak3i+1))-y3(1))/interiorbreak3i
durationat041=interiorbreak3i
 
slopeat042=(y3(round(interiorbreak3+1))-y3(round(interiorbreak3i+1)))/(interiorbreak3-interiorbreak3i)
durationat042=interiorbreak3-interiorbreak3i
 
slopeat043=(y3(end)-y3(round(interiorbreak3+1)))/(t(end)-interiorbreak3)
durationat043=t(end)-interiorbreak3
% %  
% % % concentration 06
slopeat061=(y4(round(interiorbreak4iii+1))-y4(1))/interiorbreak4iii
durationat061=interiorbreak4iii
 
slopeat062=(y4(round(interiorbreak4ii+1))-y4(round(interiorbreak4iii+1)))/(interiorbreak4ii-interiorbreak4iii)
durationat062=interiorbreak4ii-interiorbreak4iii
 
slopeat063=(y4(round(interiorbreak4iv+1))-y4(round(interiorbreak4ii+1)))/(interiorbreak4iv-interiorbreak4ii)
durationat063=interiorbreak4iv-interiorbreak4ii
 
slopeat064=(y4(round(interiorbreak4+1))-y4(round(interiorbreak4iv+1)))/(interiorbreak4-interiorbreak4iv)
durationat064=interiorbreak4-interiorbreak4iv
 
slopeat065=(y4(end)-y4(round(interiorbreak4+1)))/(t(end)-interiorbreak4)
durationat065=t(end)-interiorbreak4
% %  
% % % concentration 08
slopeat081=(y5(round(interiorbreak5iii+1))-y5(1))/interiorbreak5iii
durationat081=interiorbreak5iii
 
slopeat082=(y5(round(interiorbreak5ii+1))-y5(round(interiorbreak5iii+1)))/(interiorbreak5ii-interiorbreak5iii);
durationat082=interiorbreak5ii-interiorbreak5iii
 
slopeat083=(y5(round(interiorbreak5i+1))-y5(round(interiorbreak5ii+1)))/(interiorbreak5i-interiorbreak5ii)
durationat083=interiorbreak5i-interiorbreak5ii
 
slopeat084=(y5(round(interiorbreak5iv+1))-y5(round(interiorbreak5i+1)))/(interiorbreak5iv-interiorbreak5i)
durationat084=interiorbreak5iv-interiorbreak5i
 
slopeat085=(y5(end)-y5(round(interiorbreak5iv+1)))/(t(end)-interiorbreak5iv)
durationat085=t(end)-interiorbreak5iv
% %  
% % % concentration 10
slopeat101=(y6(round(interiorbreak6iv+1))-y6(1))/interiorbreak6iv
durationat101=interiorbreak6iv
 
slopeat102=(y6(round(interiorbreak6iii+1))-y6(round(interiorbreak6iv+1)))/(interiorbreak6iii-interiorbreak6iv)
durationat102=interiorbreak6iii-interiorbreak6iv
 
slopeat103=(y6(round(interiorbreak6iii+1))-y6(round(interiorbreak6i+1)))/(interiorbreak6iii-interiorbreak6i)
durationat103=interiorbreak6iii-interiorbreak6i
 
slopeat104=(y6(round(interiorbreak6ii+1))-y6(round(interiorbreak6i+1)))/(interiorbreak6ii-interiorbreak6i)
durationat104=interiorbreak6ii-interiorbreak6i
 
slopeat105=(y6(end)-y6(round(interiorbreak6ii+1)))/(t(end)-interiorbreak6ii)
durationat105=t(end)-interiorbreak6ii
%  
slopeat001
slopeat002
slopeat003
slopeat021
slopeat022
slopeat023
slopeat041
slopeat042
slopeat043
slopeat061
slopeat062
slopeat063
slopeat064
slopeat065
slopeat081
slopeat082
slopeat083
slopeat084
slopeat085
slopeat101
slopeat102
slopeat103
slopeat104
slopeat105
 
durationat001
durationat002
durationat003
durationat021
durationat022
durationat023
durationat041
durationat042
durationat043
durationat061
durationat062
durationat063
durationat064
durationat065
durationat081
durationat082
durationat083
durationat084
durationat085
durationat101
durationat102
durationat103
durationat104
durationat105
% 
%break1
interiorbreak1i
interiorbreak2i
interiorbreak3i
interiorbreak4iii
interiorbreak5iii
interiorbreak6iv
 
%break2
0
0
0
interiorbreak4ii
interiorbreak5ii
interiorbreak6iii
 
%break3
0
0
0
interiorbreak4iv
interiorbreak5i
interiorbreak6i
 
%break4
interiorbreak1
interiorbreak2
interiorbreak3
interiorbreak4
interiorbreak5iv
interiorbreak6ii
% 
% %  
figure(20);
% subplot(2,2,1);
hold on
Y = [interiorbreak1i,0,0,interiorbreak1
    interiorbreak2i,0,0,interiorbreak2
    interiorbreak3i,0,0,interiorbreak3
    interiorbreak4iii,interiorbreak4ii,interiorbreak4iv,interiorbreak4
    interiorbreak5iii,interiorbreak5ii,interiorbreak5i,interiorbreak5iv
    interiorbreak6iv,interiorbreak6iii,interiorbreak6i,interiorbreak6ii];
 
ba=bar(Y,'stacked','FaceColor','flat','LineWidth',3);
 
XTickLabel={'a','b','c','d','e','f'};
XTick=[1:6];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
set(gca, 'XTickLabelRotation', 45); 
 
ba(1).CData = [0.0 0.0 0.2];
ba(2).CData = [0.0 0.2 0.4];
ba(3).CData = [0.0 0.4 0.6];
ba(4).CData = [0.0 0.6 0.8];
 
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'0','0.2','0.4','0.6','0.8','1'}); box on;
legend('B1','B2','B3','B4','Location','northwest','EdgeColor','none'); ylabel('Break Time (hrs)'); 
pbaspect([1 1 1]); ylim([0 100]);
 
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
