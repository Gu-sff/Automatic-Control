clear all
clc

s = tf('s')
A = [0 1;-1 -1];
B = [4 0 ;10 1];
C = [1 0];
D = 0;
x0 = [0;0];
U = [0;2/s];

Y = (C*inv(s*eye(2)-A))*(x0+B*U) + D*U
Y = zpk(minreal(Y,1e-3))

[n1,d1] = tfdata(Y(1),'v');
[r1,p1] = residue(n1,d1)

[n2,d2] = tfdata(Y(2),'v');
[r2,p2] = residue(n2,d2)

M = abs(r1(1)),2*M
phi = angle(r1(1))




