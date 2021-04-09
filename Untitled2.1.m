clc;clear all;
giris=input('giris=');
bosluk=giris;
yildiz=0;
a=1;
t=giris;
for k=1:giris
    for s=1:yildiz
        fprintf(' ');
    end
    for j=1:bosluk
        fprintf('%d',j);
    end
    num=giris+1;
    num=num-a;
for i=2:t
     num=num-1;
    fprintf('%d',num);
end
    fprintf('\n');
     bosluk=bosluk-1;
     yildiz=yildiz+1;
     t=t-1;
     a=a+1;
end