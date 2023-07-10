clear all
close all
clc

s = tf('s');
L = 1/(s^2 + 3*s + 2);

nyquist(L)
L = zpk(minreal(L))
pole(L)