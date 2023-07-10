clear all 

close all
 
clc 

Simulink.sdi.clear 

s= tf("s"); 

l=1.86*10^-4; 

k=0.005; 

c=3750; 

N=60; 

R=0.246; 



C=l/(1+s/k) 

q = ((c^2)/(2*N))*exp(-s*R); 

p=(s+(2*N)/(R^2*c))*(s+ 1/R); 

G=q/p; 

r = 1; 

from = 0; 

dy = 0; 



my_output=sim('sw4e2.slx') 

plot(my_output) 

%stepinfo(my_output.y) 

max(abs(my_output.u.Data)) 

max(abs(my_output.u.Data))