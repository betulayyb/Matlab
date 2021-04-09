clc;clear all;
satir=input('satýr sayýsý giriniz=');
x=1; sayac=0; y=satir;
for i=1:satir
    z=1;
    if z <= sayac
        num=1;
        fprintf('%d',num);
        if num~=y
            for a=1:y-1
                num=num+1;
                fprintf('%d',num);
            end
        else
            for j=1:y-1
                if num~=1
                    num=num-1;
                    fprintf('%d',num);
                else
                    fprinrf('\n');
                    sayac=sayac+1;
                    y=y-1;
                end
            end    
            fprintf(' ');
            z=z+1;
        end
   end
        
end    