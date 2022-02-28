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
[num,txt,raw]=xlsread('ALLparameters.xlsx','TBR1_shaken');

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
figure(1);
qmean = [0.000999904	0.000999741	0.000747382	3.38888E-05	0.000107013	;	0.000966199	0.00085782	0.000414083	0.000744529	0.002476314	;	0.000304811	0.000266321	0.000382915	0.000889989	0.000863879	;	0.078594185	0.096479478	0.098235934	0.097488613	0.097688695	];

qsd = [8.60301E-08	2.35953E-07	0.000231734	1.64538E-05	0.00011468	;	4.52161E-05	0.000513411	0.00010733	0.000143622	0.002505603	;	4.60756E-05	0.000103375	0.000178389	0.000190544	0.000181193	;	0.016898777	0.00066772	0.001718504	0.000274667	0.00103341	];

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
qmean1 = [0.013492912	0.061038977	0.065366915	0.074999997	0.074999133	;	0.788968414	0.527282744	0.008000024	0.009180641	0.008000034	;	0.001	0.001	0.000813909	0.001	0.001	;	4.999999925	5	4.98938581	4.998538359	4.998243244	];

qsd1 = [0.004844042	0.024175663	0.016684342	4.11347E-09	7.52233E-07	;	0.009562031	0.449731854	4.21682E-08	0.00204493	4.96272E-08	;	6.33351E-16	1.38777E-16	0.000322319	4.58677E-16	2.74558E-15	;	1.27397E-07	1.55265E-10	0.014968111	0.0016553	0.00168432	];

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
fmean = [0.247532288	0.210095387	0.154006001	0.169139389	0.217120305	;	0.019796888	0.010850625	0.005	0.006238838	0.012837155	;	0.006641684	0.005000148	0.008333392	0.00500008	0.005000176	;	0.000369746	0.000176846	0.000128873	0.000109486	0.000102914	];

fsd = [0.109697783	0.019272741	0.069678343	0.051147408	0.10578598	;	0.000239979	0.006700551	1.78552E-10	0.00214567	0.006235462	;	0.001966135	1.83659E-07	0.00288665	1.38964E-07	2.97961E-07	;	0.000604922	1.17681E-05	4.22593E-05	5.35961E-06	2.158E-06	];

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
fmean1 = [1.250000001	1.250024634	1.250009907	1.250000048	1.250078969	;	0.001000037	0.001309872	0.005772819	0.006422632	0.008940062	;	0.025	0.025	0.025	0.025	0.025	;	0.011387636	0.006137411	0.005000666	0.005001205	0.005000326	];

fsd1 = [1.01494E-09	4.22606E-05	8.53785E-06	5.03008E-08	0.000107572	;	6.44442E-08	0.00041478	0.000987254	0.00221644	0.001119395	;	4.30192E-15	1.23678E-11	7.71002E-10	2.35073E-15	1.10312E-13	;	0.01106371	0.001970054	7.14845E-07	1.72721E-06	5.15372E-07	];

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
amean = [3.859161794	3.662004919	3.922314194	3.125070689	3.437286797	;	0.401450384	0.401798849	0.400000539	0.400002562	0.699078205	;	4.779580685	4.16264711	3.398962833	3.123515259	3.220146589	;	1.383812461	0.272877555	0.18699888	0.224858761	0.215552328	];

asd = [0.127172871	0.203124369	0.134555749	0.317755423	0.364657008	;	0.002512118	0.003115164	9.33781E-07	4.31159E-06	0.174801677	;	0.336951904	1.042023553	0.691023882	0.2139347	0.201762043	;	1.195028058	0.031840477	0.084637461	0.014162752	0.052782274	];

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
amean1 = [4.000350957	4.000000236	4.013742084	4.000000005	4.000023007	;	1.014032403	1.304898254	1.999951852	1.999898802	1.999999978	;	1.713796367	1.5	1.577923365	1.556525121	1.502164021	;	20.00000005	24.99999969	20.2583406	20.64462921	20.52142501	];

asd1 = [0.000607874	3.98475E-07	0.023801851	7.52048E-09	2.88772E-05	;	0.012168091	0.485584314	4.9801E-05	0.000164158	2.70688E-08	;	0.215909026	7.37277E-12	0.134967228	0.097904381	0.003748193	;	7.2722E-08	8.660253509	0.225317957	0.46688445	0.655645886	];

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
pmean = [0.680341442	0.630158764	0.639494808	0.653710861	0.600922106	;	0.49999716	0.499984644	0.412787537	0.320764118	0.300970088	;	2.087485492	2.226317703	2.395950358	2.003218575	2.129373051	;	8.910260631	11.74163522	11.86752425	11.79298603	11.82256235	];

psd = [0.043035159	0.008283688	0.014897536	0.01327779	0.082719222	;	4.91842E-06	2.65934E-05	0.07554239	0.010564837	0.001680242	;	0.132419289	0.252395178	0.180219165	0.005573543	0.118023269	;	3.477983687	0.050453751	0.126677805	0.014810874	0.081264336	];

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
pmean1 = [0.03	0.02	0.020538441	0.015000004	0.015000652	;	0.286048557	0.209394409	0.05	0.05	0.05000001	;	0.562643175	0.25	0.684227239	0.523905143	0.590371082	;	2.499999975	0.500000093	0.816835018	1.390935493	1.47376496	];

