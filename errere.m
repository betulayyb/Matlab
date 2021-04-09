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
p=0;
for r=1:a-1
 d=r:a-1;
    if p==1
    p=d;
      break;
    end
    t=2;
for c=t:n
    t=t-1;
for e=c:n
    m(e,r)=B(e,r)/B(e,r);
    fprintf('m(%d,%d)=%d\n',e,r,m(e,r))
end
end
end

   


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