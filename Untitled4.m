clc;clear all;
%1. tablo: Euler Transformasyon Yöntemi
for a=1:6 % [|((-1)^i)|/i+1] förmülünden ai deðerleri bulundu %
    b=10:15;
    c=b+1;
    d(a,:)=1;
    e(:,a)=d(a,:)/c(:,a);
end
for f=1:5 % [ai-a(i+1)] den delta ai leri bulduk %
    g(:,f)= e(:,f)-e(:,f+1);
end
for h=1:4
    i(:,h)= g(:,h)-g(:,h+1);
end
for j=1:3
    k(:,j)= i(:,j)-i(:,j+1);
end
for l=1:2
    m(:,l)= k(:,l)-k(:,l+1);
end
for w=1:1
    z(:,w)= m(:,w)-m(:,1);
end
%2.tablo: Seri Yöntemi
for n=1:6 % [((-1)^i)/i+1] förmülünden ai deðerleri bulundu 
    p=10:15;
    r=1+p;
    t(n,:)=1;
    u(:,n)=t(n,:)/r(:,n);
    if mod (u,2)==0;
        u=u;
    else u=-u;
    end
end
s0=0.6456349; % s10 deðerini s0 deðerine denk alýp s11,s12,s13,s14,s15,s16 deðerlerini bulduk %
s(1)=s0+u(1);
for a1=2:6
    s(:,a1)=s(:,a1-1)+u(:,a1);
end
for b1=1:5  % bulduðumuz si deðerlerinin (si+s(i+1))/2 formülünden azaltarak ortalamalarýný bulduk %
    o1(:,b1)=(s(:,b1)+s(:,b1+1))/2;
end
for c1=1:4
    o2(:,c1)=(o1(:,c1)+o1(:,c1+1))/2;
end
for d1=1:3
    o3(:,d1)=(o2(:,d1)+o2(:,d1+1))/2;
end
for e1=1:2
    o4(:,e1)=(o3(:,e1)+o3(:,e1+1))/2;
end
for f1=1:1
    o5(:,f1)=(o4(:,f1)+o4(:,f1+1))/2;
end
ot=input('Euler transformasyon yöntemiyle çözmek için 1 e Seri yöntemiyle çözmek için 2 ye basýnýz = ');
if ot==1;
    R=(0.5*e(:,1))-(0.25*g(:,1))+(0.125*i(:,1))-(0.0625*k(:,1))+(0.03125*m(:,1))-(0.015625*z(:,1));
    S=R+s0;
fprintf('R= %f\n',R)
fprintf('S= %f\n',S)
else 
       
end

