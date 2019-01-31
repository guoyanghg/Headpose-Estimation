function fea=getFeatureOfAFolder(folder,N)

 listing = dir([folder '/*.mat']);
 
 FINALRESULT=[];
 
 for i=1:N
  
 F=load(listing(i).name);
 
 F=F.X;
 
 FINALRESULT=[FINALRESULT;F];
 
 end

 fea=FINALRESULT;
 
end