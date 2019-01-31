% f=getFeatureOfAFolder3D('XFolder',34);
% l=getLabelOfAFolder('TFolder',34);
% 
% ffortrain=f(:,:,663:6625);
% lfortrain=l(663:6625,:);
% 
% ffortest=f(:,:,1:662);
% lfortest=l(1:662,:);
% 
% [m,c,p]=vl_gmm(ffortrain,256);

fv=[];
for i=1:6625

  x=vl_fisher(f(:,:,i),m,c,p);  
  
  fv=[fv;x'];
    
end