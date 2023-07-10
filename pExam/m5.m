clear all
close all
clc

s = tf('s');
G = 0.5/(1+ 4*s);
kc = 1;
C_ss = kc/(s^2);
T_p = 20*log10(1.06);
S_p = 20*log10(1.36);
wc_des = 1.6;
M_T_HF = 20*log10((9.5*(10^-4))/(3*(10^-2)))
L1 = C_ss*G;

figure(1)
nichols(L1,'r'),hold on
T_grid(T_p)
S_grid(S_p)
T_grid(M_T_HF)

%Double Negative real zero
wz_norm = 9;
wz = wc_des/wz_norm
C_z = (1 + s/wz)^2
C = C_ss*C_z
L2 = L1*C_z

figure(1)
nichols(L2,'b'),hold on

%change of KC
K = 10^(-7.7/20);
C = C*K
L3 = L2*K

figure(1)
nichols(L3,'g'),hold on

%clousure poles

wp = 45*wz
C_p = 1/(1 + s/wp)
C = C*C_p
L4 = L3*C_p

figure(1)
nichols(L4,'r'),hold on


