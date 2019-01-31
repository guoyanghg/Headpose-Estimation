function MAE=getMAE(groundtruth,result)

      %两个列向量求平均绝对误差MAE
      
      n=length(result);
      
      MAE=sum(abs(groundtruth-result))/n;

end