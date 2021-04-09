clc
A=[1 2;3 4];
[Q,d] =eig(A)
fprintf('a=%d\n',Q(1,1));
fprintf('c=%d\n',Q(1,2));
fprintf('b=%d\n',Q(2,1));
fprintf('d=%d\n',Q(2,2));
fprintf('q1=%d\n',d(1,1));
fprintf('q2=%d',d(2,2));