clc;clear all;
satir=input('satir sayisini giriniz=');
n=1;
k=0;
disp('PASCAL ÜCGENÝ');
for n=1:satir
    z=0;
    for z=z:satir-n-1
        fprintf('%d  ','');
        z=z+1;
    end
    for k=k:n-1
        factor=(factorial(n-1)/(factorial(k)*factorial(n-k-1)));
        fprintf('%d   ',factor);
        k=k+1;
    end
    fprintf('\n');
    n=n+1;
    k=0;
end
        