%podpunkt A

clc % czyszczenie pamięci roboczej
close % zamykania otwartych okien graficznych

liczA = [0, 0, 0, 1];
mianA = [1, 3, 1, 1];

rA = roots(mianA) 

%-2.7693 + 0.0000i
%-0.1154 + 0.5897i
%-0.1154 - 0.5897i

obiektA = tf(liczA,mianA); % obiekt A
obiektZ_A = feedback(obiektA,1); % obiekt zamknięty

[liczZ, mianZ] = tfdata(obiektZ_A,'v');

rZ_A = roots(mianZ) 

%-2.8933 + 0.0000i
%-0.0534 + 0.8297i
%-0.0534 - 0.8297i

figure(1)
hold on;

% charakterystyka Nyquista
nyquist(liczA,mianA);
nyquist(liczZ, mianZ);

plot(rA,'b+')
plot(rZ_A,'g*')

% legenda
legend('obiekt otwarty','obiekt zamknięty','bieguny układ otwarty','bieguny układ zamknięty')

hold off;


%podpunkt B

clc % czyszczenie pamięci roboczej
%close % zamykania otwartych okien graficznych

liczB = [0, 0, 0, 1];
mianB = [2, 3, 1, 1];

rB = roots(mianB) 

%-1.3982 + 0.0000i
%-0.0509 + 0.5958i
%-0.0509 - 0.5958i

obiektB = tf(liczB,mianB); % obiekt A
obiektZB = feedback(obiektB,1); % obiekt zamknięty

[liczZ, mianZ] = tfdata(obiektZ_A,'v');

rZ_B = roots(mianZ) 

%-2.8933 + 0.0000i
%-0.0534 + 0.8297i
%-0.0534 - 0.8297i

figure(2)
hold on;

% charakterystyka Nyquista
nyquist(liczB,mianB);
nyquist(liczZ, mianZ);

plot(rB,'b+')
plot(rZ_B,'g*')

% legenda
legend('obiekt otwarty','obiekt zamknięty','bieguny układ otwarty','bieguny układ zamknięty')

hold off;