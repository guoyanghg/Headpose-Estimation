function fea=get3DMeanFeature(folder,N)

 listing = dir([folder '/*.mat']);
 
 FINALRESULT=[];
 
 for i=1:N
  
 F=load(listing(i).name);
 
 F=F.X;
 
%  X=F(1:h-2,:);
%  Y=F(2:h-1,:);
%  Z=F(3:h,:);
%  
%  r=SimpleFeatureCom3(X,Y,Z,3);
 
 FINALRESULT=[FINALRESULT;F];
 
 end
 
  [h,l]=size(FINALRESULT);
  X=FINALRESULT(1:h-2,:);
  Y=FINALRESULT(2:h-1,:);
  Z=FINALRESULT(3:h,:);
  
  fea=SimpleFeatureCom3(X,Y,Z,3);

 
end