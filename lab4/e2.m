clear all
clc
s = tf('s');
l = 1.86*(10^-4);
k=0.005;
c=3750;
N=60;   
R=0.246;
C = l/(1+s/k);