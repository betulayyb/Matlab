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