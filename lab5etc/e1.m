clear all
close all
clc

s = tf('s');
%plant
G = 10/(s*(s+5)*(s+10))

%steady state controller
Kc = 5
C_ss = 5;
L1 = C_ss*G;

%transient requirements
tp=1.025;
sp=1.32;
Tp=20*log10(tp)
Sp=20*log10(sp)
wc_des=6;

figure(1)
nichols(L1,'b'),hold on
T_grid(Tp)
S_grid(Sp)

%lead network design



