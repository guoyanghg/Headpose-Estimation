
f=getFeatureOfAFolder('XFolder',34);
l=getLabelOfAFolder('TFolder',34);
% VEC=2:30;
VEC=8;

%第一组
group1f=f(663:6625,:);
group1l=l(663:6625,:);

group1ft=f(1:662,:);
group1lt=l(1:662,:);


[ krfModel ] = krfTrain( group1f, group1l , 5 , 8 , 10 , 0.5 );

result1=getResult(group1ft,krfModel);
mae1=getMAE(group1lt(:,1),result1(:,1));
rmse1=getRMSE(group1lt(:,1),result1(:,1));
acc1=getAccuracy(group1lt(:,1),result1(:,1));


%第二组
group2f=[group1ft;f(2*662+1:6625,:)];
group2l=[group1lt;l(2*662+1:6625,:)];

group2ft=f(663:2*662,:);
group2lt=l(663:2*662,:);


[ krfModel ] = krfTrain( group2f, group2l , 5 , VEC , 10 , 0.5 );

result2=getResult(group2ft,krfModel);
mae2=getMAE(group2lt(:,1),result2(:,1));
rmse2=getRMSE(group2lt(:,1),result2(:,1));
acc2=getAccuracy(group2lt(:,1),result2(:,1));


%第三组

group3f=[group1ft;group2ft;f(662*3+1:6625,:)];
group3l=[group1lt;group2lt;l(662*3+1:6625,:)];

group3ft=f(662*2+1:662*3,:);
group3lt=l(662*2+1:662*3,:);


[ krfModel ] = krfTrain( group3f, group3l , 5 , VEC , 10 , 0.5 );

result3=getResult(group3ft,krfModel);
mae3=getMAE(group3lt(:,1),result3(:,1));
rmse3=getRMSE(group3lt(:,1),result3(:,1));
acc3=getAccuracy(group3lt(:,1),result3(:,1));


%第四组
group4f=[group1ft;group2ft;group3ft;f(662*4+1:6625,:)];
group4l=[group1lt;group2lt;group3lt;l(662*4+1:6625,:)];

group4ft=f(662*3+1:662*4,:);
group4lt=l(662*3+1:662*4,:);


[ krfModel ] = krfTrain( group4f, group4l , 5 , VEC , 10 , 0.5 );

result4=getResult(group4ft,krfModel);
mae4=getMAE(group4lt(:,1),result4(:,1));
rmse4=getRMSE(group4lt(:,1),result4(:,1));
acc4=getAccuracy(group4lt(:,1),result4(:,1));

%第五组
group5f=[group1ft;group2ft;group3ft;group4ft;f(662*5+1:6625,:)];
group5l=[group1lt;group2lt;group3lt;group4lt;l(662*5+1:6625,:)];

group5ft=f(662*4+1:662*5,:);
group5lt=l(662*4+1:662*5,:);


[ krfModel ] = krfTrain( group5f, group5l , 5 , VEC , 10 , 0.5 );

result5=getResult(group5ft,krfModel);
mae5=getMAE(group5lt(:,1),result5(:,1));
rmse5=getRMSE(group5lt(:,1),result5(:,1));
acc5=getAccuracy(group5lt(:,1),result5(:,1));

%第六组
group6f=[group1ft;group2ft;group3ft;group4ft;group5ft;f(662*6+1:6625,:)];
group6l=[group1lt;group2lt;group3lt;group4lt;group5lt;l(662*6+1:6625,:)];

group6ft=f(662*5+1:662*6,:);
group6lt=l(662*5+1:662*6,:);


[ krfModel ] = krfTrain( group6f, group6l , 5 , VEC , 10 , 0.5 );

result6=getResult(group6ft,krfModel);
mae6=getMAE(group6lt(:,1),result6(:,1));
rmse6=getRMSE(group6lt(:,1),result6(:,1));
acc6=getAccuracy(group6lt(:,1),result6(:,1));

%第七组
group7f=[group1ft;group2ft;group3ft;group4ft;group5ft;group6ft;f(662*7+1:6625,:)];
group7l=[group1lt;group2lt;group3lt;group4lt;group5lt;group6lt;l(662*7+1:6625,:)];

group7ft=f(662*6+1:662*7,:);
group7lt=l(662*6+1:662*7,:);


[ krfModel ] = krfTrain( group7f, group7l , 5 , VEC , 10 , 0.5 );

result7=getResult(group7ft,krfModel);
mae7=getMAE(group7lt(:,1),result7(:,1));
rmse7=getRMSE(group7lt(:,1),result7(:,1));
acc7=getAccuracy(group7lt(:,1),result7(:,1));

%第八组
group8f=[group1ft;group2ft;group3ft;group4ft;group5ft;group6ft;group7ft;f(662*8+1:6625,:)];
group8l=[group1lt;group2lt;group3lt;group4lt;group5lt;group6lt;group7lt;l(662*8+1:6625,:)];

group8ft=f(662*7+1:662*8,:);
group8lt=l(662*7+1:662*8,:);


[ krfModel ] = krfTrain( group8f, group8l , 5 , VEC , 10 , 0.5 );

result8=getResult(group8ft,krfModel);
mae8=getMAE(group8lt(:,1),result8(:,1));
rmse8=getRMSE(group8lt(:,1),result8(:,1));
acc8=getAccuracy(group8lt(:,1),result8(:,1));

%第九组
group9f=[group1ft;group2ft;group3ft;group4ft;group5ft;group6ft;group7ft;group8ft;f(662*9+1:6625,:)];
group9l=[group1lt;group2lt;group3lt;group4lt;group5lt;group6lt;group7lt;group8lt;l(662*9+1:6625,:)];

group9ft=f(662*8+1:662*9,:);
group9lt=l(662*8+1:662*9,:);


[ krfModel ] = krfTrain( group9f, group9l , 5 , VEC , 10 , 0.5 );

result9=getResult(group9ft,krfModel);
mae9=getMAE(group9lt(:,1),result9(:,1));
rmse9=getRMSE(group9lt(:,1),result9(:,1));
acc9=getAccuracy(group9lt(:,1),result9(:,1));

%第十组
group10f=f(1:662*9,:);
group10l=l(1:662*9,:);

group10ft=f(662*9+1:6625,:);
group10lt=l(662*9+1:6625,:);


[ krfModel ] = krfTrain( group10f, group10l , 5 , VEC , 10 , 0.5 );

result10=getResult(group10ft,krfModel);
mae10=getMAE(group10lt(:,1),result10(:,1));
rmse10=getRMSE(group10lt(:,1),result10(:,1));
acc10=getAccuracy(group10lt(:,1),result10(:,1));



% [ krfModel ] = krfTrain( f, l , 5 , VEC , 10 , 0.5 );
% 
% ft=getFeatureOfAFolder('XFolder_t',17);
% lt=getLabelOfAFolder('TFolder_t',17);
% 
% [h,l]=size(ft);
% result1=[];
% for i=1:h
%     r=krfTest(ft(i,:),krfModel);
%     result1=[result1;r];
% end
% 
% mae=getMAE(result1(:,1),lt(:,1));
% rmse=getRMSE(result1(:,1),lt(:,1));
% acc=getAccuracy(lt(:,1),result1(:,1));
