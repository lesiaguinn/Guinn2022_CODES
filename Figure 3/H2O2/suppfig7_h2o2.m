clc; close all;

%% MEANS TEMPLATE FOR TBR1 H2O2

% [num,txt,raw]=xlsread('h2o2_PARAMETERS.xlsx','PARAMETERS-deltaamn1');
% 
% s00=num(3:5:13,1); %0.00
% s02=num(3:5:13,2); %0.02
% s04=num(3:5:13,3); %0.04
% s06=num(3:5:13,4); %0.06
% s08=num(3:5:13,5); %0.08
% s10=num(3:5:13,6); %0.1
% 
% SLOPES = [s00, s02, s04, s06, s08, s10];
% 
% % d00=num(3:5:13,9); %0.00
% % d02=num(3:5:13,10); %0.02
% % d04=num(3:5:13,11); %0.04
% % d06=num(3:5:13,12); %0.06
% % d08=num(3:5:13,13); %0.08
% % d10=num(3:5:13,14); 
% 
% d00=num(2:4,32); %0.00
% d02=num(2:4,33); %0.02
% d04=num(2:4,34); %0.04
% d06=num(2:4,35); %0.06
% d08=num(2:4,36); %0.08
% d10=num(2:4,37); 
% 
% DURATIONS = [d00, d02, d04, d06, d08, d10];

%%
figure(1);

subplot(1,2,1);
hold on	

s2 = categorical({'a','b','c','d','e','f'});

meanslope2 = [0.79880904	0.668810439	0.642635733	0.593160609	0.510064203	0.552036765];

errhigh2 = [0.021364847	0.089671796	0.071488137	0.036216296	0.088965501	0.24694007];
errlow2 = errhigh2;

h2o2expslopem = [0.774152542	0.652204651	0.643816667	0.634703333	0.592365625	0.612966667
0.810430508	0.588602222	0.570564444	0.568233333	0.415671429	0.280335294
0.811844068	0.765624444	0.713526087	0.576545161	0.522155556	0.762808333];

h2o2expslopesd = [0 0 0 0 0 0;
    0 0 0 0 0 0;
    0 0 0 0 0 0];

bar(s2,meanslope2);

hb4=bar(meanslope2);

set(hb4,'FaceColor','flat','EdgeColor','k','LineWidth',3);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k',...
      'ycolor','k','XTickLabel',{'0','0.2','0.4','0.6','0.8','1'});

% ylabel('Mean D2');
ylabel('Mean STAT OD_{600}');
% xlabel('% H_{2}O_{2}');
xlabel('\mug/mL CASP');
% ylabel('Mean \DeltaOD_{600}_{\it exp}'); 
pbaspect([2 1 1]); box on; ylim([0 1.5]);
xtickangle(45);

hb4.CData(1,:) = [0.8 1.0 0.6];
hb4.CData(2,:) = [0.6 0.8 0.4];
hb4.CData(3,:) = [0.4 0.8 0.4];
hb4.CData(4,:) = [0.2 0.6 0.3];
hb4.CData(5,:) = [0.0 0.4 0.2];
hb4.CData(6,:) = [0.0 0.2 0.0];

% hb4.CData(1,:) = [1.0 0.8 0.8];
% hb4.CData(2,:) = [1.0 0.6 0.6];
% hb4.CData(3,:) = [1.0 0.2 0.6];
% hb4.CData(4,:) = [0.8 0.2 0.4];
% hb4.CData(5,:) = [0.6 0.2 0.4];
% hb4.CData(6,:) = [0.4 0.0 0.2];

er = errorbar(s2,meanslope2,errlow2,errhigh2,'k.','Linewidth',3);    
er.Color = [0 0 0];                            
er.LineStyle = 'none';

hold on;
plot(s2,h2o2expslopem,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.2 0.2 0.2],'LineWidth',1.5);
hold on; uistack(er,'top'); hold off;                       

subplot(1,2,2);

hb3 = bar(h2o2expslopem,1);

xBar=cell2mat(get(hb3,'XData')).' + [hb3.XOffset];  
hold on
hE3=errorbar(xBar,h2o2expslopem,h2o2expslopesd,'k.','Linewidth',3);

XTickLabel={'a','b','c'};
XTick=[1:3];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
set(gca, 'XTickLabelRotation', 0); 

set(hb3,'EdgeColor','k','LineWidth',3);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'R1','R2','R3'},'YTickLabel',''); 
% ylabel('Mean S2');
pbaspect([2 1 1]); ylim([0 1.5]);

hb4.CData(1,:) = [0.8 1.0 0.6];
hb4.CData(2,:) = [0.6 0.8 0.4];
hb4.CData(3,:) = [0.4 0.8 0.4];
hb4.CData(4,:) = [0.2 0.6 0.3];
hb4.CData(5,:) = [0.0 0.4 0.2];
hb4.CData(6,:) = [0.0 0.2 0.0];

% hb4.CData(1,:) = [1.0 0.8 0.8];
% hb4.CData(2,:) = [1.0 0.6 0.6];
% hb4.CData(3,:) = [1.0 0.2 0.6];
% hb4.CData(4,:) = [0.8 0.2 0.4];
% hb4.CData(5,:) = [0.6 0.2 0.4];
% hb4.CData(6,:) = [0.4 0.0 0.2];

hold off