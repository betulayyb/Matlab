clc;clear all;
giris=input('giris=');
bosluk=giris-1;
yildiz=1;
for y=2:giris
    for g=1:2*giris-1
        if((g>=y)&&((y+g)<=2*giris))
                 fprintf('*');
        else 
            fprintf(' ');
        end 
    end
        fprintf('\n');

    
end