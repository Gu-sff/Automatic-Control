clear all
close all
clc

s = tf('s');
G = 0.045/(s^2 + 2.6*s + 1.2);
kc = 34;
C_ss = kc/s;
T_p = 20*log10(1.05);
S_p = 20*log10(1.37);
wc_des = 1
L1 = C_ss*G

figure(1)
nichols(L1,'r'),hold on
T_grid(T_p)
S_grid(S_p)

%Negative real zero
wz_norm = 1.8;
wz = wc_des/wz_norm;
C_z = 1 + s/wz
C = C_ss*C_z
L2 = L1*C_z

figure(1)
nichols(L2,'b'),hold on

%simulation 
delta_r = 0.25;
rho = 1;
delta_da = 0;
delta_dt = 0;
delta_dy = 0;

out = sim("m3s")
plot(out)






