clc;clear all;
n=input('istediðiniz satýr sayýsýný giriniz= ');
a=input('istediðiniz sutün sayýsýný giriniz= ');
B=[ ]; 
for i=1:n % Distaki for satirlar icin   
    for j=1:a  % Icteki for sutunlar icin       
        fprintf('B(%d,%d) = ',i,j);       
        B(i,j)=input(' ');   
    end
end
B
c=2:n;
for e=c:n
for r=1:a-1
for d=r:a-1;
    m(e,r)=B(e,r)/B(r,r);
fprintf('m(%d,%d)=%d \n',e,r,m(e,r))
end
end
end