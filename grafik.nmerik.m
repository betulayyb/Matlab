clc;
clear all;
w=2;
T=2*pi/w;
t=linspace(0.2*T);
u1=10*sin(w*t);
u2=7*cos(w*t);
plot(t,u1,'--r',t,u2,'-*b','linewidth',3)
xlabel('t','fontsize',14);
ylabel('f(x)','fontsize',14);