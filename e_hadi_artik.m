clc;clear all;
B=[2 -1 -1 3 9;6 -2 3 0 11;-4 2 3 -3 -3; 2 0 4 -7 -14];
B
YONTEM=input('emilasyon için 1 e jorden icin 2 ye basýnýz LU için 3 e basýnýz = ');
if YONTEM==1;
    m=[];
for e=2:4
m(e,1)=B(e,1)/B(1,1);
fprintf('m(%d,1)=%d \n',e,m(e,1))
end

A=[4,5];
for x=2:4
    for y=1:5
       A(x,y)=-B(x,y)+m(x,1)*B(1,y);
    end
end
for d=1:5
A(1,d)=B(1,d);
end
A
for e=3:4
m(e,2)=A(e,2)/A(2,2);
fprintf('m(%d,2)=%d \n',e,m(e,2))
end
C=[4,5];
for x=3:4
    for y=1:5
       C(x,y)=-A(x,y)+m(x,2)*A(2,y);
    end
end
for d=1:5
    p=1:2;
C(p,d)=A(p,d);
end
C
for e=4:4
m(e,3)=C(e,3)/C(3,3);
fprintf('m(%d,3)=%d \n',e,m(e,3))
end
D=[4,5];
for x=3:4
    for y=1:5
       D(4,y)=-C(4,y)+m(4,3)*C(3,y);
    end
end
for d=1:5
    p=1:3;
D(p,d)=C(p,d);
end
D
o4=D(4,5)/D(4,4);
o4
o3=D(3,5)-(D(3,4)*o4);
o3
o2=(D(2,3)*o3)+(D(2,4)*o4)-D(2,5);
o2
o1=(o2+o3-(D(1,4)*o4)+D(1,5))/2;
o1
elseif YONTEM==2;
m=[];
for e=2:4
m(e,1)=B(e,1)/B(1,1);
fprintf('m(%d,1)=%d \n',e,m(e,1))
end

G=[4,5];
for x=2:4
    for y=1:5
       G(x,y)=B(x,y)-m(x,1)*B(1,y);
    end
end
for d=1:5
G(1,d)=B(1,d);
end
G
for e=1:4
    if e==2;
    else
m(e,2)=G(e,2)/G(2,2);
fprintf('m(%d,2)=%d \n',e,m(e,2))
    end 
end
H=[4,5];
for x=1:4
    if x==2;
    for d=1:5
H(x,d)=G(x,d);
    end
    else
    for y=1:5
       H(x,y)=G(x,y)-m(x,2)*G(2,y);
    end
    end
end

H
for e=1:4
     if  e==3;
    else
m(e,3)=H(e,3)/H(3,3);
fprintf('m(%d,3)=%d \n',e,m(e,3))
     end
end
I=[4,5];
for x=1:4
    if x==3
        for d=1:5
        I(x,d)=H(x,d);
        end
    else
    for y=1:5
       I(x,y)=H(x,y)-m(x,3)*H(3,y);
    end
    end
end
I
for e=1:3
m(e,4)=I(e,4)/I(4,4);
fprintf('I(%d,4)=%d \n',e,m(e,4))
end
J=[4,5];
for x=1:4
    if x==4
        for d=1:5
        J(x,d)=I(x,d);
        end
    else
    for y=1:5
       J(x,y)=I(x,y)-m(x,4)*I(4,y);
    end
    end
end
J
else YONTEM=3;
    m=[];
for e=2:4
m(e,1)=B(e,1)/B(1,1);
fprintf('m(%d,1)=%d \n',e,m(e,1))
end

A=[4,5];
for x=2:4
    for y=1:5
       A(x,y)=-B(x,y)+m(x,1)*B(1,y);
    end
end
for d=1:5
A(1,d)=B(1,d);
end
A
for e=3:4
m(e,2)=A(e,2)/A(2,2);
fprintf('m(%d,2)=%d \n',e,m(e,2))
end
C=[4,5];
for x=3:4
    for y=1:5
       C(x,y)=-A(x,y)+m(x,2)*A(2,y);
    end
end
for d=1:5
    p=1:2;
C(p,d)=A(p,d);
end
C
for e=4:4
m(e,3)=C(e,3)/C(3,3);
fprintf('m(%d,3)=%d \n',e,m(e,3))
end
U=[4,4];
for x=3:4
    for y=1:4
       U(4,y)=-C(4,y)+m(4,3)*C(3,y);
    end
end
for d=1:4
    p=1:3;
U(p,d)=C(p,d);
end
U
L=[1 0 0 0 ; m(2,1) 1 0 0 ; m(3,1) m(3,2) 1 0 ; m(4,1) m(4,2) m(4,3) 1 ]
b=[9;11;-3;-14]
y1=L(1,1)*b(1,1);
y2=-3*y1+b(2,1)*L(2,2);
y3=2*y1+b(3,1)*L(3,3);
y4=y1+y2-y3+14;
x4=y4/U(4,4)
x3=(y3-3*x4)/U(3,3)
x2=-16-(6*x3)+(9*x4)
x1=((9-U(1,2)*x2)-(U(1,3)*x3)-(U(1,4)*x4))/U(1,1)
y=[y1;y2;y3;y4]
x=[x1;x2;x3;x4]
end