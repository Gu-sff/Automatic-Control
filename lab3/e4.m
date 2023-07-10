clear all
clc

s = tf("s");

L = 5/s^3;
figure,bode(L)
[re1,im1] = nyquist(L);
figure,plot(squeeze(re1),squeeze(im1))

L2 =0.25/((s^2)*(1-0.5*s)^2)
figure,bode(L2)
[re2,im2] = nyquist(L2);
figure,plot(squeeze(re2),squeeze(im2))

L3 = (s-1) / (s*(s^2 -9))
figure,bode(L3)
[re3,im3] = nyquist(L3);
figure,plot(squeeze(re3),squeeze(im3))

L4 = (1+0.5*s)/((1+s)*(1-s)^2)
figure,bode(L4)
[re4,im4] = nyquist(L4);
figure,plot(squeeze(re4),squeeze(im4))


L5 = (s^2 + 1)/((s^2 - 4)*(s+4))
figure,bode(L5)
[re5,im5] = nyquist(L5);
figure,plot(squeeze(re5),squeeze(im5))