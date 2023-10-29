licz = [0 0 1];
mian = [1000 500 400];
%step(licz,mian);
%impulse(licz,mian);
obiekt = tf(licz,mian);
%step(obiekt);
%impulse(obiekt);
[z, p, k] = tf2zp(licz, mian);
pzmap(p,z);

rzeczywiste_bieguny = all(real(p) < 0);
minimalnofazowy = all(real(z) < 0);

transmitancja_sfaktoryzowana = tf(k * poly(z), poly(p));

obiekt_oscylacyjny = tf([0 0 1], [1 0.1 0.01])
[z, p, k] = tf2zp([0 0 1], [1 0.1 0.01]);
pzmap(p,z);

obiekt_tlumiony = tf([0 0 1], [1 2 1])
[z, p, k] = tf2zp([0 0 1], [1 2 1]);
pzmap(p,z);