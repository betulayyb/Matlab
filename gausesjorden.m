clc;clear all;
B=[2 -1 -1 3 9;6 -2 3 0 11;-4 2 3 -3 -3; 2 0 4 -7 -14];
B

m=[];
for e=2:4
m(e,1)=B(e,1)/B(1,1);
fprintf('m(%d,1)=%d \n',e,m(e,1))
end

A=[4,5];
for x=2:4
    for y=1:5
       A(x,y)=B(x,y)-m(x,1)*B(1,y);
    end
end
for d=1:5
A(1,d)=B(1,d);
end
A
for e=1:4
    if e==2;
    else
m(e,2)=A(e,2)/A(2,2);
fprintf('m(%d,2)=%d \n',e,m(e,2))
    end 
end
C=[4,5];
for x=1:4
    if x==2;
    for d=1:5
C(x,d)=A(x,d);
    end
    else
    for y=1:5
       C(x,y)=A(x,y)-m(x,2)*A(2,y);
    end
    end
end

C
for e=1:4
     if  e==3;
    else
m(e,3)=C(e,3)/C(3,3);
fprintf('m(%d,3)=%d \n',e,m(e,3))
     end
end
D=[4,5];
for x=1:4
    if x==3
        for d=1:5
        D(x,d)=C(x,d);
        end
    else
    for y=1:5
       D(x,y)=C(x,y)-m(x,3)*C(3,y);
    end
    end
end
D
for e=1:3
m(e,4)=D(e,4)/D(4,4);
fprintf('m(%d,4)=%d \n',e,m(e,4))
end
F=[4,5];
for x=1:4
    if x==4
        for d=1:5
        F(x,d)=D(x,d);
        end
    else
    for y=1:5
       F(x,y)=D(x,y)-m(x,4)*D(4,y);
    end
    end
end

F