clc;clear all;
giris=input('giris=');
bosluk=giris-1;
yildiz=1;
for y=1:giris
    for g=1:2*giris-1
        if((g>=y)&&((y+g)<=2*giris))
                    fprintf('%d',g);
            
        else 
            fprintf('');
        end 
    end
        fprintf('\n');

    
end