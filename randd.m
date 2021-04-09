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
d=2;
for c=d:n
    d=d+1;
end
fprintf('%d=\n',c)
t=n-1;
for r=1:t
    t=t-1;
end
fprintf('%d=\n',r)
A=[n,a];
for x=2:n
    for y=1:a
       A(x,y)=-B(x,y)+m(x,1)*B(1,y);
    end
end

for d=1:a
A(1,d)=B(1,d);
end
A