listing=dir();
pic=cell(0);
pic2=cell(0);
pic3=cell(0);
num=1;
for i=1:length(listing)
    
   name=listing(i).name;
   n=length(name);
   
   listing2 = dir([name '/*.jpg']);
   for j=1:length(listing2)
       name2 = [name '/' listing2(j).name];
       img = imread( name2 );
       pic{num}=img;
       num=num+1;
   end
 %�޸����������Ըı���ȡ�������ļ�����1�Ż���2��
 %  if name(1)=='P'
 %   createDataMat3(name,64,64); %��ȡmcface����������ǩ�ĺ���
 %  end
   
 
end

for k=1:(num-1)/2
       pic2{k}=(pic{2*k}+pic{2*k-1})/2;
end
   
for w=1:k/2
       pic3{w}=(pic2{2*w}+pic2{2*w-1})/2;
end