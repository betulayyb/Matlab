clc;clear all;
a=input('a=');
b=1; sayac=0;
for i=1:b
    g=a/b;
    if g~=1
        b=b+1;
        sayac=sayac+1;
    else
        break;
    end
end
                fprintf('%d sayýsýnýn fack %d dir',a,sayac);