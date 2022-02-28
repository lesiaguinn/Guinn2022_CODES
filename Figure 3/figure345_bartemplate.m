clc; close all; 
% TEMPLATE FOR SLOPES AND DURATIONS BAR PLOTS (Figures 3c-i; 4c-h,j; 5e-f)
%% Use the following documents for data in lines 16-18,80-82
% h2o2_PARAMETERS.xlsx
% amB_PARAMETERS.xlsx
% casp_PARAMETERS.xlsx
% flc_PARAMETERS.xlsx
% flcresusp_PARAMETERS.xlsx

%%
figure(1);

subplot(1,2,1);

hold on	
s2 = categorical({'a','b','c','d','e','f'});

indm = [7.1581	2.1323	1.2246	1.2628	1.2542	1.1617;
6.7671	0.9899	0.8696	1.0815	1.063	0.851;
6.7699	2.23281593	0.7604	0.7575	0.8255	1.0153];
avgm = [6.898366667	1.78500531	0.951533333	1.033933333	1.047566667	1.009333333]; % apply AVERAGE (MEAN) values
errhigh1 = [0.224940022	0.690413067	0.242703962	0.255986256	0.214766299	0.155435914]; % apply SD slope values
errlow1 = errhigh1; % apply SD slope values

bar(s2,avgm);
hb4=bar(avgm);

set(hb4,'FaceColor','flat','EdgeColor','k','LineWidth',3);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k',...
   'ycolor','k','XTickLabel',{'0','0.2','0.4','0.6','0.8','1'}); %apply corresponding x-tick label (i.e., drug concentrations)

% ylabel('S_{PREGR} (hrs^{-1})'); % apply corresponding label
% ylabel('T_{ADAPT} (hrs)'); % apply corresponding label
ylabel('T_{PREGR} (hrs)'); % apply corresponding label
% ylabel('T_{STAT} (hrs)'); % apply corresponding label

pbaspect([2 1 1]); box on; ylim([0 10]); %apply corresponding limits

xtickangle(45);

% apply the corresponding color scheme
hb4.CData(1,:) = [0.75 1.0 1.0]; % colors for TBR1
hb4.CData(2,:) = [0.5 0.8 0.8];
hb4.CData(3,:) = [0.4 0.75 0.6];
hb4.CData(4,:) = [0.3 0.5 0.4];
hb4.CData(5,:) = [0.2 0.25 0.3];
hb4.CData(6,:) = [0.1 0.0 0.2];

% hb4.CData(1,:) = [1.0 1.0 0.6]; % colors for TBR1dA
% hb4.CData(2,:) = [1.0 1.0 0.2];
% hb4.CData(3,:) = [1.0 0.8 0.2];
% hb4.CData(4,:) = [1.0 0.4 0.2];
% hb4.CData(5,:) = [0.7 0.2 0.0];
% hb4.CData(6,:) = [0.6 0.0 0.0];

% hb4.CData(1,:) = [0.6 0.2 1.0]; % colors for BY4742
% hb4.CData(2,:) = [0.55 0.1 0.75];
% hb4.CData(3,:) = [0.5 0.0 0.6];
% hb4.CData(4,:) = [0.35 0.0 0.45];
% hb4.CData(5,:) = [0.25 0.0 0.3];
% hb4.CData(6,:) = [0.15 0.0 0.15];

% hb4.CData(1,:) = [1.0 0.8 0.8]; % colors for BY4742dA
% hb4.CData(2,:) = [1.0 0.6 0.6];
% hb4.CData(3,:) = [1.0 0.2 0.6];
% hb4.CData(4,:) = [0.8 0.2 0.4];
% hb4.CData(5,:) = [0.6 0.2 0.4];
% hb4.CData(6,:) = [0.4 0.0 0.2];

% hb4.CData(1,:) = [0.8 1.0 0.6]; % colors for TBR1 "EvoTop"
% hb4.CData(2,:) = [0.6 0.8 0.4];
% hb4.CData(3,:) = [0.4 0.8 0.4];
% hb4.CData(4,:) = [0.2 0.6 0.3];
% hb4.CData(5,:) = [0.0 0.4 0.2];
% hb4.CData(6,:) = [0.0 0.2 0.0];

er = errorbar(s2,avgm,errlow1,errhigh1,'k.','Linewidth',3);    
er.Color = [0 0 0];                            
er.LineStyle = 'none';

hold on;
plot(s2,indm,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1); 
 hold on;					
uistack(er,'top');	

hold off

%% 
subplot(1,2,2);

indm = [0	0.0082	0.0048	0.0074	0.0126	0.0428
0	0.0082	0.0048	0.0074	0.0126	0.0428
0	0.0059	0.0057	0.0132	0.0191	0.0293];
indsd = [0 0 0 0 0 0;
    0 0 0 0 0 0;
    0 0 0 0 0 0];

hb3 = bar(indm,1);

xBar=cell2mat(get(hb3,'XData')).' + [hb3.XOffset];  
hold on
hE3=errorbar(xBar,indm,indsd,'k.','Linewidth',3);

XTickLabel={'a','b','c'};
XTick=[1:3];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
set(gca, 'XTickLabelRotation', 0); 

set(hb3,'EdgeColor','k','LineWidth',3);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'R1','R2','R3'}); 
pbaspect([2 1 1]); ylim([-0.007 0.007]);

% apply the corresponding color scheme
hb4.CData(1,:) = [0.75 1.0 1.0]; % colors for TBR1
hb4.CData(2,:) = [0.5 0.8 0.8];
hb4.CData(3,:) = [0.4 0.75 0.6];
hb4.CData(4,:) = [0.3 0.5 0.4];
hb4.CData(5,:) = [0.2 0.25 0.3];
hb4.CData(6,:) = [0.1 0.0 0.2];

hb4.CData(1,:) = [1.0 1.0 0.6]; % colors for TBR1dA
hb4.CData(2,:) = [1.0 1.0 0.2];
hb4.CData(3,:) = [1.0 0.8 0.2];
hb4.CData(4,:) = [1.0 0.4 0.2];
hb4.CData(5,:) = [0.7 0.2 0.0];
hb4.CData(6,:) = [0.6 0.0 0.0];

% hb4.CData(1,:) = [0.6 0.2 1.0]; % colors for BY4742
% hb4.CData(2,:) = [0.55 0.1 0.75];
% hb4.CData(3,:) = [0.5 0.0 0.6];
% hb4.CData(4,:) = [0.35 0.0 0.45];
% hb4.CData(5,:) = [0.25 0.0 0.3];
% hb4.CData(6,:) = [0.15 0.0 0.15];

% hb4.CData(1,:) = [1.0 0.8 0.8]; % colors for BY4742dA
% hb4.CData(2,:) = [1.0 0.6 0.6];
% hb4.CData(3,:) = [1.0 0.2 0.6];
% hb4.CData(4,:) = [0.8 0.2 0.4];
% hb4.CData(5,:) = [0.6 0.2 0.4];
% hb4.CData(6,:) = [0.4 0.0 0.2];
% 
% hb4.CData(1,:) = [0.8 1.0 0.6]; % colors for TBR1 "EvoTop"
% hb4.CData(2,:) = [0.6 0.8 0.4];
% hb4.CData(3,:) = [0.4 0.8 0.4];
% hb4.CData(4,:) = [0.2 0.6 0.3];
% hb4.CData(5,:) = [0.0 0.4 0.2];
% hb4.CData(6,:) = [0.0 0.2 0.0];

hold off