clear all
close all
clc

s = tf('s');

G = 0.3/(s^2 + 1.75*s +0.37)

Kc = 1.5
C_ss = Kc/s;
L1 = G*C_ss;
M_S_LF=-20; %dB

Tp=0.42
Sp=2.67
wc_des=1;

figure(1)
nichols(L1,'b'),hold on
T_grid(Tp)
S_grid(Sp)
S_grid(M_S_LF)

%phase lead negative zero

wnorm = 5
wZ=wc_des/wnorm
C_z = 1+ s/wZ
L2 = L1*C_z
C = C_ss*C_z

figure(1)
nichols(L2,'r')

%lag network


%simulation
%In exam torlence is 5%