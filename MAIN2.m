f=getFeatureOfAFolder('XFolder',34);
l=getLabelOfAFolder('TFolder',34);
VEC=2:30;
%VEC=10;

%第一组
group1f=f(663:6623,:);
group1l=l(663:6623,:);
group1f=get3DMeanFeature2(group1f);
group1l=get3DLabel2(group1l);

group1ft=f(1:662,:);
group1lt=l(1:662,:);
group1ft=get3DMeanFeature2(group1ft);
group1lt=get3DLabel2(group1lt);



[ krfModel ] = krfTrain( group1f, group1l , 5 , VEC , 10 , 0.5 );

result21=getResult(group1ft,krfModel);
result21=SimpleWeight(result1,result21,2);
mae21=getMAE(group1lt(:,2),result21(:,1));
rmse21=getRMSE(group1lt(:,2),result21(:,1));
acc21=getAccuracy(group1lt(:,2),result21(:,1));


%第二组
group2f=[f(1:662,:);f(2*662+1:6625,:)];
group2l=[l(1:662,:);l(2*662+1:6625,:)];
group2f=get3DMeanFeature2(group2f);
group2l=get3DLabel2(group2l);

group2ft=f(663:2*662,:);
group2lt=l(663:2*662,:);
group2ft=get3DMeanFeature2(group2ft);
group2lt=get3DLabel2(group2lt);



[ krfModel ] = krfTrain( group2f, group2l , 5 , VEC , 10 , 0.5 );

result22=getResult(group2ft,krfModel);
result22=SimpleWeight(result2,result22,2);
mae22=getMAE(group2lt(:,2),result22(:,1));
rmse22=getRMSE(group2lt(:,2),result22(:,1));
acc22=getAccuracy(group2lt(:,2),result22(:,1));

%第三组
group3f=[f(1:662*2,:);f(662*3+1:6625,:)];
group3l=[l(1:662*2,:);l(662*3+1:6625,:)];
group3f=get3DMeanFeature2(group3f);
group3l=get3DLabel2(group3l);

group3ft=f(662*2+1:662*3,:);
group3lt=l(662*2+1:662*3,:);
group3ft=get3DMeanFeature2(group3ft);
group3lt=get3DLabel2(group3lt);



[ krfModel ] = krfTrain( group3f, group3l , 5 , VEC , 10 , 0.5 );

result23=getResult(group3ft,krfModel);
result23=SimpleWeight(result3,result23,2);
mae23=getMAE(group3lt(:,2),result23(:,1));
rmse23=getRMSE(group3lt(:,2),result23(:,1));
acc23=getAccuracy(group3lt(:,2),result23(:,1));

%第四组
group4f=[f(1:662*3,:);f(662*4+1:6625,:)];
group4l=[l(1:662*3,:);l(662*4+1:6625,:)];
group4f=get3DMeanFeature2(group4f);
group4l=get3DLabel2(group4l);

group4ft=f(662*3+1:662*4,:);
group4lt=l(662*3+1:662*4,:);
group4ft=get3DMeanFeature2(group4ft);
group4lt=get3DLabel2(group4lt);



[ krfModel ] = krfTrain( group4f, group4l , 5 , VEC , 10 , 0.5 );

result24=getResult(group4ft,krfModel);
result24=SimpleWeight(result4,result24,2);
mae24=getMAE(group4lt(:,2),result24(:,1));
rmse24=getRMSE(group4lt(:,2),result24(:,1));
acc24=getAccuracy(group4lt(:,2),result24(:,1));

%第五组
group5f=[f(1:662*4,:);f(662*5+1:6625,:)];
group5l=[l(1:662*4,:);l(662*5+1:6625,:)];
group5f=get3DMeanFeature2(group5f);
group5l=get3DLabel2(group5l);

group5ft=f(662*4+1:662*5,:);
group5lt=l(662*4+1:662*5,:);
group5ft=get3DMeanFeature2(group5ft);
group5lt=get3DLabel2(group5lt);



[ krfModel ] = krfTrain( group5f, group5l , 5 , VEC , 10 , 0.5 );

result25=getResult(group5ft,krfModel);
result25=SimpleWeight(result5,result25,2);
mae25=getMAE(group5lt(:,2),result25(:,1));
rmse25=getRMSE(group5lt(:,2),result25(:,1));
acc25=getAccuracy(group5lt(:,2),result25(:,1));

%第六组
group6f=[f(1:662*5,:);f(662*6+1:6625,:)];
group6l=[l(1:662*5,:);l(662*6+1:6625,:)];
group6f=get3DMeanFeature2(group6f);
group6l=get3DLabel2(group6l);

