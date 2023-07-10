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

%lag -4.85
Mi = 10^(4.85/20)
Wi = wc_des/(10*Mi)
C_i = (1 + s/(Mi*Wi))/(1+s/Wi)
C = C*C_i
L = L*C_i
figure(1)
nichols(L,'g'),hold on

