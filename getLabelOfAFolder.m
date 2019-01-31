function lab=getLabelOfAFolder(folder,N)

 listing = dir([folder '/*.mat']);
 
 FINALRESULT=[];
 
 for i=1:N
  
 L=load(listing(i).name);
 
 L=L.T;
 
 FINALRESULT=[FINALRESULT;L];
 
 end

 lab=FINALRESULT;
 
end