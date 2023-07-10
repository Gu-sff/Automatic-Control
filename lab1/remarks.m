clear all
close all
clc

s = tf("s");
G = 2/(s^2 + s -2)

C1= (5*(s+0.5))/s
C2 = 4/s

L1 = C1*G;
L2 = C2*G
T1 = zpk(minreal(L1/(1+L1)));
T2 = zpk(minreal(L2/(1+L2)));
pole(T1)
pole(T2)
% Want to find pole of a function, make sure zpk(minrreal()) is used!