clc; close all;

aucmodelm = [137.6242383	96.84519385	56.87224409	35.66790191	22.76862372	0	0	76.49865841	-6.763605821	-13.83100364	-19.60564767	-8.377855813
162.0738562	159.2516717	152.0655232	137.0978983	132.8782236	0	0	152.2248764	142.2988587	136.9864414	121.6874489	97.2442587
101.8945269	74.7521728	87.59615921	68.38105054	76.51769097	0	0	57.83577075	12.36961088	11.2972211	14.2926946	12.90772071
137.7356865	140.9977396	135.4999712	138.3133048	136.2333454	0	0	146.7888862	130.474739	136.1803508	140.1147049	130.8393589];

aucmodelsd = [1.946628657	4.12946728	12.03245089	7.383846284	9.237951575	0	0	6.226072631	6.005697485	7.798006809	9.259605359	4.532463252
1.280600761	4.865414611	2.695396654	2.349213115	8.91702312	0	0	5.669906072	3.590146147	4.004845744	6.533739856	3.949593549
8.987082909	3.093000862	34.89495437	3.481037286	5.862221295	0	0	23.22091575	0.474353629	2.695805432	1.03128202	3.559977295
1.194381744	2.325041928	0.88531773	2.83769776	2.993249679	0	0	2.548900368	2.346348899	1.878063857	4.387316139	4.853259701];

aucdatam = [135.5973526	95.2665855	56.57177172	35.64710981	23.7679358 0 0 73.57554983	-7.178875636 -14.27596267 -19.85164506 -7.319769215;
161.1173606	158.0768945	152.8268094	135.9986296	122.6768843	0 0	153.680546 144.3913212 137.2287536 123.7371769 100.5399266;
104.3045924	74.18829784	87.39181809	68.52628456	75.86496404	0 0 171.8727756	54.33627921	13.28815599	12.22835094	15.58320449;
134.3184375	138.3631108	135.3824581	138.9518784	133.5055638	0 0 146.9968082	129.63052 135.8145193 139.6605066 130.3815595];
  
aucdatasd = [2.199557149	4.475269476	12.30998519	7.438321137	8.050218289	0 0	5.80719224	6.187228243	8.067704444	9.594564243	4.494108019;
1.607601609	4.854586497	2.395004398	2.882217482	6.469597326	0 0	5.105733392	3.432682084	4.585874211	8.162634872	5.141446586;
11.24258198	3.268385439	34.41974538	3.664561978	6.090495592	0 0	1.851220257	23.10460976	0.432140034	2.923738621	1.219164041;
5.03719214	1.965580429	1.222287653	1.327113497	2.886501775	0 0	2.165772144	2.328050023	1.81327549	4.085011617	5.195606817];

[num,txt,raw]=xlsread('DecFits_export_fitdataNEW.xlsx','AUC_modelNEW');

i1=num(2:4,1);
i2=num(2:4,2);
i3=num(2:4,3);
i4=num(2:4,4);
i5=num(2:4,5);
i6=num(7:9,1);
i7=num(7:9,2);
i8=num(7:9,3);
i9=num(7:9,4);
i10=num(7:9,5);
i11=num(2:4,7);
i12=num(2:4,8);
i13=num(2:4,9);
i14=num(2:4,10);
i15=num(2:4,11);
i16=num(7:9,7);
i17=num(7:9,8);
i18=num(7:9,9);
i19=num(7:9,10);
i20=num(7:9,11);
i21=num(2:4,13);
i22=num(2:4,14);
i23=num(2:4,15);
i24=num(2:4,16);
i25=num(2:4,17);
i26=num(7:9,13);
i27=num(7:9,14);
i28=num(7:9,15);
i29=num(7:9,16);
i30=num(7:9,17);
i31=num(2:4,19);
i32=num(2:4,20);
i33=num(2:4,21);
i34=num(2:4,22);
i35=num(2:4,23);
i36=num(7:9,19);
i37=num(7:9,20);
i38=num(7:9,21);
i39=num(7:9,22);
i40=num(7:9,23);


