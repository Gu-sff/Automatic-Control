clear all
close all
clc

s = tf('s')

A = [0 1 ; -2 -3]
B = [1; 0]
C = [0 1]
D = 0
%state space
sys = ss(A,B,C,D)

%ss->tf
H = tf(sys)

%tf->ss
sys = ss(H)