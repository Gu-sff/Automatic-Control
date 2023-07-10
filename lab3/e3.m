clear all
s = tf("s");

dampingR = (abs(log(0.15)))/(sqrt(pi^2 +log(0.15)^2))
wn = pi/(0.45*sqrt(1-dampingR^2))