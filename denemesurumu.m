clc;clear all;
for i=1:4% Distaki for satirlar icin   
    for j=1:4  % Icteki for sutunlar icin       
        fprintf('B(%d,%d) = ',i,j);       
        B(i,j)=input(' ');   
    end
end
B

m=[];
for e=2:4
m(e,1)=B(e,1)/B(1,1);
fprintf('m(%d,1)=%d \n',e,m(e,1))
end

A=[4,4];
for x=2:4
    for y=1:4
       A(x,y)=-B(x,y)+m(x,1)*B(1,y);
    end
end
for d=1:4
A(1,d)=B(1,d);
end
A
for e=1:4
if e==2
else
         m(e,2)=A(e,2)/A(2,2);
fprintf('m(%d,2)=%d \n',e,m(e,2))
end
end
C=[4,4];
for x=1:4
if x==2
    for d=1:4
C(e,d)=A(e,d);
    end
else
     for y=1:4
       C(x,y)=-A(x,y)+m(x,2)*A(2,y);
     end
end
end
C
for e=4:4
m(e,3)=C(e,3)/C(3,3);
fprintf('m(%d,3)=%d \n',e,m(e,3))
end
D=[4,4];
    for y=1:4
       D(4,y)=-C(4,y)+m(4,3)*C(3,y);
    end
for d=1:4
    p=1:3;
D(p,d)=C(p,d);
end
D