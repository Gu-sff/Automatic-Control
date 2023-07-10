clear all;
s = tf('s');
H = 1/(s^2 *(s+1))
pole(H)
figure,bode(H)
[re1,im1] = nyquist(H);
figure,plot(squeeze(re1),squeeze(im1))

H2 = 1/(s^2 + 3*s +2)
figure,bode(H2)
[re2,im2] = nyquist(H2);
figure,plot(squeeze(re2),squeeze(im2))
