sys1 = tf([0 1 1], [1 5 1]);
sys2 = tf([0 0 0 1], [1 1 -2 1]);

sysSzer = lsim(series(sys1,sys2), u, t);
sysRown = lsim(parallel(sys1,sys2), u, t);
sysZw = lsim(feedback(sys1,sys2), u, t);

t = 0:0.01:10;  % Czas symulacji
u = ones(size(t));  % Skok jednostkowy jako wejście

figure;

% Pierwszy wiersz
subplot(3, 1, 1);
plot(t, sysSzer);
title('Połączenie szeregowe');
xlabel('Czas');
ylabel('Amplituda');

% Drugi wiersz
subplot(3, 1, 2);
plot(t, sysRown);
title('Połączenie równoległe');
xlabel('Czas');
ylabel('Amplituda');

% Trzeci wiersz
subplot(3, 1, 3);
plot(t, sysZw);
title('Połączenie ujemnego sprzężenia zwrotnego');
xlabel('Czas');
ylabel('Amplituda');

grid on;
