clear all
close all
clc

s = tf('s');
G = 0.5/(s*(1+s));
kc = 20;
C_ss = kc
T_p =20*log10(1.05);
S_p = 20*log10(1.36);
wc_des = 3;
L1 = C_ss*G

figure(1)
nichols(L1,'r'),hold on
T_grid(T_p)
S_grid(S_p)

%Negative real zero
wz_norm = 1.2
wz = wc_des/wz_norm
C_z = 1 + s/wz;
C = C_ss*C_z
L2 = L1*C_z

figure(1)
nichols(L2,'b'),hold on

%change of kc
K = 10^(9/20)
C = C*K
L3 = L2*K

figure(1)
nichols(L3,'g'),hold on

% add closure pole
wp = 10*wz
C_p = 1/(1 + s/wp)
C = C*C_p
L4 = L3*C_p

figure(1)
nichols(L3,'r'),hold on

%simulation
rho = 1;
delta_da = 0;
delta_dy = 0%2;
delta_dt = 0;

out = sim("m2s.slx")
plot(out)




