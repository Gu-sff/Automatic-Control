clear all
clc

s = tf('s');
A = [1 2 ; 4 3];
B = [5;8];
C = [-1 3];
D = 8;
U = 2/s
x0 = [2;2];

X = zpk(minreal(inv(s*eye(2)-A)*(x0+B*U),1e-3));
[n,d] = tfdata(X(1),'v');
[r,p] = residue(n,d)

[n2,d2] = tfdata(X(2),'v');
[r2,p2] = residue(n2,d2)


Y = C*inv(s*eye(2)-A)*(x0+B*U)+D*U;
Y = zpk(minreal(Y,1e-3))
[n3,d3] = tfdata(Y,'v');
[r3,p3] = residue(n3,d3)