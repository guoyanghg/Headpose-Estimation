function acc=getAccuracy(groundtruth,result)

      n=length(result);
      
      x=0;
      
      for i=1:n
          
          %´Ö²ÚµÄ½Ç¶È·ÖÎö
          
          if result(i)>-12.5&&result(i)<12.5
              result(i)=0;
          end
          
          if result(i)>12.5&&result(i)<34
              result(i)=23;
          end
          
          if result(i)>34&&result(i)<57
              result(i)=45;
          end
          
          if result(i)>57&&result(i)<79
              result(i)=68;
          end
          
          if result(i)>79
              result(i)=90;
          end
          
          if result(i)<-12.5&&result(i)>-34
              result(i)=-23;
          end
          
          if result(i)<-34&&result(i)>-57
              result(i)=-45;
          end
          
          if result(i)<-57&&result(i)>-79
              result(i)=-68;
          end
          
          if result(i)<-79
              result(i)=-90;
          end
           
              
          if result(i)==groundtruth(i)
              
              x=x+1;
              
          end
          
      end
      
      acc=x/n;

end