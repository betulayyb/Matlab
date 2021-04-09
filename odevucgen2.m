clc;clear all;
giris=input('giris=');% tabanýn 7 olmasý için giris=4 olmalý.
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
bosluk=giris;
yildiz=0;
a=1;
t=giris;
for k=1:giris
    fprintf(' ');
    for s=1:yildiz
        fprintf(' ');
    end
    for j=1:bosluk
        fprintf('*');
    end
    num=giris+1;
    num=num-a;
for i=3:t
    fprintf('*');
end
    fprintf('\n');
     bosluk=bosluk-1;
     yildiz=yildiz+1;
     t=t-1;
     a=a+1;
end