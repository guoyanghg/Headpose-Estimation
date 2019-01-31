function RMSE=getRMSE(groundtruth,result)

      n=length(result);
      
      RMSE=sqrt(sum(abs(groundtruth-result).^2)/n);

end
