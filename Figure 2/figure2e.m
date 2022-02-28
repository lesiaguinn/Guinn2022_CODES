clc; close all;

aucdatam = [157.6387489	135.5973526	95.2665855	56.57177172	35.64710981	23.7679358	0	0	167.3898619	73.57554983	-7.178875636	-14.27596267	-19.85164506	-7.319769215
165.560088	161.1173606	158.0768945	152.8268094	135.9986296	122.6768843	0	0	162.7379916	153.680546	144.3913212	137.2287536	123.7371769	100.5399266
140.0407	104.3045924	74.18829784	87.39181809	68.52628456	75.86496404	0	0	171.8727756	54.33627921	13.28815599	12.22835094	15.58320449	13.9554504
139.5084097	134.3184375	138.3631108	135.3824581	138.9518784	133.5055638	0	0	160.200831	146.9968082	129.63052	135.8145193	139.6605066	130.3815595];
  
aucdatasd = [0.958467864	2.199557149	4.475269476	12.30998519	7.438321137	8.050218289	0	0	0.600248943	5.80719224	6.187228243	8.067704444	9.594564243	4.494108019
1.802522875	1.607601609	4.854586497	2.395004398	2.882217482	6.469597326	0	0	0.765568748	5.105733392	3.432682084	4.585874211	8.162634872	5.141446586
8.220089058	11.24258198	3.268385439	34.41974538	3.664561978	6.090495592	0	0	1.851220257	23.10460976	0.432140034	2.923738621	1.219164041	3.828789107
1.943824576	5.03719214	1.965580429	1.222287653	1.327113497	2.886501775	0	0	8.675472808	2.165772144	2.328050023	1.81327549	4.085011617	5.195606817];

[num,txt,raw]=xlsread('DecFits_export_fitdataNEW.xlsx','AUC_dataNEWNEW');

i1	=	num(	2:4,	1	);
i2	=	num(	2:4,	2	);
i3	=	num(	2:4,	3	);
i4	=	num(	2:4,	4	);
i5	=	num(	2:4,	5	);
i6	=	num(	2:4,	6	);
i7	=	num(	7:9,	1	);
i8	=	num(	7:9,	2	);
i9	=	num(	7:9,	3	);
i10	=	num(	7:9,	4	);
i11	=	num(	7:9,	5	);
i12	=	num(	7:9,	6	);
i13	=	num(	2:4,	9	);
i14	=	num(	2:4,	10	);
i15	=	num(	2:4,	11	);
i16	=	num(	2:4,	12	);
i17	=	num(	2:4,	13	);
i18	=	num(	2:4,	14	);
i19	=	num(	7:9,	9	);
i20	=	num(	7:9,	10	);
i21	=	num(	7:9,	11	);
i22	=	num(	7:9,	12	);
i23	=	num(	7:9,	13	);
i24	=	num(	7:9,	14	);
i25	=	num(	2:4,	17	);
i26	=	num(	2:4,	18	);
i27	=	num(	2:4,	19	);
i28	=	num(	2:4,	20	);
i29	=	num(	2:4,	21	);
i30	=	num(	2:4,	22	);
i31	=	num(	7:9,	17	);
i32	=	num(	7:9,	18	);
i33	=	num(	7:9,	19	);
i34	=	num(	7:9,	20	);
i35	=	num(	7:9,	21	);
i36	=	num(	7:9,	22	);
i37	=	num(	2:4,	25	);
i38	=	num(	2:4,	26	);
i39	=	num(	2:4,	27	);
i40	=	num(	2:4,	28	);
i41	=	num(	2:4,	29	);
i42	=	num(	2:4,	30	);
i43	=	num(	7:9,	25	);
i44	=	num(	7:9,	26	);
i45	=	num(	7:9,	27	);
i46	=	num(	7:9,	28	);
i47	=	num(	7:9,	29	);
i48	=	num(	7:9,	30	);


