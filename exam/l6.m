clear all
clc

s = tf('s');
G = (1.4*10^9)/((s^2)*(s+4.4*10^4))
kc = 16
C_ss= kc
T_p = 20*log10(1.15)
S_p = 20*log10(1.47)
M_S_LF = 20*log10(0.02)
wc_des = 3000
L = C_ss*G


figure(1)
nichols(L,'b'),hold on
T_grid(T_p)
S_grid(S_p)
S_grid(M_S_LF)



%negative real zero
w_norm = 3.8 
wz = wc_des/w_norm
C_z = 1 + s/wz
C =C_ss*C_z
L = L*C_z
figure(1)
nichols(L,'r'),hold on

%change kc + 18.6
k = 10^(22/20)
C = C*k
L = L*k
figure(1)
nichols(L,'g'),hold on
%redesign w_norm

%change kc -5.54

%actually wc_des 3700


% add poles
wp = 60*wz
C_p = 1/(1+s/wp)
C = C*C_p
L = L*C_p
figure(1)
nichols(L,'y'),hold on

% simulation
rho = 0%1
delta_a = 0%0.2
delta_y = 0%0.5
wy = 0%240
my_out = sim('l6sim.slx')
plot(my_out)





