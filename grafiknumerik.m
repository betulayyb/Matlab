grid on;
hold on;
w=2;
T=2*pi/w;
t=linspace(0,2*T);
u1=sin(w*t);
u2=cos(w*t);
plot(t,u1,'*b','linewidth',0.1)
plot(t,u2,'+g','linewidth',0.1)
xlabel('t','fontsize',14);
ylabel('f(x)','fontsize',14);
axis([0 7 -6 7])

legend('u1(t)','u2(t)',-1)
ginput(3);