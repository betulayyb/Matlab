clc;
clear all;
a=input('a sayýýsý giriniz=');
b=0;
for i=1:a
    c=mod(a,i);
    if c==0;

            b=b+(a/i);
    end
    d=b-a;
end

            if d==a;
                fprintf('%d mükemmel sayýdýr\n',a);
            else 
                fprintf('%d mükemmel sayý deðildir\n',a);
            end