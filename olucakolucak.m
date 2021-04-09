clc;clear all;
n=input('kare matrisin satýr ve sutün sayýsýný giriniz=');
for i=1:n% Distaki for satirlar icin   
    for j=1:n  % Icteki for sutunlar icin       
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
A=[n,n];
for x=2:n
    for y=1:n
       A(x,y)=-B(x,y)+m(x,1)*B(1,y);
    end
end
for d=1:n
A(1,d)=B(1,d);
end
A