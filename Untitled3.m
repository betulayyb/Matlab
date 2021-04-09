clc;clear all;
satir=input('satır sayısı giriniz=');
x=1; sayac=0; y=satir; z=1;
for a=1:y
    z=1;
if z>=sayac;
    z=z+1;
    num=1;
    fprintf('%d',num);
       for i=1:y-1
           if num~=y
           num=num+1;
           fprintf('%d',num);
               if num>=1
               num=num-1;
                  for j=1:y-1
                      y=y-1;
                      fprintf('%d',y);
                  end
    
                end
           end

       end
      
    fprintf('\n');
    x=x+1;
    sayac=sayac+1;
    y=y-1;
    end  

end


       