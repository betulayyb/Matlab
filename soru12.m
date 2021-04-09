deltaL=[0:1:10];
L0=30;
L=[];
for i=1:11
L(i)=L0+deltaL(i);
e(i)=deltaL(i)/ L(i);
deltaR(i)=2*50*e(i);
R(i)=50+deltaR(i);
I(i)=1.5/(1000+R(i));
V(i)=R(i)*I(i);
end
fprintf('%f\n',V)
fprintf('%.4f\n',V)