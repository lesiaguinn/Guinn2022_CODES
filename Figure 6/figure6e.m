clc; close all;

%% x coordinates
j1=0.692307692;		
j2=0.846153846;		
j3=1;		
j4=1.153846154;		
j5=1.307692308;		
j6=j1	+	1;
j7=j2	+	1;
j8=j3	+	1;
j9=j4	+	1;
j10=j5	+	1;
j11=j1	+	2;
j12=j2	+	2;
j13=j3	+	2;
j14=j4	+	2;
j15=j5	+	2;
j16=j1	+	3;
j17=j2	+	3;
j18=j3	+	3;
j19=j4	+	3;
j20=j5	+	3;
%%
[num,txt,raw]=xlsread('ALLparameters.xlsx','TBR1');

% q
h2o2qw1	=	num(	1	,1:3	);
h2o2qw2	=	num(	2	,1:3	);
h2o2qw3	=	num(	3	,1:3	);
h2o2qw4	=	num(	4	,1:3	);
h2o2qw5	=	num(	5	,1:3	);
ambqw1	=	num(	43	,1:3	);
ambqw2	=	num(	44	,1:3	);
ambqw3	=	num(	45	,1:3	);
ambqw4	=	num(	46	,1:3	);
ambqw5	=	num(	47	,1:3	);
caspqw1	=	num(	85	,1:3	);
caspqw2	=	num(	86	,1:3	);
caspqw3	=	num(	87	,1:3	);
caspqw4	=	num(	88	,1:3	);
caspqw5	=	num(	89	,1:3	);
flcqw1	=	num(	127	,1:3	);
flcqw2	=	num(	128	,1:3	);
flcqw3	=	num(	129	,1:3	);
flcqw4	=	num(	130	,1:3	);
flcqw5	=	num(	131	,1:3	);
% f						
h2o2fw1	=	num(	6	,1:3	);
h2o2fw2	=	num(	7	,1:3	);
h2o2fw3	=	num(	8	,1:3	);
h2o2fw4	=	num(	9	,1:3	);
h2o2fw5	=	num(	10	,1:3	);
ambfw1	=	num(	48	,1:3	);
ambfw2	=	num(	49	,1:3	);
ambfw3	=	num(	50	,1:3	);
ambfw4	=	num(	51	,1:3	);
ambfw5	=	num(	52	,1:3	);
caspfw1	=	num(	90	,1:3	);
caspfw2	=	num(	91	,1:3	);
caspfw3	=	num(	92	,1:3	);
caspfw4	=	num(	93	,1:3	);
caspfw5	=	num(	94	,1:3	);
flcfw1	=	num(	132	,1:3	);
flcfw2	=	num(	133	,1:3	);
flcfw3	=	num(	134	,1:3	);
flcfw4	=	num(	135	,1:3	);
flcfw5	=	num(	136	,1:3	);
% a						
h2o2aw1	=	num(	11	,1:3	);
h2o2aw2	=	num(	12	,1:3	);
h2o2aw3	=	num(	13	,1:3	);
h2o2aw4	=	num(	14	,1:3	);
h2o2aw5	=	num(	15	,1:3	);
ambaw1	=	num(	53	,1:3	);
ambaw2	=	num(	54	,1:3	);
ambaw3	=	num(	55	,1:3	);
ambaw4	=	num(	56	,1:3	);
ambaw5	=	num(	57	,1:3	);
caspaw1	=	num(	95	,1:3	);
caspaw2	=	num(	96	,1:3	);
caspaw3	=	num(	97	,1:3	);
caspaw4	=	num(	98	,1:3	);
caspaw5	=	num(	99	,1:3	);
flcaw1	=	num(	137	,1:3	);
flcaw2	=	num(	138	,1:3	);
flcaw3	=	num(	139	,1:3	);
flcaw4	=	num(	140	,1:3	);
flcaw5	=	num(	141	,1:3	);
% p						
h2o2pw1	=	num(	16	,1:3	);
h2o2pw2	=	num(	17	,1:3	);
h2o2pw3	=	num(	18	,1:3	);
h2o2pw4	=	num(	19	,1:3	);
h2o2pw5	=	num(	20	,1:3	);
ambpw1	=	num(	58	,1:3	);
ambpw2	=	num(	59	,1:3	);
ambpw3	=	num(	60	,1:3	);
ambpw4	=	num(	61	,1:3	);
ambpw5	=	num(	62	,1:3	);
casppw1	=	num(	100	,1:3	);
casppw2	=	num(	101	,1:3	);
casppw3	=	num(	102	,1:3	);
casppw4	=	num(	103	,1:3	);
casppw5	=	num(	104	,1:3	);
flcpw1	=	num(	142	,1:3	);
flcpw2	=	num(	143	,1:3	);
flcpw3	=	num(	144	,1:3	);
flcpw4	=	num(	145	,1:3	);
flcpw5	=	num(	146	,1:3	);
% r						
h2o2rw1	=	num(	21	,1:3	);
h2o2rw2	=	num(	22	,1:3	);
h2o2rw3	=	num(	23	,1:3	);
h2o2rw4	=	num(	24	,1:3	);
h2o2rw5	=	num(	25	,1:3	);
ambrw1	=	num(	63	,1:3	);
ambrw2	=	num(	64	,1:3	);
ambrw3	=	num(	65	,1:3	);
ambrw4	=	num(	66	,1:3	);
ambrw5	=	num(	67	,1:3	);
casprw1	=	num(	105	,1:3	);
casprw2	=	num(	106	,1:3	);
casprw3	=	num(	107	,1:3	);
casprw4	=	num(	108	,1:3	);
casprw5	=	num(	109	,1:3	);
flcrw1	=	num(	147	,1:3	);
flcrw2	=	num(	148	,1:3	);
flcrw3	=	num(	149	,1:3	);
flcrw4	=	num(	150	,1:3	);
flcrw5	=	num(	151	,1:3	);
% d						
h2o2dw1	=	num(	26	,1:3	);
h2o2dw2	=	num(	27	,1:3	);
h2o2dw3	=	num(	28	,1:3	);
h2o2dw4	=	num(	29	,1:3	);
h2o2dw5	=	num(	30	,1:3	);
ambdw1	=	num(	68	,1:3	);
ambdw2	=	num(	69	,1:3	);
ambdw3	=	num(	70	,1:3	);
ambdw4	=	num(	71	,1:3	);
ambdw5	=	num(	72	,1:3	);
caspdw1	=	num(	110	,1:3	);
caspdw2	=	num(	111	,1:3	);
caspdw3	=	num(	112	,1:3	);
caspdw4	=	num(	113	,1:3	);
caspdw5	=	num(	114	,1:3	);
flcdw1	=	num(	152	,1:3	);
flcdw2	=	num(	153	,1:3	);
flcdw3	=	num(	154	,1:3	);
flcdw4	=	num(	155	,1:3	);
flcdw5	=	num(	156	,1:3	);
% k						
h2o2kw1	=	num(	31	,1:3	);
h2o2kw2	=	num(	32	,1:3	);
h2o2kw3	=	num(	33	,1:3	);
h2o2kw4	=	num(	34	,1:3	);
h2o2kw5	=	num(	35	,1:3	);
ambkw1	=	num(	73	,1:3	);
ambkw2	=	num(	74	,1:3	);
ambkw3	=	num(	75	,1:3	);
ambkw4	=	num(	76	,1:3	);
ambkw5	=	num(	77	,1:3	);
caspkw1	=	num(	115	,1:3	);
caspkw2	=	num(	116	,1:3	);
caspkw3	=	num(	117	,1:3	);
caspkw4	=	num(	118	,1:3	);
caspkw5	=	num(	119	,1:3	);
flckw1	=	num(	157	,1:3	);
flckw2	=	num(	158	,1:3	);
flckw3	=	num(	159	,1:3	);
flckw4	=	num(	160	,1:3	);
flckw5	=	num(	161	,1:3	);
% b						
h2o2bw1	=	num(	36	,1:3	);
h2o2bw2	=	num(	37	,1:3	);
h2o2bw3	=	num(	38	,1:3	);
h2o2bw4	=	num(	39	,1:3	);
h2o2bw5	=	num(	40	,1:3	);
ambbw1	=	num(	78	,1:3	);
ambbw2	=	num(	79	,1:3	);
ambbw3	=	num(	80	,1:3	);
ambbw4	=	num(	81	,1:3	);
ambbw5	=	num(	82	,1:3	);
caspbw1	=	num(	120	,1:3	);
caspbw2	=	num(	121	,1:3	);
caspbw3	=	num(	122	,1:3	);
caspbw4	=	num(	123	,1:3	);
caspbw5	=	num(	124	,1:3	);
flcbw1	=	num(	162	,1:3	);
flcbw2	=	num(	163	,1:3	);
flcbw3	=	num(	164	,1:3	);
flcbw4	=	num(	165	,1:3	);
flcbw5	=	num(	166	,1:3	);

