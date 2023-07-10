clear all
close all
clc

s= tf('s');
H = s/(s^2 + 1);
U = 1.4/(s^2 + 2);
Y = H*U

[n,d] = tfdata(Y,'v');
[r,p] = residue(n,d)

M = abs(r(1)),2*M
phi = angle(r(1))

angle(0.4427-0.1474i)