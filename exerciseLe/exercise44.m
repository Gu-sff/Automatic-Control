clear all
close all
clc

s = tf('s');
G = 0.3/(s^2 + 1.75*s + 0.37);
kc = 1.5
C_ss = kc/s
Wc_des = 1
T_p =0.42
S_p =2.68
Ms = -20
L1 = C_ss*G
figure(1)
nichols(L1,'b'),hold on
T_grid(T_p)
S_grid(S_p)
S_grid(Ms)

%phase lead
W_norm = 5.5
Wz=Wc_des/W_norm
C_z = 1 + s/Wz
C = C_ss*C_z
L2 = L1*C_z

figure(1)
nichols(L2,'r'),hold on

%lag network
Wi = 0.1818
Mi = 1.3552
C_i = (1+s/(Mi*Wi))/(1+ s/Wi)
C = C*C_i
L3 = L2* C_i
figure(1)
nichols(L3,'r'),hold on

out = sim("exerciseEx.slx")
figure(2)
plot(out)
grid on

