clc;
clear all;
sayac=0;
n=1;
c=0;
a(1)=1;
ters(1)=input('s=');

for i=1:a(c+1)
ters(n+1)=ters(n)/10; 
b(n)=mod(ters(n),10);
fprintf('b(%d)=%1.f\n',n,b(n));
n=n+1;
if ters(n)~=0
c=c+1;
a(c+1)=a(n)+1;
end
end