%wt
h2o2qm1	=	num(	1	,8:10	);
h2o2qm2	=	num(	2	,8:10	);
h2o2qm3	=	num(	3	,8:10	);
h2o2qm4	=	num(	4	,8:10	);
h2o2qm5	=	num(	5	,8:10	);
ambqm1	=	num(	43	,8:10	);
ambqm2	=	num(	44	,8:10	);
ambqm3	=	num(	45	,8:10	);
ambqm4	=	num(	46	,8:10	);
ambqm5	=	num(	47	,8:10	);
caspqm1	=	num(	85	,8:10	);
caspqm2	=	num(	86	,8:10	);
caspqm3	=	num(	87	,8:10	);
caspqm4	=	num(	88	,8:10	);
caspqm5	=	num(	89	,8:10	);
flcqm1	=	num(	127	,8:10	);
flcqm2	=	num(	128	,8:10	);
flcqm3	=	num(	129	,8:10	);
flcqm4	=	num(	130	,8:10	);
flcqm5	=	num(	131	,8:10	);
						
h2o2fm1	=	num(	6	,8:10	);
h2o2fm2	=	num(	7	,8:10	);
h2o2fm3	=	num(	8	,8:10	);
h2o2fm4	=	num(	9	,8:10	);
h2o2fm5	=	num(	10	,8:10	);
ambfm1	=	num(	48	,8:10	);
ambfm2	=	num(	49	,8:10	);
ambfm3	=	num(	50	,8:10	);
ambfm4	=	num(	51	,8:10	);
ambfm5	=	num(	52	,8:10	);
caspfm1	=	num(	90	,8:10	);
caspfm2	=	num(	91	,8:10	);
caspfm3	=	num(	92	,8:10	);
caspfm4	=	num(	93	,8:10	);
caspfm5	=	num(	94	,8:10	);
flcfm1	=	num(	132	,8:10	);
flcfm2	=	num(	133	,8:10	);
flcfm3	=	num(	134	,8:10	);
flcfm4	=	num(	135	,8:10	);
flcfm5	=	num(	136	,8:10	);
						
h2o2am1	=	num(	11	,8:10	);
h2o2am2	=	num(	12	,8:10	);
h2o2am3	=	num(	13	,8:10	);
h2o2am4	=	num(	14	,8:10	);
h2o2am5	=	num(	15	,8:10	);
ambam1	=	num(	53	,8:10	);
ambam2	=	num(	54	,8:10	);
ambam3	=	num(	55	,8:10	);
ambam4	=	num(	56	,8:10	);
ambam5	=	num(	57	,8:10	);
caspam1	=	num(	95	,8:10	);
caspam2	=	num(	96	,8:10	);
caspam3	=	num(	97	,8:10	);
caspam4	=	num(	98	,8:10	);
caspam5	=	num(	99	,8:10	);
flcam1	=	num(	137	,8:10	);
flcam2	=	num(	138	,8:10	);
flcam3	=	num(	139	,8:10	);
flcam4	=	num(	140	,8:10	);
flcam5	=	num(	141	,8:10	);
						
h2o2pm1	=	num(	16	,8:10	);
h2o2pm2	=	num(	17	,8:10	);
h2o2pm3	=	num(	18	,8:10	);
h2o2pm4	=	num(	19	,8:10	);
h2o2pm5	=	num(	20	,8:10	);
ambpm1	=	num(	58	,8:10	);
ambpm2	=	num(	59	,8:10	);
ambpm3	=	num(	60	,8:10	);
ambpm4	=	num(	61	,8:10	);
ambpm5	=	num(	62	,8:10	);
casppm1	=	num(	100	,8:10	);
casppm2	=	num(	101	,8:10	);
casppm3	=	num(	102	,8:10	);
casppm4	=	num(	103	,8:10	);
casppm5	=	num(	104	,8:10	);
flcpm1	=	num(	142	,8:10	);
flcpm2	=	num(	143	,8:10	);
flcpm3	=	num(	144	,8:10	);
flcpm4	=	num(	145	,8:10	);
flcpm5	=	num(	146	,8:10	);
						
h2o2rm1	=	num(	21	,8:10	);
h2o2rm2	=	num(	22	,8:10	);
h2o2rm3	=	num(	23	,8:10	);
h2o2rm4	=	num(	24	,8:10	);
h2o2rm5	=	num(	25	,8:10	);
ambrm1	=	num(	63	,8:10	);
ambrm2	=	num(	64	,8:10	);
ambrm3	=	num(	65	,8:10	);
ambrm4	=	num(	66	,8:10	);
ambrm5	=	num(	67	,8:10	);
casprm1	=	num(	105	,8:10	);
casprm2	=	num(	106	,8:10	);
casprm3	=	num(	107	,8:10	);
casprm4	=	num(	108	,8:10	);
casprm5	=	num(	109	,8:10	);
flcrm1	=	num(	147	,8:10	);
flcrm2	=	num(	148	,8:10	);
flcrm3	=	num(	149	,8:10	);
flcrm4	=	num(	150	,8:10	);
flcrm5	=	num(	151	,8:10	);
						
h2o2dm1	=	num(	26	,8:10	);
h2o2dm2	=	num(	27	,8:10	);
h2o2dm3	=	num(	28	,8:10	);
h2o2dm4	=	num(	29	,8:10	);
h2o2dm5	=	num(	30	,8:10	);
ambdm1	=	num(	68	,8:10	);
ambdm2	=	num(	69	,8:10	);
ambdm3	=	num(	70	,8:10	);
ambdm4	=	num(	71	,8:10	);
ambdm5	=	num(	72	,8:10	);
caspdm1	=	num(	110	,8:10	);
caspdm2	=	num(	111	,8:10	);
caspdm3	=	num(	112	,8:10	);
caspdm4	=	num(	113	,8:10	);
caspdm5	=	num(	114	,8:10	);
flcdm1	=	num(	152	,8:10	);
flcdm2	=	num(	153	,8:10	);
flcdm3	=	num(	154	,8:10	);
flcdm4	=	num(	155	,8:10	);
flcdm5	=	num(	156	,8:10	);
						
h2o2km1	=	num(	31	,8:10	);
h2o2km2	=	num(	32	,8:10	);
h2o2km3	=	num(	33	,8:10	);
h2o2km4	=	num(	34	,8:10	);
h2o2km5	=	num(	35	,8:10	);
ambkm1	=	num(	73	,8:10	);
ambkm2	=	num(	74	,8:10	);
ambkm3	=	num(	75	,8:10	);
ambkm4	=	num(	76	,8:10	);
ambkm5	=	num(	77	,8:10	);
caspkm1	=	num(	115	,8:10	);
caspkm2	=	num(	116	,8:10	);
caspkm3	=	num(	117	,8:10	);
caspkm4	=	num(	118	,8:10	);
caspkm5	=	num(	119	,8:10	);
flckm1	=	num(	157	,8:10	);
flckm2	=	num(	158	,8:10	);
flckm3	=	num(	159	,8:10	);
flckm4	=	num(	160	,8:10	);
flckm5	=	num(	161	,8:10	);
						
h2o2bm1	=	num(	36	,8:10	);
h2o2bm2	=	num(	37	,8:10	);
h2o2bm3	=	num(	38	,8:10	);
h2o2bm4	=	num(	39	,8:10	);
h2o2bm5	=	num(	40	,8:10	);
ambbm1	=	num(	78	,8:10	);
ambbm2	=	num(	79	,8:10	);
ambbm3	=	num(	80	,8:10	);
ambbm4	=	num(	81	,8:10	);
ambbm5	=	num(	82	,8:10	);
caspbm1	=	num(	120	,8:10	);
caspbm2	=	num(	121	,8:10	);
caspbm3	=	num(	122	,8:10	);
caspbm4	=	num(	123	,8:10	);
caspbm5	=	num(	124	,8:10	);
flcbm1	=	num(	162	,8:10	);
flcbm2	=	num(	163	,8:10	);
flcbm3	=	num(	164	,8:10	);
flcbm4	=	num(	165	,8:10	);
flcbm5	=	num(	166	,8:10	);


