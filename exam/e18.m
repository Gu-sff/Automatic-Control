clear all
clc

s = tf('s');
G = 0.5/(s*(1+s))
kc = 20
C_ss= kc
T_p = 20*log10(1.06)
S_p = 20*log10(1.36)
wc_des = 3
L = C_ss*G

figure(1)
nichols(L,'r'),hold on
T_grid(T_p)
S_grid(S_p)

% negative real zero
wz_norm = 1.3;
wz = wc_des/wz_norm
C_z = 1 + s/wz
C = C_ss*C_z
L = L*C_z

figure(1)
nichols(L,'b'),hold on