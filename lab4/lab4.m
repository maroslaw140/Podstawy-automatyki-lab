
D1 = -3;
D2 = 4;
N = 30;
omega = logspace(D1, D2, N);

%jeden
figure(1)

T = 1.2;
k = 0.85;

licz = [0, k];
mian = [T, 1];

subplot(1, 2, 1);
nyquist(licz, mian);

subplot(1, 2, 2);
bode(licz, mian, omega);

%dwa
figure(2)

T1 = 1.2;
T2 = 0.7;

licz = [0, 0, k];
mian = [T1*T2, T1+T2, 1];

subplot(1, 2, 1);
nyquist(licz, mian);

subplot(1, 2, 2);
bode(licz, mian, omega);

%trzyA
figure(3)

ksi = 3;
T = 1.2;
T1 = 0.7;

licz = [0, 0, k];
mian = [T1^2, 2*ksi*T, 1];

subplot(1, 2, 1);
nyquist(licz, mian);

subplot(1, 2, 2);
bode(licz, mian, omega);

%trzyB
figure(4)

ksi = 0.3;
T = 1.2;
T1 = 0.7;

licz = [0, 0, k];
mian = [T1^2, 2*ksi*T, 1];

subplot(1, 2, 1);
nyquist(licz, mian);

subplot(1, 2, 2);
bode(licz, mian, omega);

%cztery
figure(5)

Ti = 0.5;
T = 1.2;

licz = [0, 0, k];
mian = [T*Ti, Ti, 0];

subplot(1, 2, 1);
nyquist(licz, mian);

subplot(1, 2, 2);
bode(licz, mian, omega);

%pięć
figure(6)

Td = 0.5;
T = 1.2;

licz = [Td, 0];
mian = [T, 1];

subplot(1, 2, 1);
nyquist(licz, mian);

subplot(1, 2, 2);
bode(licz, mian, omega);

%sześć
figure(7)

theta = 2;
n = 2;
k = 1;

[licz_op, mian_op] = pade(theta, n);

licz_iner = [0, k];
mian_iner = [T, 1];

[licz, mian] = series(licz_op, mian_op, licz_iner, mian_iner);

subplot(1, 2, 1);
nyquist(licz, mian);

subplot(1, 2, 2);
bode(licz, mian, omega);
