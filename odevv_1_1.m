clear all;

clc;

clf;

t = 0:pi/50:10*pi;

plot(t)

[x,y] = input(2);

text(x(1),y(1));

text(x(2),y(2));

mesafe=uzaklik(x,y);

xorta = (x(1)+x(2))/2;

yorta = (y(1)+y(2))/2;

text(xorta,yorta,int2str(mesafe))
 mesafe=sqrt(((x(2)-x(1))^2)+((y(2)-y(1))^2));
 fprinf('%d',uzaklik);