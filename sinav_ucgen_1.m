clc;clear all;
satir=input('satýr sayýsý giriniz=');
x=1; sayac=0; y=satir;z=1;
    for g=1:satir
if x>=sayac;
    num=1;
    fprintf('%d',num);
    for i=1:y-1
    if num~=y
        num=num+1;
        fprintf('%d',num);
    end;
    end
end
    if z==1
        for j=1:y-1
            y=y-1;
                    fprintf('%d',y);
                      fprintf('\n');
    x=x+1;
    sayac=sayac+1;
    satir=satir-1;
        end
    end     
    fprintf('\n');
    end