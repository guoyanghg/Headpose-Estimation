function result=getResult(ft,krfModel)

[h,l]=size(ft);
result=[];
for i=1:h
    r=krfTest(ft(i,:),krfModel);
    result=[result;r];
end


end