clear all
close all
clc
s = tf('s');

G = 0.045/(s^2 + 2.6*s + 1.2)
Kc = 34
C_ss = Kc/s
L1 = C_ss*G

Sp =2.67 %dB
Tp =0.42  %dB
wc_des =1

figure(1)
nichols(L1,'b'),hold on
T_grid(Tp)
S_grid(Sp)

%lead network
% -123 and -108 degree
% -176degree deltef = 176-108= 68 degree , 176-123 = 53 degree,
% deltef should be between 53-68 degree. 
% we can chose whatever in 53-68, we chose 60 degree here, so deltef = 60
% through  a real negative zero(better to use negative zero)

wnorm = 1.8
wZ=wc_des/wnorm
C_z = 1+ s/wZ

L2 = L1*C_z
C = C_ss*C_z

figure(1)
nichols(L2,'r')
return
%gain 1.6dB is small amount so a lag network is not needed.

%simulation
S = stepinfo(out.y.data,out.y.time,'RiseTimeLimits',[0 1],'SettlingTimeThreshold',0.05)
return
