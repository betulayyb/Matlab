clc;clear all;
giris=input('giris='); % tabanýn 7 olmasý için giris=5 olmalý.
 bosluk=giris-1;
yildiz=1;
for k=1:giris
    for j=1:bosluk
        fprintf(' ');
    end
    for s=1:yildiz
        fprintf('*');
    end
    fprintf('\n');
    bosluk=bosluk-1;
    yildiz=yildiz+2;
end
for t=1:giris-1
    for y=1:yildiz
        fprintf(' ');
    end
    for u=1:bosluk
        fprintf('*');
    end
    fprintf('\n');
    bosluk=bosluk-1;
    yildiz=yildiz+1/2;
end