clc;clear all;
n=input('istediğiniz satır sayısını giriniz= ');
a=input('istediğiniz sutün sayısını giriniz= ');
B=[ ]; 
for i=1:n % Distaki for satirlar icin   
    for j=1:a  % Icteki for sutunlar icin       
        fprintf('B(%d,%d) = ',i,j);       
        B(i,j)=input(' ');   
    end
end
B
m=[];
 c=2:n;
for r=1:n-1
for e=c:n
for d=r:n-1
end
if e>r
m(e,r)=B(e,r)/B(r,r);
fprintf('m(%d,%d)=%d \n',e,r,m(e,r))
end
end
end



