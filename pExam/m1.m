clear all
close all
clc

s = tf('s');
G = 2/((1+ 0.2*s)*(1+ 0.1*s))
kc = 5
C_ss = kc/s
T_p = 20*log10(1.48);
S_p = 20*log10(1.76);
wc_des = 6.1;
L1 = C_ss*G

figure(1)
nichols(L1,'r'),hold on
T_grid(T_p);
S_grid(S_p);

%Negative real zero
wz_norm = 0.7
wz = wc_des/wz_norm
C_z = 1 + s/wz;
C = C_ss*C_z
L2 = L1*C_z

figure(1)
nichols(L2,'b'),hold on

% simulation
rho = 0%1;
r = 0%1;
delta_da = 0.2;
delta_dy = 0;
delta_dt =0;

out = sim('m1s.slx')
plot(out)


