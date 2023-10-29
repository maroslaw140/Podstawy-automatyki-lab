z = -1/4;
p = [0 -5 -1/10];
k = 2;
%[licz,mian] = zp2tf(z, p, k);
obiekt = zpk(z, p, k)