  clc;clear all;
a=0:pi/20:pi;
teta=0:pi/10:2*pi;
[a,teta]=meshgrid(a,teta);
r = 1;

X=sin(a).*cos(teta);
Y=sin(a).*sin(teta);
Z=cos(a);
 surf(X,Y,Z)
 axis equal
 title('Birim küre {\bf R}^3')
 