clc; clear all;
n=5;
m=9;
fprintf('zeros(1,%d)',n);
a=zeros(1,n)
fprintf('zeros(%d,1)',n);
zeros(n,1) 
fprintf('zeros(%d)',n);
zeros(n) 
fprintf('zeros(%d,%d) ',n,n);
zeros(n,n) 
fprintf('zeros(%d,%d) ',n,m);
zeros(n,m) 
fprintf('ones(1,%d)',n);
ones(1,n) 
fprintf(' ones(%d,1) ',n);
 ones(n,1) 
 fprintf(' ones(%d,%d) ',n,n);
 ones(n,n)
 fprintf(' ones(%d,%d) ',n,m);
 ones(n,m)
 fprintf(' rand(%d,%d) ',n,m);
 rand(n,m) 
 fprintf(' rand(%d)',n);
 rand(n)
 fprintf(' rand(%d,%d) ',n,n);
 rand(n,n)
 fprintf(' round(rand(%d,%d))',n,m);
 round(rand(n,m))
 fprintf(' fix(rand(%d,%d))',n,m);
 fix(rand(n,m))
 sum(a);