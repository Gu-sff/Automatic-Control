clear all
close all
clc

s = tf('s');
G = 2122.4/(s*(s+59.24))
C = 4.54*((1+ s/59.2)/(1+ s/218.8))
L = G*C
T = L/(1+L)

r = 1;
da = 0;
dy = 0;

from = 0; 


my_output=sim('exerciseEx.slx') 

plot(my_output) 

stepinfo(T)

max(abs(my_output.u.Data)) 

max(abs(my_output.u.Data))