clear all
close all
clc
s = tf('s');

G = 0.5/(s*(1+s))

Kc = 20
C_ss = Kc;

L1 = G*C_ss;

tp = 1.06;
sp = 1.36;
Tp = 0.42;
Sp = 2.67;
wc_des = 3;

figure(1)
nichols(L1,'b'),hold on
T_grid(Tp)
S_grid(Sp)

%lead network 
mD = 12
wnorm = 3
wD=wc_des/wnorm;
C_D=(1+s/wD)/(1+s/(mD*wD));
L2=C_D*L1;
C=C_ss*C_D;

figure(1)
nichols(L2,'r')

%lag network
mI = 10^(10/20)
alpha = 10;
wI = wc_des/(alpha*mI)
C_I = (1+s/(mI*wI))/(1+s/wI)
L3 = L2*C_I;
C=C*C_I

figure(1)
nichols(L3,'k')
return