group6ft=f(662*5+1:662*6,:);
group6lt=l(662*5+1:662*6,:);
group6ft=get3DMeanFeature2(group6ft);
group6lt=get3DLabel2(group6lt);



[ krfModel ] = krfTrain( group6f, group6l , 5 , VEC , 10 , 0.5 );

result26=getResult(group6ft,krfModel);
result26=SimpleWeight(result6,result26,2);
mae26=getMAE(group6lt(:,2),result26(:,1));
rmse26=getRMSE(group6lt(:,2),result26(:,1));
acc26=getAccuracy(group6lt(:,2),result26(:,1));

%第七组
group7f=[f(1:662*6,:);f(662*7+1:6625,:)];
group7l=[l(1:662*6,:);l(662*7+1:6625,:)];
group7f=get3DMeanFeature2(group7f);
group7l=get3DLabel2(group7l);

group7ft=f(662*6+1:662*7,:);
group7lt=l(662*6+1:662*7,:);
group7ft=get3DMeanFeature2(group7ft);
group7lt=get3DLabel2(group7lt);



[ krfModel ] = krfTrain( group7f, group7l , 5 , VEC , 10 , 0.5 );

result27=getResult(group7ft,krfModel);
result27=SimpleWeight(result7,result27,2);
mae27=getMAE(group7lt(:,2),result27(:,1));
rmse27=getRMSE(group7lt(:,2),result27(:,1));
acc27=getAccuracy(group7lt(:,2),result27(:,1));

%第八组
group8f=[f(1:662*7,:);f(662*8+1:6625,:)];
group8l=[l(1:662*7,:);l(662*8+1:6625,:)];
group8f=get3DMeanFeature2(group8f);
group8l=get3DLabel2(group8l);

group8ft=f(662*7+1:662*8,:);
group8lt=l(662*7+1:662*8,:);
group8ft=get3DMeanFeature2(group8ft);
group8lt=get3DLabel2(group8lt);



[ krfModel ] = krfTrain( group8f, group8l , 5 , VEC , 10 , 0.5 );

result28=getResult(group8ft,krfModel);
result28=SimpleWeight(result8,result28,2);
mae28=getMAE(group8lt(:,2),result28(:,1));
rmse28=getRMSE(group8lt(:,2),result28(:,1));
acc28=getAccuracy(group8lt(:,2),result28(:,1));

%第九组
group9f=[f(1:662*8,:);f(662*9+1:6625,:)];
group9l=[l(1:662*8,:);l(662*9+1:6625,:)];
group9f=get3DMeanFeature2(group9f);
group9l=get3DLabel2(group9l);

group9ft=f(662*8+1:662*9,:);
group9lt=l(662*8+1:662*9,:);
group9ft=get3DMeanFeature2(group9ft);
group9lt=get3DLabel2(group9lt);



[ krfModel ] = krfTrain( group9f, group9l , 5 , VEC , 10 , 0.5 );

result29=getResult(group9ft,krfModel);
result29=SimpleWeight(result9,result29,2);
mae29=getMAE(group9lt(:,2),result29(:,1));
rmse29=getRMSE(group9lt(:,2),result29(:,1));
acc29=getAccuracy(group9lt(:,2),result29(:,1));

%第十组
group10f=f(1:662*9,:);
group10l=l(1:662*9,:);
group10f=get3DMeanFeature2(group10f);
group10l=get3DLabel2(group10l);

group10ft=f(662*9+1:6625,:);
group10lt=l(662*9+1:6625,:);
group10ft=get3DMeanFeature2(group10ft);
group10lt=get3DLabel2(group10lt);



[ krfModel ] = krfTrain( group10f, group10l , 5 , VEC , 10 , 0.5 );

result210=getResult(group10ft,krfModel);
result210=SimpleWeight(result10,result210,2);
mae210=getMAE(group10lt(:,2),result210(:,1));
rmse210=getRMSE(group10lt(:,2),result210(:,1));
acc210=getAccuracy(group10lt(:,2),result210(:,1));











% f=get3DMeanFeature('XFolder',17);
% l=get3DLabel('TFolder',17);
% VEC=2:30;
% 
% [ krfModel ] = krfTrain( f, l , 5 , VEC , 10 , 0.5 );
% 
% ft=get3DMeanFeature('XFolder_t',17);
% lt=get3DLabel('TFolder_t',17);
% 
% [h,l]=size(ft);
% result2=[];
% for i=1:h
%     r=krfTest(ft(i,:),krfModel);
%     result2=[result2;r];
% end
% 
% result2=SimpleWeight(result1,result2,2);
% 
% mae=getMAE(result2(:,1),lt(:,2));
% 
% rmse=getRMSE(result2(:,1),lt(:,2));
