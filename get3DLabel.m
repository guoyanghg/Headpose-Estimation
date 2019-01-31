function label=get3DLabel(folder,N)

 L=getLabelOfAFolder(folder,N);
 
 [h,l]=size(L);
 
 l1=L(1:h-2,:);
 l2=L(2:h-1,:);
 l3=L(3:h,:);
 
 label=[l1,l2,l3];
 
end