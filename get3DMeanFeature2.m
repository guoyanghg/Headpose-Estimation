function fea=get3DMeanFeature2(FINALRESULT)

 
 
  [h,l]=size(FINALRESULT);
  X=FINALRESULT(1:h-2,:);
  Y=FINALRESULT(2:h-1,:);
  Z=FINALRESULT(3:h,:);
  
  fea=SimpleFeatureCom3(X,Y,Z,3);

 
end