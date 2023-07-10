clear all
clc

s = tf('s');
A = [0 6;-1 -5];

em = inv(s*eye(2)-A)
em = zpk(minreal(em,1e-3))