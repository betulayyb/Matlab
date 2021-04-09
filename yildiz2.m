clc;clear all;
giris=input('giris=');
bosluk=giris-1;
yildiz=1;
for k=1:giris
    for j=1:bosluk
        fprintf(' ');
    end
    for s=1:yildiz
        fprintf('%d',s);
    end
    fprintf('\n');
    bosluk=bosluk-1;
    yildiz=yildiz+2;
end
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