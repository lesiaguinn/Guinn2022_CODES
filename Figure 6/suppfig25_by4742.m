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
[num,txt,raw]=xlsread('ALLparameters.xlsx','BY4742');

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

%mt
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
figure(1);
qmean = [0.00047325	0.000369799	0.000337745	0.000385608	0.000419461	;	0.002441198	0.005781253	0.007518087	0.004046155	0.002012963	;	0.029800641	0.053724262	0.050717881	0.091631771	0.07	;	0.044975473	0.044999747	0.039541465	0.045109091	0.06607752	];

qsd = [3.6676E-05	0.000116881	0.00014067	0.000102247	7.8419E-05	;	0.001019278	0.003134128	0.002787329	0.004012044	0.000574778	;	0.013758202	0.034885305	0.0357837	0.014494198	0.051961524	;	0.025937301	0.025980324	0.008542318	0.025886804	0.015454189	];

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
figure(2);
qmean1 = [0.000379669	0.000127902	0.001097354	0.001537309	0.000100885	;	0.054024173	0.158090247	0.238064659	0.300281182	0.49991924	;	0.004952444	0.00781161	0.008983389	0.013000973	0.013918939	;	1.499991452	1.500000001	0.854255023	1.595951978	1.999999998	];

qsd1 = [8.94146E-05	1.61005E-05	0.000503901	0.001266513	1.53299E-06	;	0.049860511	0.016014464	0.180734952	0.072379011	0.363847292	;	0.00085212	0.002844189	0.001749491	0.002007729	0.002229966	;	0.86601756	0.866025403	0.3225149	0.699831703	2.69928E-09	];

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

figure(3);
fmean = [0.028263811	0.022807929	0.023602234	0.029506179	0.030796624	;	0.156496943	0.107794404	0.098209045	0.052387697	0.043867216	;	0.25	0.249999999	0.213713643	0.233190923	0.164905728	;	0.030870151	0.038643748	0.035122693	0.045059192	0.032591566	];

fsd = [0.010283813	0.003770498	0.003141219	0.009094937	0.008095281	;	0.023815788	0.018303996	0.024127095	0.030423405	0.010664349	;	1.00086E-14	1.4697E-09	0.062845634	0.024820633	0.060613409	;	0.017575843	0.019669606	0.017947094	0.00855773	0.020495814	];

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
figure(4);
fmean1 = [0.079929082	0.079991654	0.079993007	0.069999269	0.053696048	;	0.120437215	0.149341776	0.144849539	0.14519859	0.137536175	;	0.262775492	0.25006418	0.250147569	0.250044561	0.25	;	0.033810693	0.029543021	0.038785844	0.042603819	0.047995124	];

fsd1 = [0.000108442	1.12065E-05	6.46902E-06	0.017299298	0.003188676	;	0.000368289	0.001108585	0.005591615	0.008123894	0.010946528	;	0.022124151	5.91593E-05	0.000244747	3.99831E-05	5.97742E-14	;	0.016826768	0.018538133	0.014429108	0.003185352	0.002661185	];

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

figure(5);
amean = [4.088712845	3.413188215	3.06956107	2.305076216	2.301828491	;	1.416756061	0.988382231	0.685306099	0.542921311	0.552812478	;	3.201066539	3.426299036	3.198119469	3.174629509	2.753585149	;	0.662761424	0.882269868	1.249019228	0.956254962	1.819495677	];

asd = [0.726653874	0.661732411	0.045028072	0.523115808	0.792346063	;	0.298548692	0.146119622	0.041990052	0.020076147	0.105551575	;	0.517767943	0.127653815	0.522872399	0.288918521	0.294870032	;	0.411939698	0.04373769	0.095383051	0.2518442	1.595693108	];

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
figure(6);
amean1 = [3.96177144	3.999998389	3.646415555	3.035360774	1.462469304	;	1.321890077	4.819161593	3.784176586	3.654236861	2.640143054	;	3.666697633	3.000221198	3.089421956	3.000206432	3	;	4.946825513	5.181547973	5.31349661	5.44859725	5.491564313	];

asd1 = [0.066169917	2.66747E-06	0.137778824	1.366996651	0.661918417	;	0.524572131	0.170719146	1.057062825	0.75939893	0.449402693	;	1.154435638	0.000300299	0.154817522	0.000298213	8.62834E-12	;	0.958113102	0.551575079	0.323033124	0.089031678	0.014584887	];

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

figure(7);
pmean = [0.383330822	0.47825726	0.542902934	0.506358173	0.54999418	;	0.469473991	0.290572827	0.188615327	0.113614435	0.105822076	;	5.499953649	5.499978545	5.174156497	5.5	4.807414907	;	3.477965599	3.353340052	1.53456499	1.755552805	1.551276183	];

psd = [0.144333202	0.092436468	0.011432015	0.075583708	9.39095E-06	;	0.024399807	0.060443073	0.047876555	0.016832819	0.009285741	;	4.01965E-05	3.71618E-05	0.5643418	0	1.19959257	;	1.77021551	1.986073289	0.476825517	0.705670344	0.47793509	];

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
figure(8);
pmean1 = [0.4	0.390364596	0.38900175	0.370356958	0.359712639	;	0.039300625	0.022733919	0.03928617	0.035748839	0.029363349	;	0.846802484	0.767444592	0.790760458	0.934268831	1.153472564	;	0.033338223	0.033333333	0.025	0.025	0.025000016	];

psd1 = [4.34766E-10	0.007101691	0.019048171	0.026254219	0.006900701	;	0.005319303	0.001462	0.001881379	0.004259498	0.00541347	;	0.0386674	0.017768712	0.020154488	0.050137398	0.057247628	;	0.014429503	0.014433757	1.38614E-15	6.8125E-15	2.82758E-08	];

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

