clc;clear all;
a=[4 1 1 0; 1 4 0 1 ; 1 0 4 1 ;0 1 1 4];
b=[1;2;0;1];
x1(1)=0; x2(1)=0; x3(1)=0; x4(1)=0;
 i=1;
x1(i+1)=1/4*(1-x2(i)-x3(i));
x2(i+1)=1/4*(2-x1(i)-x4(i));
x3(i+1)=1/4*(-x1(i)-x4(i));
x4(i+1)=1/4*(1-x2(i)-x3(i));
for k=2:13
x1(k+1)=1/4*(1-x2(k)-x3(k));
x2(k+1)=1/4*(2-x1(k)-x4(k));
x3(k+1)=1/4*(-x1(k)-x4(k));
x4(k+1)=1/4*(1-x2(k)-x3(k));
       if (abs(x1(k+1)-x1(k))<=0.0001)
           fprintf('max|x1(%d)-x1(%d)|=%.4f\n',k+1,k,x1(k+1)-x1(k));
           break;
       elseif (abs(x2(k+1)-x2(k))<=0.0001)
           fprintf('max|x2(%d)-x2(%d)|=%.4f\n',k+1,k,x2(k+1)-x2(k));
           break;
       elseif (abs(x3(k+1)-x3(k))<=0.0001)
           fprintf('max|x3(%d)-x3(%d)|=%.4f\n',k+1,k,x3(k+1)-x3(k));
           break;
       elseif (abs(x4(k+1)-x4(k))<=0.0001)
           fprintf('max|x4(%d)-x4(%d)|=%.4f\n',k+1,k,x4(k+1)-x4(k));
           break;
       end
end

