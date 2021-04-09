clc;clear all;
%1. tablo: Euler Transformasyon Yöntemi
for a=1:6 % [|((-1)^i)|/i+1] förmülünden ai deðerleri bulundu %
    b=1:6;
    c=b+10;
    d(a)=1;
    e(a)=d(a)/c(a);
end
for f=0:4 % [ai(i+1)-a(i+2)] den delta ai leri bulundu %
    g(f+1)= e(f+2)-e(f+1);
end
for h=0:3
    i(h+1)= g(h+2)-g(h+1);
end
for j=0:2
    k(j+1)= i(j+2)-i(j+1);
end
for l=0:1
    m(l+1)= k(l+2)-k(l+1);
end
for w=0:0
    z(w+1)= m(w+2)-m(w+1);
end
%2.tablo: Seri Yöntemi
for n=1:6 % [((-1)^i)/i+1] förmülünden ai deðerleri bulundu 
    p=10:15;
    r=1+p;
    t(n)=1;
    u(n)=t(n)/r(n);
    if mod (u,2)==0;
        u=u;
    else u=-u;
    end
end
s0=0.6456349; % s10 deðerini s0 deðerine denk alýp s11,s12,s13,s14,s15,s16 deðerlerini bulundu %
s(1)=s0+u(1);
for a1=2:6
    s(a1)=s(a1-1)+u(a1);
end
for b1=1:5  % bulduðumuz si deðerlerinin (si+s(i+1))/2 formülünden azaltarak ortalamalarýný bulundu %
    o1(b1)=(s(b1)+s(b1+1))/2;
end
for c1=1:4
    o2(c1)=(o1(c1)+o1(c1+1))/2;
end
for d1=1:3
    o3(d1)=(o2(d1)+o2(d1+1))/2;
end
for e1=1:2
    o4(e1)=(o3(e1)+o3(e1+1))/2;
end
for f1=1:1
    o5(f1)=(o4(f1)+o4(f1+1))/2;
end
ot=input('Euler transformasyon yöntemi için 1 e Seri yöntemi için 2 ye basýnýz = ');
if ot==1;
    R=(0.5*e(1))-(0.25*g(1))+(0.125*i(1))-(0.0625*k(1))+(0.03125*m(1))-(0.015625*z(1));
    S=R+s0;
fprintf('R= %f\n',R)
fprintf('R+s0=S= %f\n',S)
else ot=2;
    fprintf('o5=S= %f',o5)
end