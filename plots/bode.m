clear all
close all
clc

s = tf('s');

L1 = 5/(s^3);
L2 = 0.25/((s^2)*((1- 0.5*s)^2));
L3 = (s-1)/(s*(s^2 -9))
L4 = (1 + 0.5*s)/((1+s)* (1-s)^2)

figure,bode(L4)
L4 = zpk(minreal(L4,1e-3))
pole(L4)
zero(L4)