clear all
clc

s = tf('s');
G = 2/((1+0.2*s)*(1+0.1*s))
kc = 5
C_ss= kc/s
T_p = 20*log10(1.47)
S_p = 20*log10(1.75)
wc_des = 6
L = C_ss*G

figure(1)
nichols(L,'r'),hold on
T_grid(T_p)
S_grid(S_p)

%negative real zreo
wz_norm = 0.6;
wz = wc_des/wz_norm
C_z = 1 + s/wz
C = C_ss*C_z
L = L*C_z

figure(1)
nichols(L,'b'),hold on

% change kc
k = 10^(-0.68/20)
C = C * k 
L = L*k
figure(1)
nichols(L,'g'),hold on

%sim
rho = 1;
delta_a =0;
dy = 0;
dt = 0;


my_out = sim('e1516sim.slx')
plot(my_out)
T = L/(1+L)
stepinfo(T)

