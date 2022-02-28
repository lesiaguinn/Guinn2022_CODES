clc; close all;

[num,txt,raw]=xlsread('evotopsizes.xlsx','allstrains');

s00=num(1:4128,3); %tbr1delta
s02=num(1:4128,2); %evotop
s04=num(1:4128,1); %tbr1
s06=num(1:4128,4); %yph500
s08=num(1:4128,5); %kv38
s09=num(1:4128,6); %by
s10=num(1:4128,7); %by-delta
% s10=num(2:3075,20);

C = [s00, s02, s04, s09, s10, s06, s08];
%%
figure(1);
% boxplot([s00 s03 s06 s09 s12 s15],'PlotStyle','compact','Notch','off','Labels',{'0', '0.3', '0.6', '0.9', '1.2', '1.5'},'Whisker',7);
b=boxplot(C,'boxstyle','outline','widths',0.8,'Notch','off','Labels',{'TBR1','TBR1 "EvoTop"','TBR1\Deltaa','BY4742','BY4742\Deltaa','YPH500','KV38'},'Whisker',3);

set(b,{'linew'},{3});

lines = findobj(gcf,'type','line','Tag','Median');
set(lines,'Color','k');

set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k');
pbaspect([1 1 1]); box on; ylim([0 20]);
% title('\it{Candida glabrata} BG2'); 
ylabel('Clump Size (\mum)'); %xlabel('AmB (\mug/ml)');
xtickangle(45);

color = [([0.25 1.0 1.0]); ([0.35 1.0 1.0]); ([0.45 1.0 1.0]); ([0.45 1.0 1.0]); ([0.45 1.0 1.0]); ([0.55 1.0 1.0]); ([0.65 1.0 1.0]); ([0.75 1.0 1.0])]; 
h = findobj(gca,'Tag','Box'); 
for j=1:length(h) 
patch(get(h(j),'XData'),get(h(j),'YData'),color(j),'FaceAlpha',.5);
end 

hold off

%% stats
% [h,p] = ttest2(s10,s08) 