    clc;clear all;
giris=input('giris=');
bosluk=giris-1;
yildiz=1; 
a=0;
b=0;
for k=1:giris
    
    for j=1:bosluk
        fprintf(' ');
    end
    
    for s=1:yildiz
        fprintf('%d',s);
    end
    for c=2:k
        k=k-1;
        fprintf('%d',k);
        
    end
    fprintf('\n');
    
    bosluk=bosluk-1;
    yildiz=yildiz+1;
    a=a+1;

end