%% leave ON
% x coordinates
j1=0.633333333333333;
j2=0.7;
j3=0.766666666666667;
j4=0.833333333333333;
j5=0.9;
j6=1.1;
j7=1.166666666666667;
j8=1.233333333333333;
j9=1.3;
j10=1.366666666666667;
j11=j1+1;
j12=j2+1;
j13=j3+1;
j14=j4+1;
j15=j5+1;
j16=j6+1;
j17=j7+1;
j18=j8+1;
j19=j9+1;
j20=j10+1;
j21=j1+2;
j22=j2+2;
j23=j3+2;
j24=j4+2;
j25=j5+2;
j26=j6+2;
j27=j7+2;
j28=j8+2;
j29=j9+2;
j30=j10+2;
j31=j1+3;
j32=j2+3;
j33=j3+3;
j34=j4+3;
j35=j5+3;
j36=j6+3;
j37=j7+3;
j38=j8+3;
j39=j9+3;
j40=j10+3;

%%
figure(1);
% hb3 = bar(aucdatam,1);
hb3 = bar(aucmodelm,1);

xBar=cell2mat(get(hb3,'XData')).' + [hb3.XOffset];  
hold on
% hE3=errorbar(xBar,aucdatam,aucdatasd,'k.','Linewidth',3);
hE3=errorbar(xBar,aucmodelm,aucmodelsd,'k.','Linewidth',3);

XTickLabel={'a','b','c','d'};
XTick=[1:4];
set(gca, 'XTick',XTick);
set(gca, 'XTickLabel', XTickLabel);
set(gca, 'XTickLabelRotation', 0); 

set(hb3,'FaceColor','flat','EdgeColor','k','LineWidth',3);
set(gca,'FontSize',24,'LineWidth',3,'fontname','arial','xcolor','k','ycolor','k','XTickLabel',{'H_{2}O_{2}','AmB','CASP','FLC'}); 
pbaspect([6 2 1]); ylim([-50 200]); xlim([0 5]); box on;

hold on;
% h4=plot(xBar,aucdatam,'ro','MarkerSize',12,'LineWidth',3);
% h4err=errorbar(xBar,aucdatam,aucdatasd,'r','LineWidth',3,'LineStyle','none');
hold off;

hb3(1).FaceColor = [0.5 0.8 0.8];
hb3(2).FaceColor = [0.4 0.75 0.6];
hb3(3).FaceColor = [0.3 0.5 0.4];
hb3(4).FaceColor = [0.2 0.25 0.3];
hb3(5).FaceColor = [0.1 0.0 0.2]; 

hb3(6).FaceColor = [1.0 1.0 0.2];
hb3(7).FaceColor = [1.0 0.8 0.2];
hb3(8).FaceColor = [1.0 0.4 0.2];
hb3(9).FaceColor = [0.7 0.2 0.0];
hb3(10).FaceColor = [0.6 0.0 0.0];  

hold on;

plot(j1,i1,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j2,i2,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j3,i3,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j4,i4,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j5,i5,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j6,i6,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j7,i7,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j8,i8,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j9,i9,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j10,i10,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j11,i11,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j12,i12,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j13,i13,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j14,i14,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j15,i15,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j16,i16,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j17,i17,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j18,i18,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j19,i19,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j20,i20,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j21,i21,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j22,i22,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j23,i23,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j24,i24,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j25,i25,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j26,i26,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j27,i27,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j28,i28,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j29,i29,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j30,i30,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j31,i31,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j32,i32,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j33,i33,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j34,i34,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j35,i35,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j36,i36,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j37,i37,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j38,i38,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j39,i39,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
plot(j40,i40,'o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor',[0.3 0.3 0.3],'LineWidth',1.5); 
 hold on;
uistack(hE3,'top');
 hold off;

