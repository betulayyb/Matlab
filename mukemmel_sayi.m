clc;
clear all;
for a=1:100000;
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
            end
end