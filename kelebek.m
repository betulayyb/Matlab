clc;clear all;
giris=input('giris=');
bosluk=giris-1;
yildiz=1;
for g=1:2*giris
   for y=2:2*giris-1
    
        if((g>=y)&&((y+g)<=7*giris))
                 fprintf('  ');
        else 
            fprintf(' *  ');
           
        end 
    end
        fprintf('  \n');

    
end
