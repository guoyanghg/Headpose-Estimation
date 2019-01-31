function fea=getFeatureOfAFolder3D(folder,N)

 listing = dir([folder '/*.mat']);
 
 FINALRESULT=[];
 
 for i=1:N
  
 F=load(listing(i).name);
 
 F=F.X;
 
 FINALRESULT=cat(3,FINALRESULT,F);
 
 end

 fea=FINALRESULT;
 
end