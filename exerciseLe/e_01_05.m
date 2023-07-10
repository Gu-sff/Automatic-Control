clear all
close all
clc

s = tf('s');

G = 0.045/(s^2 + 2.6*s + 1.2)
Kc = 34;
C_ss = Kc/s;

Tp = 0.42
Sp = 2.67
wc = 1
L1 = C_ss*G

figure(1)
nichols(L1,'b'),hold on
T_grid(Tp)
S_grid(Sp)

%
w_norm = 1.8
w_z = wc/w_norm
C_z = 1+ s/w_z
C = C_ss*C_z
L2 = L1*C_z

figure(1)
nichols(L2,'r')

my_output=sim('sw0105') 

plot(my_output)

%sim