figure(9);
rmean = [48.33341884	46.42903934	45.10334856	45.87029796	45.00109535	;	0.293357958	1.568345565	2.357634117	2.983859318	2.958372917	;	7.883354494	3.795983537	3.415531945	2.5	4.999999878	;	151.8672804	153.1411489	191.7897898	192.1368018	191.5797127	];

rsd = [2.886603235	1.844816628	0.17569516	1.507400137	0.001744703	;	0.180812246	0.463666846	0.381565269	0.02726575	0.070049009	;	0.887357399	0.687028098	1.136195791	0	4.330126808	;	37.87524073	40.08164562	7.244339941	7.018333551	9.030292658	];

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
figure(10);
rmean1 = [0.05	0.077066112	1.225171218	1.405311539	1.368317675	;	0.432111487	0.028114383	0.206326486	0.220264205	0.571186642	;	7.052642941	9.002787559	8.720979909	9.976070738	9.999998963	;	199.9413076	199.9999998	250	250	249.9998041	];

rsd1 = [4.74978E-15	0.013931511	0.056636941	0.189695775	0.118764545	;	0.354837409	0.004807619	0.100786617	0.156296585	0.501698818	;	5.100993314	1.05268173	0.55860603	0.040706897	8.8035E-07	;	86.55169452	86.60254022	0	0	0.000339314	];

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

figure(11);
dmean = [0.36666433	0.304745876	0.34153885	0.400069446	0.436259327	;	0.10668936	0.182767749	0.193129293	0.171936103	0.131600246	;	0.042283092	0.03004396	0.030000112	0.03	0.03	;	0.277364515	0.284148172	0.283311025	0.292464829	0.266666777	];

dsd = [0.115460543	0.003980001	0.058363997	0.08747659	0.056770551	;	0.003706912	0.013803376	0.011483241	0.024697104	0.015039654	;	0.010753489	7.61406E-05	1.73655E-07	0	4.81652E-11	;	0.025319447	0.027456171	0.028800362	0.012451036	0.028867418	];

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
figure(12);
dmean1 = [0.49999987	0.499999691	0.499995757	0.426728553	0.382884198	;	0.195475499	0.169457033	0.187991859	0.187835861	0.199689888	;	0.036666669	0.030000117	0.030011884	0.030001496	0.03	;	0.266672525	0.262563937	0.25	0.25	0.250000207	];

dsd1 = [2.15407E-07	3.51695E-07	7.34465E-06	0.110184921	0.072950614	;	0.004126198	0.004548162	0.010589582	0.010697908	0.000465299	;	0.011547004	1.07243E-07	1.42961E-05	2.59035E-06	3.35862E-11	;	0.028862441	0.021761377	1.84459E-11	8.95139E-14	3.57841E-07	];

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

figure(13);
kmean = [1.429644503	0.941637322	0.784129129	0.898143474	0.818107217	;	2.530155161	4.377795214	4.535023355	2.821069758	0.902898077	;	4.75267581	4.648077773	3.674320564	5	3.366666658	;	3.66667E-05	2.43454E-05	1.81197E-05	1.39394E-05	1.496E-05	];

ksd = [0.06639745	0.497812433	0.403217925	0.53018302	0.243267918	;	0.764090935	1.042073566	0.789333082	1.224930591	0.691979887	;	0.428378062	0.609547177	2.280996891	2.89902E-10	2.829016311	;	2.3094E-05	2.22694E-05	1.12884E-05	6.82325E-06	4.43226E-06	];

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
figure(14);
kmean1 = [2.499722848	2.499122358	2.177654478	1.354071426	0.500383651	;	0.14504717	0.917606226	0.78974158	0.773073656	0.735445768	;	0.1655478	0.013495521	0.007373013	0.00657937	0.005	;	2.33843E-05	1.82484E-05	9.81003E-06	6.78387E-06	5.73409E-06	];

ksd1 = [0.000292541	0.001232809	0.352039158	0.740879986	0.00040784	;	0.077835579	0.017934807	0.265079348	0.19728755	0.237834963	;	0.230625927	0.000503461	0.001271981	0.00025258	9.11912E-15	;	1.19327E-05	1.33039E-05	6.69017E-06	1.4246E-06	1.27148E-06	];

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

figure(15);
bmean = [0	0	0	0	0	;	0	0	0	0	0	;	0	0	0	0	0	;	0.114441488	0.108862118	0.189810665	0.201239275	0.249999969	];

bsd = [0	0	0	0	0	;	0	0	0	0	0	;	0	0	0	0	0	;	0.111615931	0.10195218	0.055225118	0.042258428	5.45256E-08	];

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
figure(16);
bmean1 = [0	0	0	0	0	;	0	0	0	0	0	;	0	0	0	0	0	;	0.008333335	0.008333333	0.008688031	0.009473769	0.01	];

bsd1 = [0	0	0	0	0	;	0	0	0	0	0	;	0	0	0	0	0	;	0.002886749	0.002886751	0.002271805	0.000911459	3.91404E-15	];

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
plot(	j16	,	flcbm1	,'o','MarkerSize',10,'MarkerFaceColor','k','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j17	,	flcbm2	,'o','MarkerSize',10,'MarkerFaceColor','k','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j18	,	flcbm3	,'o','MarkerSize',10,'MarkerFaceColor','k','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j19	,	flcbm4	,'o','MarkerSize',10,'MarkerFaceColor','k','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j20	,	flcbm5	,'o','MarkerSize',10,'MarkerFaceColor','k','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
hold on;					
uistack(hE81,'top');					

hold off

