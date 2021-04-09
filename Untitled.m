clc;
clear all;
a=[1 2 3;4 5 6;7 8 9]
b=trace(a)
c=diag(a)
d=sum(a)
e=triu(a)
f=tril(a)
g=zeros(4,5)
h=ones(4,5)
i=eye(4,5)
j=a(:)
l=a(2,:)
m=a(:,3)
k=a(:,[1,2])
f=a([1,2],:)
r=length(a)
v=diag(diag(a))