%%
figure(1);subplot(2,4,1);
qmean = [0.000278739	4.01597E-05	7.34519E-05	5.1286E-06	3.60443E-06	;	0.003970455	0.005451423	0.003547437	0.003	0.003	;	0.000315055	0.000533624	0.00067223	0.000755027	0.000514593	;	0.028652039	0.048048554	0.015914589	0.023563702	0.012071073	];

qsd = [3.46251E-05	2.14036E-05	5.83291E-05	3.68684E-06	1.0469E-06	;	0.001054669	0.000994748	0.000948189	0	0	;	0.000192089	3.19684E-05	0.000317643	0.000212296	5.37095E-05	;	0.015836973	0.013372885	0.002293218	0.008086834	0.003583459	];

hb1 = bar(qmean,1);

xBar=cell2mat(get(hb1,'XData')).' + [hb1.XOffset];  
hold on
hE1=errorbar(xBar,qmean,qsd,'k.','Linewidth',2);

XTickLabel={'a','b','c','d'};
XTick=[1:4];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
%set(gca, 'XTickLabelRotation', 45); 

ylabel('q');

set(hb1,'EdgeColor','k','LineWidth',2);
set(gca,'FontSize',22,'LineWidth',2,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'H_{2}O_{2}','AmB','CASP','FLC'},...
    'XTickLabelRotation',90,'YTickLabelRotation',90);

pbaspect([2 2 1]); 
ylim([1e-6 1e1]); xlim([0 5]);
set(gca,'yscale','log'); grid on;
set(gca,'GridLineStyle','-','MinorGridLineStyle','none');
ax.GridAlpha = 0.5;
ax.MinorGridAlpha = 0.5;
ax.GridColor = [0.9 0.9 0.9]; hold on;
ax.MinorGridColor = [0.9 0.9 0.9];
% ax.GridLineWidth = 1;
% ax.MinorGridLineWidth = 0.2;
box on;

hb1(1).FaceColor = [0.5 0.8 0.8];
hb1(2).FaceColor = [0.4 0.75 0.6];
hb1(3).FaceColor = [0.3 0.5 0.4];
hb1(4).FaceColor = [0.2 0.25 0.3];
hb1(5).FaceColor = [0.1 0.0 0.2];

hold on;

plot(	j1	,	h2o2qw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j2	,	h2o2qw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j3	,	h2o2qw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j4	,	h2o2qw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j5	,	h2o2qw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j6	,	ambqw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j7	,	ambqw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j8	,	ambqw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j9	,	ambqw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j10	,	ambqw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j11	,	caspqw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j12	,	caspqw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j13	,	caspqw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j14	,	caspqw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j15	,	caspqw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j16	,	flcqw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j17	,	flcqw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j18	,	flcqw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j19	,	flcqw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j20	,	flcqw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 		

hold on;
uistack(hE1,'top');
% hb1(1).FaceColor = [1.0 1.0 0.2];
% hb1(2).FaceColor = [1.0 0.8 0.2];
% hb1(3).FaceColor = [1.0 0.4 0.2];
% hb1(4).FaceColor = [0.7 0.2 0.0];
% hb1(5).FaceColor = [0.6 0.0 0.0];
hold off
%%
subplot(2,4,2);
qmean1 = [0.007962449	0.019995438	0.032282275	0.044998583	0.074976662	;	0.003636688	0.002644724	0.003796702	0.003336671	0.003910987	;	0.000190406	0.000990479	0.000927077	0.000998805	0.000999985	;	1.5	2.497803984	2.494467288	2.5	2.499999976	];

qsd1 = [0.000440021	0.009603536	0.033299757	0.02921334	4.03916E-05	;	0.000629275	0.000807804	0.000323033	0.00101528	0.000154176	;	0.000102479	1.04692E-05	0.000126306	2.06996E-06	2.52837E-08	;	0.866025404	0.00380293	0.009582939	3.5085E-10	2.22923E-08	];

hb11 = bar(qmean1,1);

xBar=cell2mat(get(hb11,'XData')).' + [hb11.XOffset];  
hold on
hE11=errorbar(xBar,qmean1,qsd1,'k.','Linewidth',2);

XTickLabel={'a','b','c','d'};
XTick=[1:4];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
%set(gca, 'XTickLabelRotation', 45); 

ylabel('q'); hold on;

set(hb11,'EdgeColor','k','LineWidth',2); 
set(gca,'FontSize',22,'LineWidth',2,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'H_{2}O_{2}','AmB','CASP','FLC'},...
    'XTickLabelRotation',90,'YTickLabelRotation',90);

pbaspect([2 2 1]); 
ylim([1e-6 1e1]); xlim([0 5]);
set(gca,'yscale','log'); grid on;
set(gca,'GridLineStyle','-','MinorGridLineStyle','none');
ax.GridAlpha = 0.5;
ax.MinorGridAlpha = 0.5;
ax.GridColor = [0.9 0.9 0.9]; hold on;
ax.MinorGridColor = [0.9 0.9 0.9];
% ax.GridLineWidth = 1;
% ax.MinorGridLineWidth = 0.2;
box on;

% hb1(1).FaceColor = [0.5 0.8 0.8];
% hb1(2).FaceColor = [0.4 0.75 0.6];
% hb1(3).FaceColor = [0.3 0.5 0.4];
% hb1(4).FaceColor = [0.2 0.25 0.3];
% hb1(5).FaceColor = [0.1 0.0 0.2];

hb11(1).FaceColor = [1.0 1.0 0.2];
hb11(2).FaceColor = [1.0 0.8 0.2];
hb11(3).FaceColor = [1.0 0.4 0.2];
hb11(4).FaceColor = [0.7 0.2 0.0];
hb11(5).FaceColor = [0.6 0.0 0.0];

