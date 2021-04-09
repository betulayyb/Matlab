clc;clear all;
satir=input('pascal ücgeni:');
n=1;
k=0;
disp('pascal üçgeni');
for n=1:satir
    z=0;
    for z=z:satir-n-1
        fprintf('%d',' ');
        z=z+1;
    end
    for k=k:n-1
        faktor=(factoriyel(n-1))/(factoriyel(k))*(factoriyel(n-k-1));
        fprintf('%d',faktor);
        k=k+1;
    end
    fprintf('\n');
    n=n+1;
    k=0;
end