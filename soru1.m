a(1)=50;
A=[];
for i=1:20
    a(i+1)=a(i)+14.15;
end
for j=1:21
    i(j)=(1.5/(1000+a(j)));
end
for k=1:21
    g(k)=a(k)*i(k);
end
deltaL=[0:0.5:10];
for l=1:21
    e(l)=deltaL(l)/10;
end
aralik=[0.0715:0.01575:0.4];
plot(e,g,'-*',e,aralik, '-.r','linewidth',2)
toplam=0;
for t=1:21
toplam=toplam+g(t)
end
(toplam/21)-std(g)
(toplam/21)+std(g)

