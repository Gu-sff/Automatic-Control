clear all
close all
clc

s = tf('s');

% example of how to find sol x(t), with given u and x0

U = 2/s;
x0 = [2;2];
A = [0 1 ; -2 -3]
B = [1; 0]
X = zpk(minreal(inv(s*eye(2)-A)*(x0 + B*U),1e-3))

%X(1)
[nu_x1,de_x1] = tfdata(X(1),'v')
[r1,p1]=residue(nu_x1,de_x1)

%same procdrue for X(2)
[nu_x2,de_x2] = tfdata(X(2),'v')
[r2,p2]=residue(nu_x2,de_x2)

%Y
u2 = 1/s
x02 = [1;1]
A2= [-3 2 ; -2 -3]
B2 = [1;0]
C2 =[0 1]

Y = zpk(minreal(C2*inv(s*eye(2)-A2)*(B2*u2+x02),1e-3))
[num_Y,den_Y]=tfdata(Y,'v')
[r,p]=residue(num_Y,den_Y)

M= abs(r(1)),2*M
phi = angle(r(1))

%y(t) = (1.38*e^-(3*t))*cos(2*t+0.58)-0.15) *3(t)