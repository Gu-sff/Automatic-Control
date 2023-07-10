% figure,bode(H)
clear all
close all
clc

s = tf('s');
H = ((1+ s/50)^2)/((1+ s)^3)

figure ,bode(H)

[re,im] = nyquist(H)
figure , plot(squeeze(re),squeeze(im))

