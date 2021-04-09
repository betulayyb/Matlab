 x0=[0,0,0];
 xdeger = [1.2447 0.8298 0.4149]
fonkdeger = 1.0e-012 * 0.6661 -0.3407 -0.0011
kontrol = 1
 [xdeger,fonkdeger,kontrol]=fsolve('vize_2006',x0);

Optimization terminated: first-order optimality is less than options.TolFun.

 F=vize_2006(X);
 
F=[2*X(1)^3+2*X(2)^3-5;
   2*(X(2)^3)-2*X(3)^3-1;
   X(1)-X(2)-X(3)];