%% leave ON
% x coordinates
j1=0.628571428571429;
j2=0.685714285714286;
j3=0.742857142857143;
j4=0.8;
j5=0.857142857142857;
j6=0.914285714285714;
j7=1.085714285714286;
j8=1.142857142857143;
j9=1.2;
j10=1.257142857142857;
j11=1.314285714285714;
j12=1.371428571428571;

j13=j1+1;
j14=j2+1;
j15=j3+1;
j16=j4+1;
j17=j5+1;
j18=j6+1;
j19=j7+1;
j20=j8+1;
j21=j9+1;
j22=j10+1;
j23=j11+1;
j24=j12+1;

j25	=	j1	+	2	;
j26	=	j2	+	2	;
j27	=	j3	+	2	;
j28	=	j4	+	2	;
j29	=	j5	+	2	;
j30	=	j6	+	2	;
j31	=	j7	+	2	;
j32	=	j8	+	2	;
j33	=	j9	+	2	;
j34	=	j10	+	2	;
j35	=	j11	+	2	;
j36	=	j12	+	2	;
					
j37	=	j1	+	3	;
j38	=	j2	+	3	;
j39	=	j3	+	3	;
j40	=	j4	+	3	;
j41	=	j5	+	3	;
j42	=	j6	+	3	;
j43	=	j7	+	3	;
j44	=	j8	+	3	;
j45	=	j9	+	3	;
j46	=	j10	+	3	;
j47	=	j11	+	3	;
j48	=	j12	+	3	;

%%
figure(1);

hb3 = bar(aucdatam,1);
% hb3 = bar(aucmodelm,1);

xBar=cell2mat(get(hb3,'XData')).' + [hb3.XOffset];  
hold on
hE3=errorbar(xBar,aucdatam,aucdatasd,'k.','Linewidth',3);
% hE3=errorbar(xBar,aucmodelm,aucmodelsd,'k.','Linewidth',3);

XTickLabel={'a','b','c','d'};
XTick=[1:4];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
set(gca, 'XTickLabelRotation', 0); 

set(hb3,'FaceColor','flat','EdgeColor','k','LineWidth',3);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'H_{2}O_{2}','AmB','CASP','FLC'}); 
pbaspect([6 2 1]); ylim([-50 200]); xlim([0 5]); box on;

hb3(1).FaceColor = [0.75 1.0 1.0];
hb3(2).FaceColor = [0.5 0.8 0.8];
hb3(3).FaceColor = [0.4 0.75 0.6];
hb3(4).FaceColor = [0.3 0.5 0.4];
hb3(5).FaceColor = [0.2 0.25 0.3];
hb3(6).FaceColor = [0.1 0.0 0.2]; 

hb3(9).FaceColor = [1.0 1.0 0.6];
hb3(10).FaceColor = [1.0 1.0 0.2];
hb3(11).FaceColor = [1.0 0.8 0.2];
hb3(12).FaceColor = [1.0 0.4 0.2];
hb3(13).FaceColor = [0.7 0.2 0.0];
hb3(14).FaceColor = [0.6 0.0 0.0];  

hold on;
% 
plot(	j1	,	i1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j2	,	i2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j3	,	i3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j4	,	i4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j5	,	i5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j6	,	i6	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j7	,	i7	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j8	,	i8	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j9	,	i9	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j10	,	i10	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j11	,	i11	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j12	,	i12	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j13	,	i13	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j14	,	i14	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j15	,	i15	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j16	,	i16	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j17	,	i17	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j18	,	i18	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j19	,	i19	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j20	,	i20	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j21	,	i21	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j22	,	i22	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j23	,	i23	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j24	,	i24	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j25	,	i25	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j26	,	i26	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j27	,	i27	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j28	,	i28	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j29	,	i29	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j30	,	i30	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j31	,	i31	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j32	,	i32	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j33	,	i33	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j34	,	i34	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j35	,	i35	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j36	,	i36	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j37	,	i37	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j38	,	i38	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j39	,	i39	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j40	,	i40	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j41	,	i41	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j42	,	i42	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j43	,	i43	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j44	,	i44	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j45	,	i45	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j46	,	i46	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j47	,	i47	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j48	,	i48	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
 
 hold on;
uistack(hE3,'top');
 hold off;


