vmae=[mae1,mae2,mae3,mae4,mae5,mae6,mae7,mae8,mae9,mae10];
vrmse=[rmse1,rmse2,rmse3,rmse4,rmse5,rmse6,rmse7,rmse8,rmse9,rmse10];
vacc=[acc1,acc2,acc3,acc4,acc5,acc6,acc7,acc8,acc9,acc10];

vmae2=[mae21,mae22,mae23,mae24,mae25,mae26,mae27,mae28,mae29,mae210];
vrmse2=[rmse21,rmse22,rmse23,rmse24,rmse25,rmse26,rmse27,rmse28,rmse29,rmse210];
vacc2=[acc21,acc22,acc23,acc24,acc25,acc26,acc27,acc28,acc29,acc210];


meanmae=mean(vmae);
meanrmse=mean(vrmse);
meanacc=mean(vacc);

maestd=std(vmae);
rmsestd=std(vrmse);
accstd=std(vacc);

meanmae2=mean(vmae2);
meanrmse2=mean(vrmse2);
meanacc2=mean(vacc2);

maestd2=std(vmae2);
rmsestd2=std(vrmse2);
accstd2=std(vacc2);