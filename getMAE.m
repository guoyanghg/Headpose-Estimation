function MAE=getMAE(groundtruth,result)

      %������������ƽ���������MAE
      
      n=length(result);
      
      MAE=sum(abs(groundtruth-result))/n;

end