%% TEMPLATE FOR SLOPES AND DURATIONS BAR PLOTS (Figures 3c-i; 4c-h,j; 5e-f)
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
avgm = [0	0.0045	-0.004633333	0.020633333	0.004433333	-0.002786384]; % apply AVERAGE (MEAN) values
errhigh1 = [0	0.007794229	0.002967041	0.023744543	0.006506407	0.001293752]; % apply SD slope values
errlow1 = [0	0.007794229	0.002967041	0.023744543	0.006506407	0.001293752]; % apply SD slope values

bar(s2,avgm);
hb4=bar(avgm);

set(hb4,'FaceColor','flat','EdgeColor','k','LineWidth',3);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k',...
   'ycolor','k','XTickLabel',{'0','50','75','100','125','150'}); %apply corresponding x-tick label (i.e., drug concentrations)

ylabel('T_{PREGR} (hrs)'); % apply corresponding label
% ylabel('T_{ADAPT} (hrs)'); % apply corresponding label
% ylabel('T_{REGR} (hrs)'); % apply corresponding label
% ylabel('T_{STAT} (hrs)'); % apply corresponding label

pbaspect([2 1 1]); box on; ylim([-0.007 0.007]); %apply corresponding limits

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
                        
hold off

subplot(1,2,2);

indm = [0	0.0135	-0.008	0.0136	0.0111	-0.003659153
0	0	-0.0024	0.0471	0.0041	-0.0013
0	0	-0.0035	0.0012	-0.0019	-0.0034];
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

hold off