hold on;
plot(	j1	,	h2o2qm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j2	,	h2o2qm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j3	,	h2o2qm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j4	,	h2o2qm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j5	,	h2o2qm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j6	,	ambqm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j7	,	ambqm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j8	,	ambqm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j9	,	ambqm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j10	,	ambqm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j11	,	caspqm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j12	,	caspqm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j13	,	caspqm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j14	,	caspqm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j15	,	caspqm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j16	,	flcqm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j17	,	flcqm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j18	,	flcqm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j19	,	flcqm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
plot(	j20	,	flcqm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 								
hold on;
uistack(hE11,'top');
hold off

%%

subplot(2,4,3);
fmean = [0.499952211	0.499999902	0.41520171	0.428805881	0.461840834	;	0.014221886	0.01776583	0.01951603	0.02	0.02	;	0.0078456	0.009495799	0.00725461	0.005813276	0.007629581	;	0.019818763	0.016869815	0.019999999	0.019991233	0.01315888	];

fsd = [7.28463E-05	1.70244E-07	0.023212572	0.059102712	0.064234387	;	0.005042299	0.003869634	0.00083826	2.25012E-15	8.27651E-15	;	0.001009208	0.000814389	0.001952721	0.000594672	0.000387296	;	0.000279968	0.00542164	2.25855E-09	1.07513E-05	0.006006774	];

hb2 = bar(fmean,1);

xBar=cell2mat(get(hb2,'XData')).' + [hb2.XOffset];  
hold on
hE2=errorbar(xBar,fmean,fsd,'k.','Linewidth',2);

XTickLabel={'a','b','c','d'};
XTick=[1:4];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
%set(gca, 'XTickLabelRotation', 45); 

set(hb2,'EdgeColor','k','LineWidth',2);

ylabel('f');
set(gca,'FontSize',22,'LineWidth',2,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'H_{2}O_{2}','AmB','CASP','FLC'},...
    'XTickLabelRotation',90,'YTickLabelRotation',90);

pbaspect([2 2 1]); 
ylim([1e-4 1e1]); xlim([0 5]);
set(gca,'yscale','log'); grid on;
set(gca,'GridLineStyle','-','MinorGridLineStyle','none');
ax.GridAlpha = 0.5;
ax.MinorGridAlpha = 0.5;
ax.GridColor = [0.9 0.9 0.9]; hold on;
ax.MinorGridColor = [0.9 0.9 0.9];
% ax.GridLineWidth = 1;
% ax.MinorGridLineWidth = 0.2;
box on;

hb2(1).FaceColor = [0.5 0.8 0.8];
hb2(2).FaceColor = [0.4 0.75 0.6];
hb2(3).FaceColor = [0.3 0.5 0.4];
hb2(4).FaceColor = [0.2 0.25 0.3];
hb2(5).FaceColor = [0.1 0.0 0.2];
hold on;
plot(	j1	,	h2o2fw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j2	,	h2o2fw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j3	,	h2o2fw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j4	,	h2o2fw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j5	,	h2o2fw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j6	,	ambfw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j7	,	ambfw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j8	,	ambfw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j9	,	ambfw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j10	,	ambfw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j11	,	caspfw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j12	,	caspfw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j13	,	caspfw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j14	,	caspfw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j15	,	caspfw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j16	,	flcfw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j17	,	flcfw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j18	,	flcfw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j19	,	flcfw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j20	,	flcfw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
hold on;

uistack(hE2,'top');
% hb1(1).FaceColor = [1.0 1.0 0.2];
% hb1(2).FaceColor = [1.0 0.8 0.2];
% hb1(3).FaceColor = [1.0 0.4 0.2];
% hb1(4).FaceColor = [0.7 0.2 0.0];
% hb1(5).FaceColor = [0.6 0.0 0.0];
hold off
%%
subplot(2,4,4);
fmean1 = [2.499999996	2.44757134	1.417677719	1.3786134	1.25185826	;	0.030000001	0.03	0.032142521	0.030368522	0.03	;	0.05	0.049999709	0.049999973	0.049770331	0.05	;	0.041666667	0.027652566	0.028344881	0.028358799	0.027717755	];

fsd1 = [6.10818E-09	0.071181574	0.165556476	0.122606693	0.00321854	;	1.20681E-09	3.88681E-10	0.003710955	0.000638299	1.00614E-16	;	7.76546E-15	5.04148E-07	4.70752E-08	0.000397799	2.20243E-13	;	0.014433757	0.004593363	0.005792999	0.005817611	0.004707289	];

hb21 = bar(fmean1,1);

xBar=cell2mat(get(hb11,'XData')).' + [hb11.XOffset];  
hold on
hE21=errorbar(xBar,fmean1,fsd1,'k.','Linewidth',2);

XTickLabel={'a','b','c','d'};
XTick=[1:4];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
%set(gca, 'XTickLabelRotation', 45); 

set(hb21,'EdgeColor','k','LineWidth',2);

ylabel('f');
set(gca,'FontSize',22,'LineWidth',2,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'H_{2}O_{2}','AmB','CASP','FLC'},...
    'XTickLabelRotation',90,'YTickLabelRotation',90);

pbaspect([2 2 1]); 
ylim([1e-4 1e1]); xlim([0 5]);
set(gca,'yscale','log'); grid on;
set(gca,'GridLineStyle','-','MinorGridLineStyle','none');
ax.GridAlpha = 0.5;
ax.MinorGridAlpha = 0.5;
ax.GridColor = [0.9 0.9 0.9]; hold on;
ax.MinorGridColor = [0.9 0.9 0.9];
% ax.GridLineWidth = 1;
% ax.MinorGridLineWidth = 0.2;
box on;

% hb1(1).FaceColor = [0.5 0.8 0.8];
% hb1(2).FaceColor = [0.4 0.75 0.6];
% hb1(3).FaceColor = [0.3 0.5 0.4];
% hb1(4).FaceColor = [0.2 0.25 0.3];
% hb1(5).FaceColor = [0.1 0.0 0.2];

hb21(1).FaceColor = [1.0 1.0 0.2];
hb21(2).FaceColor = [1.0 0.8 0.2];
hb21(3).FaceColor = [1.0 0.4 0.2];
hb21(4).FaceColor = [0.7 0.2 0.0];
hb21(5).FaceColor = [0.6 0.0 0.0];
hold on;
plot(	j1	,	h2o2fm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j2	,	h2o2fm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j3	,	h2o2fm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j4	,	h2o2fm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j5	,	h2o2fm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j6	,	ambfm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j7	,	ambfm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j8	,	ambfm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j9	,	ambfm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j10	,	ambfm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j11	,	caspfm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j12	,	caspfm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j13	,	caspfm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j14	,	caspfm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j15	,	caspfm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j16	,	flcfm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j17	,	flcfm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j18	,	flcfm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j19	,	flcfm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j20	,	flcfm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
hold on;
uistack(hE21,'top');
hold off

%%

subplot(2,4,5);
amean = [3.999968665	4	3.892112588	3.865219988	3.855460142	;	0.718184653	0.660972125	0.79999898	0.799999592	0.799993586	;	4.716524771	5.493891114	4.259492773	4.049885398	4.443915794	;	34.70511746	31.25178055	34.99999976	34.3405196	25.53652516	];

asd = [5.4273E-05	5.80075E-10	0.186866192	0.18593006	0.244834115	;	0.141708338	0.212919583	1.76669E-06	3.49814E-07	1.11093E-05	;	1.357018901	0.007859528	1.153510162	0.172781644	0.10431785	;	0.351790705	6.492073413	3.87936E-07	0.639042653	8.227039099	];

hb3 = bar(amean,1);

xBar=cell2mat(get(hb3,'XData')).' + [hb3.XOffset];  
hold on
hE3=errorbar(xBar,amean,asd,'k.','Linewidth',2);

XTickLabel={'a','b','c','d'};
XTick=[1:4];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
%set(gca, 'XTickLabelRotation', 45); 

set(hb3,'EdgeColor','k','LineWidth',2);

ylabel('a');
set(gca,'FontSize',22,'LineWidth',2,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'H_{2}O_{2}','AmB','CASP','FLC'},...
    'XTickLabelRotation',90,'YTickLabelRotation',90);

pbaspect([2 2 1]); 
ylim([1e-1 1e2]); xlim([0 5]);
set(gca,'yscale','log'); grid on;
set(gca,'GridLineStyle','-','MinorGridLineStyle','none');
ax.GridAlpha = 0.5;
ax.MinorGridAlpha = 0.5;
ax.GridColor = [0.9 0.9 0.9]; hold on;
ax.MinorGridColor = [0.9 0.9 0.9];
% ax.GridLineWidth = 1;
% ax.MinorGridLineWidth = 0.2;
box on;

hb3(1).FaceColor = [0.5 0.8 0.8];
hb3(2).FaceColor = [0.4 0.75 0.6];
hb3(3).FaceColor = [0.3 0.5 0.4];
hb3(4).FaceColor = [0.2 0.25 0.3];
hb3(5).FaceColor = [0.1 0.0 0.2];

% hb1(1).FaceColor = [1.0 1.0 0.2];
% hb1(2).FaceColor = [1.0 0.8 0.2];
% hb1(3).FaceColor = [1.0 0.4 0.2];
% hb1(4).FaceColor = [0.7 0.2 0.0];
% hb1(5).FaceColor = [0.6 0.0 0.0];

plot(	j1	,	h2o2aw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j2	,	h2o2aw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j3	,	h2o2aw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j4	,	h2o2aw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j5	,	h2o2aw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j6	,	ambaw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j7	,	ambaw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j8	,	ambaw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j9	,	ambaw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j10	,	ambaw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j11	,	caspaw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j12	,	caspaw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j13	,	caspaw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j14	,	caspaw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j15	,	caspaw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j16	,	flcaw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j17	,	flcaw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j18	,	flcaw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j19	,	flcaw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j20	,	flcaw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
hold on;					
uistack(hE3,'top');					

hold off
%%
subplot(2,4,6);
amean1 = [4.04002713	4.065617551	4.010408281	4.000018498	4.000001757	;	1.00050924	1.000000114	1.182235421	1.068539304	1.128637257	;	2.871453815	1.613315756	1.500216741	1.500012549	1.500801355	;	28.33333327	17.38130752	21.20406272	18.9507751	18.96849748	];

asd1 = [0.068536369	0.089947104	0.01801701	3.12989E-05	3.04228E-06	;	0.000882029	1.89763E-07	0.157894879	0.095600209	0.222806265	;	1.213391146	0.196268647	0.000375406	2.1732E-05	0.001387977	;	11.54700533	3.172916856	10.02091033	6.842943113	6.873639061	];

hb31 = bar(amean1,1);

xBar=cell2mat(get(hb31,'XData')).' + [hb31.XOffset];  
hold on
hE31=errorbar(xBar,amean1,asd1,'k.','Linewidth',2);

XTickLabel={'a','b','c','d'};
XTick=[1:4];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
%set(gca, 'XTickLabelRotation', 45); 

set(hb31,'EdgeColor','k','LineWidth',2);

ylabel('a');
set(gca,'FontSize',22,'LineWidth',2,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'H_{2}O_{2}','AmB','CASP','FLC'},...
    'XTickLabelRotation',90,'YTickLabelRotation',90);

pbaspect([2 2 1]); 
ylim([1e-1 1e2]); xlim([0 5]);
set(gca,'yscale','log'); grid on;
set(gca,'GridLineStyle','-','MinorGridLineStyle','none');
ax.GridAlpha = 0.5;
ax.MinorGridAlpha = 0.5;
ax.GridColor = [0.9 0.9 0.9]; hold on;
ax.MinorGridColor = [0.9 0.9 0.9];
% ax.GridLineWidth = 1;
% ax.MinorGridLineWidth = 0.2;
box on;

% hb1(1).FaceColor = [0.5 0.8 0.8];
% hb1(2).FaceColor = [0.4 0.75 0.6];
% hb1(3).FaceColor = [0.3 0.5 0.4];
% hb1(4).FaceColor = [0.2 0.25 0.3];
% hb1(5).FaceColor = [0.1 0.0 0.2];

hb31(1).FaceColor = [1.0 1.0 0.2];
hb31(2).FaceColor = [1.0 0.8 0.2];
hb31(3).FaceColor = [1.0 0.4 0.2];
hb31(4).FaceColor = [0.7 0.2 0.0];
hb31(5).FaceColor = [0.6 0.0 0.0];

plot(	j1	,	h2o2am1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j2	,	h2o2am2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j3	,	h2o2am3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j4	,	h2o2am4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j5	,	h2o2am5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j6	,	ambam1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j7	,	ambam2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j8	,	ambam3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j9	,	ambam4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j10	,	ambam5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j11	,	caspam1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j12	,	caspam2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j13	,	caspam3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j14	,	caspam4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j15	,	caspam5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j16	,	flcam1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j17	,	flcam2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j18	,	flcam3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j19	,	flcam4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j20	,	flcam5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
hold on;					
uistack(hE31,'top');					

hold off

%%

subplot(2,4,7);
pmean = [0.795650156	0.621561252	0.595734554	0.625526996	0.596541111	;	0.300000002	0.300026628	0.384189801	0.365516876	0.352737452	;	2.146678887	2.400305423	2.16686243	2.052815354	2.49999989	;	9.302985938	9.092582869	9.908394613	9.864763947	9.760246344	];

psd = [0.003536928	0.105893037	0.00447473	0.017449894	0.026081584	;	2.73565E-09	4.61206E-05	0.079271615	0.003285901	0.046334688	;	0.254055285	0.112802169	0.192770977	0.062478095	6.57871E-08	;	0.604168968	1.418552688	0.155059935	0.23209825	0.233401184	];

hb4 = bar(pmean,1);

xBar=cell2mat(get(hb4,'XData')).' + [hb4.XOffset];  
hold on
hE4=errorbar(xBar,pmean,psd,'k.','Linewidth',2);

XTickLabel={'a','b','c','d'};
XTick=[1:4];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
%set(gca, 'XTickLabelRotation', 45); 

set(hb4,'EdgeColor','k','LineWidth',2);

ylabel('p');
set(gca,'FontSize',22,'LineWidth',2,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'H_{2}O_{2}','AmB','CASP','FLC'},...
    'XTickLabelRotation',90,'YTickLabelRotation',90);

pbaspect([2 2 1]); 
ylim([1e-2 1e2]); xlim([0 5]);
set(gca,'yscale','log'); grid on;
set(gca,'GridLineStyle','-','MinorGridLineStyle','none');
ax.GridAlpha = 0.5;
ax.MinorGridAlpha = 0.5;
ax.GridColor = [0.9 0.9 0.9]; hold on;
ax.MinorGridColor = [0.9 0.9 0.9];
% ax.GridLineWidth = 1;
% ax.MinorGridLineWidth = 0.2;
box on;
hb4(1).FaceColor = [0.5 0.8 0.8];
hb4(2).FaceColor = [0.4 0.75 0.6];
hb4(3).FaceColor = [0.3 0.5 0.4];
hb4(4).FaceColor = [0.2 0.25 0.3];
hb4(5).FaceColor = [0.1 0.0 0.2];

% hb1(1).FaceColor = [1.0 1.0 0.2];
% hb1(2).FaceColor = [1.0 0.8 0.2];
% hb1(3).FaceColor = [1.0 0.4 0.2];
% hb1(4).FaceColor = [0.7 0.2 0.0];
% hb1(5).FaceColor = [0.6 0.0 0.0];

plot(	j1	,	h2o2pw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j2	,	h2o2pw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j3	,	h2o2pw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j4	,	h2o2pw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j5	,	h2o2pw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j6	,	ambpw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j7	,	ambpw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j8	,	ambpw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j9	,	ambpw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j10	,	ambpw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j11	,	casppw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j12	,	casppw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j13	,	casppw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j14	,	casppw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j15	,	casppw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j16	,	flcpw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j17	,	flcpw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j18	,	flcpw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j19	,	flcpw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j20	,	flcpw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
hold on;					
uistack(hE4,'top');					

hold off
%%
subplot(2,4,8);
pmean1 = [0.029999999	0.019138758	0.022690786	0.025504895	0.02146129	;	0.189027593	0.243852011	0.147974908	0.138315002	0.064073312	;	0.999996369	0.995233936	0.953882985	0.565093571	0.70707206	;	7.000000001	6.142359029	2.583556574	1.003940944	1.004348291	];

psd1 = [1.17017E-09	0.005491412	0.006387116	0.005208647	0.005928513	;	0.096105947	0.071931855	0.077133429	0.076504332	0.018176063	;	6.28862E-06	0.008152964	0.045365146	0.152411664	0.256526082	;	5.19615242	1.713005321	2.742800366	0.006825912	0.007531452	];

hb41 = bar(pmean1,1);

xBar=cell2mat(get(hb41,'XData')).' + [hb41.XOffset];  
hold on
hE41=errorbar(xBar,pmean1,psd1,'k.','Linewidth',2);

XTickLabel={'a','b','c','d'};
XTick=[1:4];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
%set(gca, 'XTickLabelRotation', 45); 

set(hb41,'EdgeColor','k','LineWidth',2);

ylabel('p');
set(gca,'FontSize',22,'LineWidth',2,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'H_{2}O_{2}','AmB','CASP','FLC'},...
    'XTickLabelRotation',90,'YTickLabelRotation',90);

pbaspect([2 2 1]); 
ylim([1e-2 1e2]); xlim([0 5]);
set(gca,'yscale','log'); grid on;
set(gca,'GridLineStyle','-','MinorGridLineStyle','none');
ax.GridAlpha = 0.5;
ax.MinorGridAlpha = 0.5;
ax.GridColor = [0.9 0.9 0.9]; hold on;
ax.MinorGridColor = [0.9 0.9 0.9];
% ax.GridLineWidth = 1;
% ax.MinorGridLineWidth = 0.2;
box on;
% hb1(1).FaceColor = [0.5 0.8 0.8];
% hb1(2).FaceColor = [0.4 0.75 0.6];
% hb1(3).FaceColor = [0.3 0.5 0.4];
% hb1(4).FaceColor = [0.2 0.25 0.3];
% hb1(5).FaceColor = [0.1 0.0 0.2];

hb41(1).FaceColor = [1.0 1.0 0.2];
hb41(2).FaceColor = [1.0 0.8 0.2];
hb41(3).FaceColor = [1.0 0.4 0.2];
hb41(4).FaceColor = [0.7 0.2 0.0];
hb41(5).FaceColor = [0.6 0.0 0.0];

plot(	j1	,	h2o2pm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j2	,	h2o2pm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j3	,	h2o2pm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j4	,	h2o2pm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j5	,	h2o2pm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j6	,	ambpm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j7	,	ambpm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j8	,	ambpm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j9	,	ambpm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j10	,	ambpm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j11	,	casppm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j12	,	casppm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j13	,	casppm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j14	,	casppm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j15	,	casppm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j16	,	flcpm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j17	,	flcpm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j18	,	flcpm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j19	,	flcpm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j20	,	flcpm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
hold on;					
uistack(hE41,'top');					

hold off

%%

figure(2);subplot(2,4,1);
rmean = [1.077375982	1.967882586	3.68269935	3.300823719	3.420267335	;	2.999999976	2.99959938	2.310074121	2.547844783	2.676040593	;	0.65501499	0.494784144	0.603082983	0.745928934	0.319408422	;	3.131244017	3.600039351	1.275652958	1.194302009	1.400137852	];

rsd = [0.080872739	0.364100691	0.07191589	0.235226468	0.303047849	;	4.13364E-08	0.000693894	0.69954599	0.058343359	0.282665674	;	0.251121404	0.022648814	0.242446828	0.06193271	0.022849106	;	1.783484275	1.896172459	0.194816387	0.284466164	0.356046516	];

hb5 = bar(rmean,1);

xBar=cell2mat(get(hb5,'XData')).' + [hb5.XOffset];  
hold on
hE5=errorbar(xBar,rmean,rsd,'k.','Linewidth',2);

XTickLabel={'a','b','c','d'};
XTick=[1:4];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
%set(gca, 'XTickLabelRotation', 45); 

set(hb5,'EdgeColor','k','LineWidth',2);

ylabel('r');
set(gca,'FontSize',22,'LineWidth',2,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'H_{2}O_{2}','AmB','CASP','FLC'},...
    'XTickLabelRotation',90,'YTickLabelRotation',90);

pbaspect([2 2 1]); 
ylim([1e-2 1e3]); xlim([0 5]);
set(gca,'yscale','log'); grid on;
set(gca,'GridLineStyle','-','MinorGridLineStyle','none');
ax.GridAlpha = 0.5;
ax.MinorGridAlpha = 0.5;
ax.GridColor = [0.9 0.9 0.9]; hold on;
ax.MinorGridColor = [0.9 0.9 0.9];
% ax.GridLineWidth = 1;
% ax.MinorGridLineWidth = 0.2;
box on;

hb5(1).FaceColor = [0.5 0.8 0.8];
hb5(2).FaceColor = [0.4 0.75 0.6];
hb5(3).FaceColor = [0.3 0.5 0.4];
hb5(4).FaceColor = [0.2 0.25 0.3];
hb5(5).FaceColor = [0.1 0.0 0.2];

% hb1(1).FaceColor = [1.0 1.0 0.2];
% hb1(2).FaceColor = [1.0 0.8 0.2];
% hb1(3).FaceColor = [1.0 0.4 0.2];
% hb1(4).FaceColor = [0.7 0.2 0.0];
% hb1(5).FaceColor = [0.6 0.0 0.0];

plot(	j1	,	h2o2rw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j2	,	h2o2rw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j3	,	h2o2rw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j4	,	h2o2rw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j5	,	h2o2rw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j6	,	ambrw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j7	,	ambrw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j8	,	ambrw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j9	,	ambrw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j10	,	ambrw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j11	,	casprw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j12	,	casprw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j13	,	casprw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j14	,	casprw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j15	,	casprw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j16	,	flcrw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j17	,	flcrw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j18	,	flcrw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j19	,	flcrw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j20	,	flcrw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
hold on;					
uistack(hE5,'top');					

hold off
%%
subplot(2,4,2);
rmean1 = [2.500000005	3.179588846	3.116917397	2.858958019	3.019101598	;	1.262209707	0.749422157	1.184042646	1.071708469	0.70000001	;	0.100000125	0.894359638	0.484147029	0.155374131	0.199139486	;	6.666666665	7.59811682	8.79854484	9.996820962	9.995393778	];

rsd1 = [6.69206E-09	0.468648837	0.534314236	0.345652957	0.420778897	;	0.490393802	0.085571707	0.419173706	0.187066343	1.26719E-08	;	2.16172E-07	0.102398061	0.079010808	0.063691162	0.13816185	;	2.886751344	2.218126735	2.080981293	0.005506247	0.007978204	];

hb51 = bar(rmean1,1);

xBar=cell2mat(get(hb51,'XData')).' + [hb51.XOffset];  
hold on
hE51=errorbar(xBar,rmean1,rsd1,'k.','Linewidth',2);

XTickLabel={'a','b','c','d'};
XTick=[1:4];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
%set(gca, 'XTickLabelRotation', 45); 

set(hb51,'EdgeColor','k','LineWidth',2);

ylabel('r');
set(gca,'FontSize',22,'LineWidth',2,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'H_{2}O_{2}','AmB','CASP','FLC'},...
    'XTickLabelRotation',90,'YTickLabelRotation',90);

pbaspect([2 2 1]); 
ylim([1e-2 1e3]); xlim([0 5]);
set(gca,'yscale','log'); grid on;
set(gca,'GridLineStyle','-','MinorGridLineStyle','none');
ax.GridAlpha = 0.5;
ax.MinorGridAlpha = 0.5;
ax.GridColor = [0.9 0.9 0.9]; hold on;
ax.MinorGridColor = [0.9 0.9 0.9];
% ax.GridLineWidth = 1;
% ax.MinorGridLineWidth = 0.2;
box on;

% hb1(1).FaceColor = [0.5 0.8 0.8];
% hb1(2).FaceColor = [0.4 0.75 0.6];
% hb1(3).FaceColor = [0.3 0.5 0.4];
% hb1(4).FaceColor = [0.2 0.25 0.3];
% hb1(5).FaceColor = [0.1 0.0 0.2];

hb51(1).FaceColor = [1.0 1.0 0.2];
hb51(2).FaceColor = [1.0 0.8 0.2];
hb51(3).FaceColor = [1.0 0.4 0.2];
hb51(4).FaceColor = [0.7 0.2 0.0];
hb51(5).FaceColor = [0.6 0.0 0.0];

plot(	j1	,	h2o2rm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j2	,	h2o2rm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j3	,	h2o2rm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j4	,	h2o2rm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j5	,	h2o2rm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j6	,	ambrm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j7	,	ambrm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j8	,	ambrm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j9	,	ambrm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j10	,	ambrm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j11	,	casprm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j12	,	casprm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j13	,	casprm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j14	,	casprm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j15	,	casprm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j16	,	flcrm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j17	,	flcrm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j18	,	flcrm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j19	,	flcrm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j20	,	flcrm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
hold on;					
uistack(hE51,'top');					

hold off

%%

subplot(2,4,3);
dmean = [1.042285257	1	1.028774673	1.010384415	1.008512427	;	0.100000008	0.11960301	0.13570791	0.12301954	0.129939775	;	0.011666666	0.010000001	0.013333371	0.011727553	0.01008404	;	0.232299677	0.200000007	0.24708166	0.233352314	0.232186147	];

dsd = [0.038888835	9.97661E-11	0.028849925	0.013251873	0.014499769	;	1.46739E-08	0.019126576	0.011221712	0.007212648	0.013582797	;	0.00288675	8.58207E-10	0.002886635	0.002783511	6.13385E-05	;	0.026590881	1.22445E-08	0.005054714	0.028834057	0.027774735	];

hb6 = bar(dmean,1);

xBar=cell2mat(get(hb6,'XData')).' + [hb6.XOffset];  
hold on
hE6=errorbar(xBar,dmean,dsd,'k.','Linewidth',2);

XTickLabel={'a','b','c','d'};
XTick=[1:4];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
%set(gca, 'XTickLabelRotation', 45); 

set(hb6,'EdgeColor','k','LineWidth',2);

ylabel('d');
set(gca,'FontSize',22,'LineWidth',2,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'H_{2}O_{2}','AmB','CASP','FLC'},...
    'XTickLabelRotation',90,'YTickLabelRotation',90);

pbaspect([2 2 1]); 
ylim([1e-3 1e1]); xlim([0 5]);
set(gca,'yscale','log'); grid on;
set(gca,'GridLineStyle','-','MinorGridLineStyle','none');
ax.GridAlpha = 0.5;
ax.MinorGridAlpha = 0.5;
ax.GridColor = [0.9 0.9 0.9]; hold on;
ax.MinorGridColor = [0.9 0.9 0.9];
% ax.GridLineWidth = 1;
% ax.MinorGridLineWidth = 0.2;
box on;

hb6(1).FaceColor = [0.5 0.8 0.8];
hb6(2).FaceColor = [0.4 0.75 0.6];
hb6(3).FaceColor = [0.3 0.5 0.4];
hb6(4).FaceColor = [0.2 0.25 0.3];
hb6(5).FaceColor = [0.1 0.0 0.2];

% hb1(1).FaceColor = [1.0 1.0 0.2];
% hb1(2).FaceColor = [1.0 0.8 0.2];
% hb1(3).FaceColor = [1.0 0.4 0.2];
% hb1(4).FaceColor = [0.7 0.2 0.0];
% hb1(5).FaceColor = [0.6 0.0 0.0];

plot(	j1	,	h2o2dw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j2	,	h2o2dw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j3	,	h2o2dw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j4	,	h2o2dw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j5	,	h2o2dw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j6	,	ambdw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j7	,	ambdw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j8	,	ambdw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j9	,	ambdw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j10	,	ambdw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j11	,	caspdw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j12	,	caspdw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j13	,	caspdw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j14	,	caspdw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j15	,	caspdw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j16	,	flcdw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j17	,	flcdw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j18	,	flcdw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j19	,	flcdw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j20	,	flcdw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
hold on;					
uistack(hE6,'top');					

hold off
%%
subplot(2,4,4);
dmean1 = [1.099987364	1.099994186	1.095363017	1.092089929	1.045072665	;	0.189983601	0.2	0.197254778	0.14950125	0.10747669	;	0.015	0.014999432	0.014999999	0.014999608	0.015	;	0.233333333	0.200804282	0.20005894	0.200000164	0.200000108	];

dsd1 = [2.05735E-05	6.15066E-06	0.00782513	0.009660193	0.050027467	;	0.009923687	7.80401E-15	0.004747752	0.047255979	0.007680754	;	7.90753E-15	9.82956E-07	9.83529E-10	6.78505E-07	1.81834E-10	;	0.028867513	0.001393033	0.000102086	2.84016E-07	1.87762E-07	];

hb61 = bar(dmean1,1);

xBar=cell2mat(get(hb61,'XData')).' + [hb61.XOffset];  
hold on
hE61=errorbar(xBar,dmean1,dsd1,'k.','Linewidth',2);

XTickLabel={'a','b','c','d'};
XTick=[1:4];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
%set(gca, 'XTickLabelRotation', 45); 

set(hb61,'EdgeColor','k','LineWidth',2);

ylabel('d');
set(gca,'FontSize',22,'LineWidth',2,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'H_{2}O_{2}','AmB','CASP','FLC'},...
    'XTickLabelRotation',90,'YTickLabelRotation',90);

pbaspect([2 2 1]); 
ylim([1e-3 1e1]); xlim([0 5]);
set(gca,'yscale','log'); grid on;
set(gca,'GridLineStyle','-','MinorGridLineStyle','none');
ax.GridAlpha = 0.5;
ax.MinorGridAlpha = 0.5;
ax.GridColor = [0.9 0.9 0.9]; hold on;
ax.MinorGridColor = [0.9 0.9 0.9];
% ax.GridLineWidth = 1;
% ax.MinorGridLineWidth = 0.2;
box on;

% hb1(1).FaceColor = [0.5 0.8 0.8];
% hb1(2).FaceColor = [0.4 0.75 0.6];
% hb1(3).FaceColor = [0.3 0.5 0.4];
% hb1(4).FaceColor = [0.2 0.25 0.3];
% hb1(5).FaceColor = [0.1 0.0 0.2];

hb61(1).FaceColor = [1.0 1.0 0.2];
hb61(2).FaceColor = [1.0 0.8 0.2];
hb61(3).FaceColor = [1.0 0.4 0.2];
hb61(4).FaceColor = [0.7 0.2 0.0];
hb61(5).FaceColor = [0.6 0.0 0.0];

plot(	j1	,	h2o2dm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j2	,	h2o2dm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j3	,	h2o2dm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j4	,	h2o2dm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j5	,	h2o2dm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j6	,	ambdm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j7	,	ambdm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j8	,	ambdm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j9	,	ambdm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j10	,	ambdm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j11	,	caspdm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j12	,	caspdm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j13	,	caspdm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j14	,	caspdm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j15	,	caspdm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j16	,	flcdm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j17	,	flcdm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j18	,	flcdm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j19	,	flcdm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j20	,	flcdm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
hold on;					
uistack(hE61,'top');					

hold off

%%

subplot(2,4,5);
kmean = [0.499130212	0.499999733	0.185750885	0.107894784	0.019354937	;	0.150000313	0.209722895	0.15	0.231073638	0.249999719	;	1.666666667	1.999998151	1.509044456	1.341735141	1.63035007	;	9.21212E-06	8.29591E-06	1E-05	9.93193E-06	5.3359E-06	];

ksd = [0.001504355	4.61434E-07	0.150286318	0.029596454	0.031791683	;	0.08660227	0.069722551	0.08660254	0.032780063	4.87252E-07	;	0.577350269	2.54268E-06	0.495313014	0.570204431	0.259888353	;	1.36465E-06	2.95157E-06	1.05609E-14	1.17907E-07	4.03923E-06	];

hb7 = bar(kmean,1);

xBar=cell2mat(get(hb7,'XData')).' + [hb7.XOffset];  
hold on
hE7=errorbar(xBar,kmean,ksd,'k.','Linewidth',2);

XTickLabel={'a','b','c','d'};
XTick=[1:4];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
%set(gca, 'XTickLabelRotation', 45); 

set(hb7,'EdgeColor','k','LineWidth',2);

ylabel('k');
set(gca,'FontSize',22,'LineWidth',2,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'H_{2}O_{2}','AmB','CASP','FLC'},...
    'XTickLabelRotation',90,'YTickLabelRotation',90);

pbaspect([2 2 1]); 
ylim([1e-7 1e2]); xlim([0 5]);
set(gca,'yscale','log'); grid on;
set(gca,'GridLineStyle','-','MinorGridLineStyle','none');
ax.GridAlpha = 0.5;
ax.MinorGridAlpha = 0.5;
ax.GridColor = [0.9 0.9 0.9]; hold on;
ax.MinorGridColor = [0.9 0.9 0.9];
% ax.GridLineWidth = 1;
% ax.MinorGridLineWidth = 0.2;
box on;

hb7(1).FaceColor = [0.5 0.8 0.8];
hb7(2).FaceColor = [0.4 0.75 0.6];
hb7(3).FaceColor = [0.3 0.5 0.4];
hb7(4).FaceColor = [0.2 0.25 0.3];
hb7(5).FaceColor = [0.1 0.0 0.2];

% hb1(1).FaceColor = [1.0 1.0 0.2];
% hb1(2).FaceColor = [1.0 0.8 0.2];
% hb1(3).FaceColor = [1.0 0.4 0.2];
% hb1(4).FaceColor = [0.7 0.2 0.0];
% hb1(5).FaceColor = [0.6 0.0 0.0];

plot(	j1	,	h2o2kw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j2	,	h2o2kw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j3	,	h2o2kw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j4	,	h2o2kw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j5	,	h2o2kw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j6	,	ambkw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j7	,	ambkw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j8	,	ambkw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j9	,	ambkw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j10	,	ambkw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j11	,	caspkw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j12	,	caspkw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j13	,	caspkw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j14	,	caspkw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j15	,	caspkw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j16	,	flckw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j17	,	flckw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j18	,	flckw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j19	,	flckw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j20	,	flckw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
hold on;					
uistack(hE7,'top');					

hold off
%%
subplot(2,4,6);
kmean1 = [0.465754292	0.476688503	0.460740806	0.398888295	0.341752034	;	0.100000055	0.1	0.200170936	0.10000318	0.1	;	1.487506385	0.51869176	0.730998549	1.257399	1.0067921	;	1.89479E-05	5.39069E-05	1.6956E-05	6.85563E-06	6.83506E-06	];

ksd1 = [0.107709454	0.160783487	0.274276464	0.139097323	0.038209893	;	9.35114E-08	8.66135E-15	0.062999177	4.87969E-06	2.31806E-13	;	0.021638335	0.032370123	0.262679799	0.217331152	0.439058758	;	5.87421E-07	8.18483E-06	1.6458E-05	3.38593E-06	3.50924E-06	];

hb71 = bar(kmean1,1);

xBar=cell2mat(get(hb71,'XData')).' + [hb71.XOffset];  
hold on
hE71=errorbar(xBar,kmean1,ksd1,'k.','Linewidth',2);

XTickLabel={'a','b','c','d'};
XTick=[1:4];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
%set(gca, 'XTickLabelRotation', 45); 

set(hb71,'EdgeColor','k','LineWidth',2);

ylabel('k');
set(gca,'FontSize',22,'LineWidth',2,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'H_{2}O_{2}','AmB','CASP','FLC'},...
    'XTickLabelRotation',90,'YTickLabelRotation',90);

pbaspect([2 2 1]); 
ylim([1e-7 1e2]); xlim([0 5]);
set(gca,'yscale','log'); grid on;
set(gca,'GridLineStyle','-','MinorGridLineStyle','none');
ax.GridAlpha = 0.5;
ax.MinorGridAlpha = 0.5;
ax.GridColor = [0.9 0.9 0.9]; hold on;
ax.MinorGridColor = [0.9 0.9 0.9];
% ax.GridLineWidth = 1;
% ax.MinorGridLineWidth = 0.2;
box on;
% hb1(1).FaceColor = [0.5 0.8 0.8];
% hb1(2).FaceColor = [0.4 0.75 0.6];
% hb1(3).FaceColor = [0.3 0.5 0.4];
% hb1(4).FaceColor = [0.2 0.25 0.3];
% hb1(5).FaceColor = [0.1 0.0 0.2];

hb71(1).FaceColor = [1.0 1.0 0.2];
hb71(2).FaceColor = [1.0 0.8 0.2];
hb71(3).FaceColor = [1.0 0.4 0.2];
hb71(4).FaceColor = [0.7 0.2 0.0];
hb71(5).FaceColor = [0.6 0.0 0.0];

plot(	j1	,	h2o2km1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j2	,	h2o2km2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j3	,	h2o2km3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j4	,	h2o2km4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j5	,	h2o2km5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j6	,	ambkm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j7	,	ambkm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j8	,	ambkm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j9	,	ambkm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j10	,	ambkm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j11	,	caspkm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j12	,	caspkm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j13	,	caspkm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j14	,	caspkm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j15	,	caspkm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j16	,	flckm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j17	,	flckm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j18	,	flckm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j19	,	flckm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j20	,	flckm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
hold on;					
uistack(hE71,'top');					

hold off

%%

subplot(2,4,7);
bmean = [0	0	0	0	0	;	0	0	0	0	0	;	0	0	0	0	0	;	7.78247E-06	4E-06	8E-06	5.84147E-06	5.57307E-06	];

bsd = [0	0	0	0	0	;	0	0	0	0	0	;	0	0	0	0	0	;	3.74189E-07	4.57397E-15	5.62258E-13	2.01876E-06	2.13173E-06	];

hb8 = bar(bmean,1);

xBar=cell2mat(get(hb8,'XData')).' + [hb8.XOffset];  
hold on
hE8=errorbar(xBar,bmean,bsd,'k.','Linewidth',2);

XTickLabel={'a','b','c','d'};
XTick=[1:4];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
%set(gca, 'XTickLabelRotation', 45); 

set(hb8,'EdgeColor','k','LineWidth',2);

ylabel('b');
set(gca,'FontSize',22,'LineWidth',2,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'H_{2}O_{2}','AmB','CASP','FLC'},...
    'XTickLabelRotation',90,'YTickLabelRotation',90);

pbaspect([2 2 1]); 
ylim([1e-7 1e2]); xlim([0 5]);
set(gca,'yscale','log'); grid on;
set(gca,'GridLineStyle','-','MinorGridLineStyle','none');
ax.GridAlpha = 0.5;
ax.MinorGridAlpha = 0.5;
ax.GridColor = [0.9 0.9 0.9]; hold on;
ax.MinorGridColor = [0.9 0.9 0.9];
% ax.GridLineWidth = 1;
% ax.MinorGridLineWidth = 0.2;
box on;

hb8(1).FaceColor = [0.5 0.8 0.8];
hb8(2).FaceColor = [0.4 0.75 0.6];
hb8(3).FaceColor = [0.3 0.5 0.4];
hb8(4).FaceColor = [0.2 0.25 0.3];
hb8(5).FaceColor = [0.1 0.0 0.2];

% hb1(1).FaceColor = [1.0 1.0 0.2];
% hb1(2).FaceColor = [1.0 0.8 0.2];
% hb1(3).FaceColor = [1.0 0.4 0.2];
% hb1(4).FaceColor = [0.7 0.2 0.0];
% hb1(5).FaceColor = [0.6 0.0 0.0];

% plot(	j1	,	h2o2bw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j2	,	h2o2bw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j3	,	h2o2bw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j4	,	h2o2bw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j5	,	h2o2bw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j6	,	ambbw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j7	,	ambbw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j8	,	ambbw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j9	,	ambbw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j10	,	ambbw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j11	,	caspbw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j12	,	caspbw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j13	,	caspbw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j14	,	caspbw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j15	,	caspbw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j16	,	flcbw1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j17	,	flcbw2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j18	,	flcbw3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j19	,	flcbw4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j20	,	flcbw5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
hold on;					
uistack(hE8,'top');					

hold off
%%
subplot(2,4,8);
bmean1 = [0	0	0	0	0	;	0	0	0	0	0	;	0	0	0	0	0	;	0.000533333	0.000990194	0.000997321	0.000999998	0.001	];

bsd1 = [0	0	0	0	0	;	0	0	0	0	0	;	0	0	0	0	0	;	0.000404145	1.29781E-05	4.64031E-06	2.70901E-09	3.80105E-12	];

hb81 = bar(bmean1,1);

xBar=cell2mat(get(hb81,'XData')).' + [hb81.XOffset];  
hold on
hE81=errorbar(xBar,bmean1,bsd1,'k.','Linewidth',2);

XTickLabel={'a','b','c','d'};
XTick=[1:4];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
%set(gca, 'XTickLabelRotation', 45); 

set(hb81,'EdgeColor','k','LineWidth',2);

ylabel('b');
set(gca,'FontSize',22,'LineWidth',2,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'H_{2}O_{2}','AmB','CASP','FLC'},...
    'XTickLabelRotation',90,'YTickLabelRotation',90);

pbaspect([2 2 1]); 
ylim([1e-7 1e2]); xlim([0 5]);
set(gca,'yscale','log'); grid on;
set(gca,'GridLineStyle','-','MinorGridLineStyle','none');
ax.GridAlpha = 0.5;
ax.MinorGridAlpha = 0.5;
ax.GridColor = [0.9 0.9 0.9]; hold on;
ax.MinorGridColor = [0.9 0.9 0.9];
% ax.GridLineWidth = 1;
% ax.MinorGridLineWidth = 0.2;
box on;
hold on;
direction=[0 1 0];
rotate(hb81,direction,90);
% hb1(1).FaceColor = [0.5 0.8 0.8];
% hb1(2).FaceColor = [0.4 0.75 0.6];
% hb1(3).FaceColor = [0.3 0.5 0.4];
% hb1(4).FaceColor = [0.2 0.25 0.3];
% hb1(5).FaceColor = [0.1 0.0 0.2];

hb81(1).FaceColor = [1.0 1.0 0.2];
hb81(2).FaceColor = [1.0 0.8 0.2];
hb81(3).FaceColor = [1.0 0.4 0.2];
hb81(4).FaceColor = [0.7 0.2 0.0];
hb81(5).FaceColor = [0.6 0.0 0.0];

% plot(	j1	,	h2o2bm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j2	,	h2o2bm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j3	,	h2o2bm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j4	,	h2o2bm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j5	,	h2o2bm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j6	,	ambbm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j7	,	ambbm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j8	,	ambbm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j9	,	ambbm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j10	,	ambbm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j11	,	caspbm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j12	,	caspbm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j13	,	caspbm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j14	,	caspbm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
% plot(	j15	,	caspbm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j16	,	flcbm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j17	,	flcbm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j18	,	flcbm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j19	,	flcbm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j20	,	flcbm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
hold on;					
uistack(hE81,'top');					

hold off

