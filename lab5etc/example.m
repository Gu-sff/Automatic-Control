clear all
close all
clc

s =tf('s');

%plant tf
G = 2/((1+0.2*s)*(1+0.1*s))

%steady state controller
Kc = 5
C_SS =Kc/s;
L1 = G*C_SS;%Loop transfer function update

%transient requirements
T_p=3.40;%dB
S_p=4.91;%dB
wc_des=6.5;

%nichols diagram for L1
figure(1)
nichols(L1,'b'),hold on
T_grid(T_p)
S_grid(S_p)

%__________________________________________________________________________
%lead network design
mD =12
wnorm = 0.9
wD=wc_des/wnorm
C_D=(1+s/wD)/(1+s/(mD*wD));
L2=C_D*L1;
C=C_SS*C_D;

figure(1)
nichols(L2,'r')
return
%__________________________________________________________________________
%simulation







