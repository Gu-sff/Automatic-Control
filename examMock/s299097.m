clear all
close all
clc
s = tf("s");

G = 1.9837/((1+ s/142)*(1+s/14.2))
kc = 1
C_ss = kc/s
T_p = 20*log10(1.13)
S_p = 20*log10(1.44)
wc_des = 27
L = C_ss*G
M_T_HF =  20*log10(0.018)

figure(1)
nichols(L,"r"),hold on
T_grid(T_p)
S_grid(S_p)
T_grid(M_T_HF)

%negative real zero
wz_norm =0.9
wz = wc_des/wz_norm
C_z = 1 + s/wz
C = C_ss*C_z
L = L*C_z

figure(1)
nichols(L,"b"),hold on

% +26.9 mag gain needed
% change of kc
K = 10^(25/20)
kc = kc*K
C_ss = C_ss*kc
C = C*K
L = L*K
figure(1)
nichols(L,"g"),hold on

% add clourse pole
wp = 10*wz
C_p = 1/(1 + s/wp)
C = C*C_p
L = L*C_p
figure(1)
nichols(L,"r"),hold on

%simulation
rho=1
delta_a=0
delta_y=0%0.4
delta_t=0%0.1
wt=0%350
out = sim("s299097sim.slx")
plot(out)



