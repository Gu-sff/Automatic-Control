clear all;
s = tf('s');
H = 1/(s^2 *(s+1))
pole(H)
figure,bode(H)
[re1,im1] = nyquist(H);
figure,plot(squeeze(re1),squeeze(im1))
figure,nichols(H)