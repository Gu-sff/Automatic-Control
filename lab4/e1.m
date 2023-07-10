clear all
clc
s = tf('s');
G=1/((1+s)^2);
C=((1+s)^2)/(s*(1+s/4));
u = (C*(1/s))/(1+C*G);
[n,d]=tfdata(u,'v');
[r,p]=residue(n,d)

Q= -1/(1+C*G);
wo =1;
[m,f]=bode(Q,wo);
y1=0.5*m
f_rad =f/180*pi

y=1/(1+C*G)
zpk(y)
dcgain(y)
y2=(C*G)/(1+C*G)
dcgain(y2)
