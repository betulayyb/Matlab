clc;
clear all;
a=input('a say��s� giriniz=');
b=0;
for i=1:a
    c=mod(a,i);
    if c==0;

            b=b+(a/i);
    end
    d=b-a;
end

            if d==a;
                fprintf('%d m�kemmel say�d�r\n',a);
            else 
                fprintf('%d m�kemmel say� de�ildir\n',a);
            end