psd1 = [4.47815E-12	0.008660254	0.008233659	7.39408E-09	1.1255E-06	;	0.019137581	0.138096108	0	9.52668E-15	1.74562E-08	;	0.272627551	3.32486E-10	0.314329203	0.150753248	0.245045838	;	1.732050786	1.60265E-07	0.322824651	0.54195393	0.297962821	];

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
rmean = [2.963695819	3.185501273	3.047700627	2.866822359	3.513975484	;	1.50001069	1.500066903	1.6477723	1.737507793	2.027895759	;	0.712397897	0.537284719	0.399452601	0.594820532	0.524021133	;	4.459902114	0.462614458	0.287268257	0.393690554	0.351659532	];

rsd = [0.318559561	0.120025833	0.204393607	0.197567325	0.989356544	;	1.8516E-05	0.000115865	0.255773911	0.18920587	0.842185754	;	0.132479544	0.211314568	0.172256853	0.11519227	0.114290372	;	4.924123826	0.070014267	0.178097348	0.023659807	0.110966473	];

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
rmean1 = [2.500000003	3.166666662	2.833340665	3.499999676	3.499956003	;	0.794662652	1.513987173	3	3	2.99999989	;	0.476325874	0.115050247	0.139444397	0.119113077	0.14018269	;	21.66666691	34.99999943	31.47566214	31.27780183	29.39580052	];

rsd1 = [4.49712E-09	0.577350265	0.57734392	4.86061E-07	7.62037E-05	;	0.131775348	1.287193724	0	1.15378E-14	1.90748E-07	;	0.278410795	0.004661898	0.068317578	0.03310482	0.069598461	;	11.54700517	9.93602E-07	2.545731749	3.737945332	1.993500134	];

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
dmean = [1.098389496	1.043682714	1.044975153	1.000032622	1.000005219	;	0.199999982	0.199999738	0.178272826	0.126555909	0.121488088	;	0.011471159	0.010415077	0.013337704	0.010000315	0.010000069	;	0.228175809	0.247997562	0.248967234	0.248428709	0.248571049	];

dsd = [0.002787828	0.051071153	0.032561401	5.64959E-05	6.02588E-06	;	3.1805E-08	4.53149E-07	0.006949756	0.006438439	0.018658784	;	0.00193624	0.000715041	0.002879181	5.45167E-07	9.62481E-08	;	0.024729524	0.000369469	0.000996394	0.000189646	0.000692386	];

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
dmean1 = [1.066667631	1.099997163	1.033333364	1.000036885	1.087153919	;	0.192330908	0.18	0.14	0.14	0.140000001	;	0.01	0.011390637	0.011666675	0.01	0.01070805	;	0.236092152	0.205221974	0.203093908	0.201639774	0.202820021	];

dsd1 = [0.05773311	4.91388E-06	0.057734998	6.38866E-05	0.01173903	;	0.007480134	0.034641016	0	1.15538E-14	9.21939E-10	;	7.29669E-13	0.002408654	0.002886744	2.94667E-15	0.001226378	;	0.024089096	0.009044684	0.002700779	0.002645155	0.003044722	];

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
kmean = [0.495994221	0.499998138	0.166524466	0.001123505	0.002284817	;	0.100000001	0.10000001	0.1	0.1	0.161804239	;	1.268905869	1.21680078	1.211700947	1.666664941	1.422655782	;	3E-06	3E-06	3E-06	3E-06	3E-06	];

ksd = [0.006762848	2.72143E-06	0.229018801	0.000168049	0.00206897	;	9.22664E-10	1.81545E-08	7.50665E-15	3.60845E-15	0.078405257	;	0.154347054	0.293867212	0.366676794	0.577348774	0.510469486	;	4.18368E-15	1.05053E-14	1.20352E-14	9.71314E-15	5.93864E-15	];

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
kmean1 = [0.482138309	0.90822941	0.510255347	0.339092275	0.300026876	;	0.052318628	0.053922638	0.052666641	0.055895422	0.05	;	1.283538162	1.5	1.074256954	1.429924611	1.384078232	;	1E-06	4E-06	1E-06	1E-06	1E-06	];

ksd1 = [0.315463789	0.526984614	0.128357633	0.011257913	2.18954E-05	;	0.002058789	0.00399231	0.004618757	0.010211171	6.80062E-13	;	0.211315122	7.60601E-11	0.51559623	0.121374135	0.200782392	;	1.88806E-14	5.19615E-06	4.66923E-16	7.72149E-16	2.73583E-13	];

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
bmean = [0.00000	0.00000	0.00000	0.00000	0.00000	;	0.00000	0.00000	0.00000	0.00000	0.00000	;	0.00000	0.00000	0.00000	0.00000	0.00000	;	4.40745E-06	4.11813E-06	4.05943E-06	4.09429E-06	4.08646E-06	];

bsd = [0.00000	0.00000	0.00000	0.00000	0.00000	;	0.00000	0.00000	0.00000	0.00000	0.00000	;	0.00000	0.00000	0.00000	0.00000	0.00000	;	5.59419E-07	2.75997E-08	5.73462E-08	8.41591E-09	3.67876E-08	];

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
bmean1 = [0.00000	0.00000	0.00000	0.00000	0.00000	;	0.00000	0.00000	0.00000	0.00000	0.00000	;	0.00000	0.00000	0.00000	0.00000	0.00000	;	0.190000004	0.10308131	0.261549072	0.365375256	0.335810072	];

bsd1 = [0.00000	0.00000	0.00000	0.00000	0.00000	;	0.00000	0.00000	0.00000	0.00000	0.00000	;	0.00000	0.00000	0.00000	0.00000	0.00000	;	0.268467872	0.097263122	0.035333879	0.111096998	0.140163826	];

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
plot(	j16	,	flcbm1	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j17	,	flcbm2	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j18	,	flcbm3	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j19	,	flcbm4	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(	j20	,	flcbm5	,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
hold on;					
uistack(hE81,'top');					

hold off

