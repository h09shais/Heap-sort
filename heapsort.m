function [Array] = heapsort(Array)
 
 n = length(Array);
 label = [1:n];
 flag = 0;
 
 if(n <= 1)
     return;
 end;
 
 l = fix(n./2) +1;
 r = n;
 
 
 while(true)
     if(l<=1) 
         a = Array(r);
         b = label(r);
         Array(r) = Array(1);
         
         label(r) = label(1);
         r = r - 1;
         
         if(r==1)
             Array(1) = a;
             label(1) = b;
             return;
         end;
     else         
         l = l - 1;
         a = Array(l);
         b = label(l);
     end
 
  j = l;
 
  
  while(true)
      i = j;
      j = j.*2;
      flag=0;
      
      if(j >= r) 
          if(j==r) 
              flag=1;
          else
              if(j>r)
                  break;
              end
          end
      end
      
      if(flag == 0)
          if(Array(j) < Array(j+1))
              j = j+1;
          end
      end
   
      if(a >= Array(j))
          break;
      end
   
      Array(i) = Array(j);
      label(i) = label(j);
  end
  Array(i) = a;
  label(i) = b;
 end
end 
