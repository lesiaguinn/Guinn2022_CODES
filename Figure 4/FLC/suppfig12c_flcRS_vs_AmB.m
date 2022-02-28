clc; close all;

%% MEAN S1 AND D3, TBR1 AmB and FLCresusp. compared

% x coordinates
% AmB
j1=0.857142857142857;
j2=j1+1;
j3=j1+2;
j4=j1+3;
j5=j1+4;
j6=j1+5;
% FLC 
j7=1.142857142857143;
j8=j7+1;
j9=j7+2;
j10=j7+3;
j11=j7+4;
j12=j7+5;

i1	=	[	0.1937	0.1874	0.1746	];
i2	=	[	0.1708	0.1519	0.1548	];
i3	=	[	0.1418	0.145	0.1452	];
i4	=	[	0.1251	0.1131	0.1023	];
i5	=	[	0.0972	0.0897	0.0851	];
i6	=	[	0.0793	0.0989	0.0556	];
i7	=	[	0.1633	0.1471	0.1699	];
i8	=	[	0.0797	0.1277	0.0938	];
i9	=	[	0.0797	0.082	0.0851	];
i10	=	[	0.0698	0.0793	0.0752	];
i11	=	[	0.0664	0.06	0.0606	];
i12	=	[	0.03	0.0363	0.0386	];

p1mean = [0.185233333 0.1601; 
    0.159166667 0.1004; 
    0.144 0.082266667; 
    0.1135 0.074766667; 
    0.090666667 0.062333333; 
    0.077933333 0.034966667];
p1sd = [0.009732591 0.011732008; 
    0.010178572 0.024671238; 
    0.001907878 0.002709859; 
    0.011405262 0.004764801; 
    0.006107645 0.003534591; 
    0.021682328 0.00445234];

p2mean = [5.2723 6.8198;
    10.1448 10.7548];   
p2sd = [2.758564313 2.070498826;	
    0.773854482 1.888161442];

figure(1);
subplot(2,1,1);

hb1 = bar(p1mean,1);

xBar=cell2mat(get(hb1,'XData')).' + [hb1.XOffset];  
hold on
hE1=errorbar(xBar,p1mean,p1sd,'k.','Linewidth',3);

XTickLabel={'0/0','0.2/50','0.4/75','0.6/100','0.8/125','1/150'};
XTick=[1:6];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
set(gca, 'XTickLabelRotation', 45); 

set(hb1,'EdgeColor','k','LineWidth',3);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k',...
   'ycolor','k'); ylabel('Mean S1');
legend('AmB','FLC_{RESUSP.}','EdgeColor','none','location','northeastoutside');
pbaspect([2 1 1]); xlim([0 7]); ylim([0 0.25]);

hb1(1).FaceColor = [0.2 0.6 0.6];
hb1(2).FaceColor = [1 1 1];

hold on;
plot(	j1	,	i1	,'o','MarkerSize',8,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j2	,	i2	,'o','MarkerSize',8,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j3	,	i3	,'o','MarkerSize',8,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j4	,	i4	,'o','MarkerSize',8,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j5	,	i5	,'o','MarkerSize',8,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j6	,	i6	,'o','MarkerSize',8,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j7	,	i7	,'o','MarkerSize',8,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j8	,	i8	,'o','MarkerSize',8,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j9	,	i9	,'o','MarkerSize',8,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j10	,	i10	,'o','MarkerSize',8,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j11	,	i11	,'o','MarkerSize',8,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j12	,	i12	,'o','MarkerSize',8,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
hold on;uistack(hE1,'top');

hold off;

subplot(2,1,2);

%xcoordinates
d1=0.857142857142857;
d2=1.142857142857143;
d3=d1+1;
d4=d2+1;

dd1=[2.2776	7.7096	5.8297];
dd2=[7.4403	4.51	8.5091];
dd3=[10.0642	10.9558	9.4144];
dd4=[12.8127	9.1022	10.3495];

hb2 = bar(p2mean,1);

xBar=cell2mat(get(hb2,'XData')).' + [hb2.XOffset];  
hold on
hE2=errorbar(xBar,p2mean,p2sd,'k.','Linewidth',3);

XTickLabel={'0.6/100','0.8/125'};
XTick=[1:2];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
set(gca, 'XTickLabelRotation', 45); 

set(hb2,'EdgeColor','k','LineWidth',3);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k',...
   'ycolor','k'); ylabel('Mean D3');
legend('AmB','FLC_{RESUSP.}','EdgeColor','none','location','northeastoutside');
pbaspect([2 1 1]); ylim([0 20]); xlim([0 3]);

hb2(1).FaceColor = [0.2 0.6 0.6];
hb2(2).FaceColor = [1 1 1];

hold on;
plot(	d1	,	dd1	,'o','MarkerSize',8,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	d2	,	dd2	,'o','MarkerSize',8,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	d3	,	dd3	,'o','MarkerSize',8,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	d4	,	dd4	,'o','MarkerSize',8,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
hold on;uistack(hE2,'top');

hold off