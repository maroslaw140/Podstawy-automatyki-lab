warning('off', 'MATLAB:legend:IgnoringExtraEntries');
czas = 0:0.1:15;
kolory = ["blue","green"];

%jeden
figure(1)
k = [0.7, 1.6];
T = [1.3, 0.9];

for i = 1:2
    licz = [0, k(i)];
    mian = [T(i), 1];
    
    [ys,xs,czass] = step(licz, mian, czas);
    [yi,xi,czasi] = impulse(licz, mian, czas);
    
    subplot(1, 2, 1);
    hold on
    plot(czass, ys, 'color', kolory(i));
    title('Step Response');
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k=%.1f; T=%.1f', k(1), T(1)), sprintf('k=%.1f; T=%.1f', k(2), T(2)));
    hold off

    subplot(1, 2, 2);
    hold on
    plot(czasi, yi, 'color', kolory(i));
    title('Impulse Response');
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k=%.1f; T=%.1f', k(1), T(1)), sprintf('k=%.1f; T=%.1f', k(2), T(2)));
    hold off
end


%dwa
figure(2);
T1 = T;
T2 = T1+1;

for i = 1:2
    licz = [0,0,k(i)];
    mian = [T1(i)*T2(i),T1(i)+T2(i),1];
    
    [ys,xs,czass] = step(licz, mian, czas);
    [yi,xi,czasi] = impulse(licz, mian, czas);
    
    subplot(1, 2, 1);
    hold on
    plot(czass, ys, 'color', kolory(i));
    title('Step Response');
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k=%.1f; T1=%.1f; T2=%.1f', k(1), T1(1), T2(1)), sprintf('k=%.1f; T1=%.1f; T2=%.1f', k(2), T1(2), T2(2)));
    hold off

    subplot(1, 2, 2);
    hold on
    plot(czasi,yi, 'color', kolory(i)); 
    title('Impulse Response');
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k=%.1f; T1=%.1f; T2=%.1f', k(1), T1(1), T2(1)), sprintf('k=%.1f; T1=%.1f; T2=%.1f', k(2), T1(2), T2(2)));
    hold off
end

%trzyA
figure(3);
ksi = 3;

for i = 1:2
    licz = [0,0,k(i)];
    mian = [T(i)^2,2*ksi*T(i),1];
    
    [ys,xs,czass] = step(licz, mian, czas);
    [yi,xi,czasi] = impulse(licz, mian, czas);
    
    subplot(1, 2, 1);
    hold on
    plot(czass, ys, 'color', kolory(i));
    title('Step Response');
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k=%.1f; T=%.1f; ksi=%.1f', k(1), T(1), ksi), sprintf('k=%.1f; T=%.1f; ksi=%.1f', k(2), T(2), ksi));
    hold off

    subplot(1, 2, 2);
    hold on
    plot(czasi,yi, 'color', kolory(i)); 
    title('Impulse Response');
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k=%.1f; T=%.1f; ksi=%.1f', k(1), T(1), ksi), sprintf('k=%.1f; T=%.1f; ksi=%.1f', k(2), T(2), ksi));
    hold off
end



%trzyB
figure(4);
ksi = 0.3;

for i = 1:2
    licz = [0,0,k(i)];
    mian = [T(i)^2,2*ksi*T(i),1];
    
    [ys,xs,czass] = step(licz, mian, czas);
    [yi,xi,czasi] = impulse(licz, mian, czas);
    
    subplot(1, 2, 1);
    hold on
    plot(czass,ys, 'color', kolory(i));
    title('Step Response');
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k=%.1f; T=%.1f; ksi=%.1f', k(1), T(1), ksi), sprintf('k=%.1f; T=%.1f; ksi=%.1f', k(2), T(2), ksi));
    hold off

    subplot(1, 2, 2);
    hold on
    plot(czasi,yi, 'color', kolory(i)); 
    title('Impulse Response');
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k=%.1f; T=%.1f; ksi=%.1f', k(1), T(1), ksi), sprintf('k=%.1f; T=%.1f; ksi=%.1f', k(2), T(2), ksi));
    hold off
end

%cztery
figure(5);
Ti = [3, 0.5];

for i = 1:2
    licz = [0,0,k(i)];
    mian = [T(i)*Ti(i),Ti(i),0];
    
    [ys,xs,czass] = step(licz, mian, czas);
    [yi,xi,czasi] = impulse(licz, mian, czas);
    
    subplot(1, 2, 1);
    hold on
    plot(czass,ys, 'color', kolory(i));
    title('Step Response');
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k=%.1f; T=%.1f; Ti=%.1f', k(1), T(1), Ti(1)), sprintf('k=%.1f; T=%.1f; Ti=%.1f', k(2), T(2), Ti(2)));
    hold off

    subplot(1, 2, 2);
    hold on
    plot(czasi,yi, 'color', kolory(i)); 
    title('Impulse Response');
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k=%.1f; T=%.1f; Ti=%.1f', k(1), T(1), Ti(1)), sprintf('k=%.1f; T=%.1f; Ti=%.1f', k(2), T(2), Ti(2)));
    hold off
end

%pięć
figure(6);
Td = [3, 0.5];

for i = 1:2
    licz = [Td(i),0];
    mian = [T(i),1];
    
    [ys,xs,czass] = step(licz, mian, czas);
    [yi,xi,czasi] = impulse(licz, mian, czas);
    
    subplot(1, 2, 1);
    hold on
    plot(czass,ys, 'color', kolory(i));
    title('Step Response');
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('Td=%.1f; T=%.1f', Td(1), T(1)), sprintf('Td=%.1f; T=%.1f', Td(2), T(2)));
    hold off

    subplot(1, 2, 2);
    hold on
    plot(czasi,yi, 'color', kolory(i)); 
    title('Impulse Response');
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('Td=%.1f; T=%.1f', Td(1), T(1)), sprintf('Td=%.1f; T=%.1f', Td(2), T(2)));
    hold off
end

%sześć
figure(7);
theta = 2;
n = 2;
k = 1;

[licz_op, mian_op] = pade(theta, n);
licz_iner = [0,1]; 

for i = 1:2
    mian_iner = [T(i),1];

    [licz, mian] = series(licz_op, mian_op, licz_iner, mian_iner);
    
    [ys,xs,czass] = step(licz, mian, czas);
    [yi,xi,czasi] = impulse(licz, mian, czas);
    
    subplot(1, 2, 1);
    hold on
    plot(czass,ys, 'color', kolory(i));
    title('Step Response');
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k=%.1f; T=%.1f; theta=%.1f; n=%.1f', k, T(1), theta, n), sprintf('k=%.1f; T=%.1f; theta=%.1f; n=%.1f', k, T(2), theta, n));
    hold off

    subplot(1, 2, 2);
    hold on
    plot(czasi,yi, 'color', kolory(i)); 
    title('Impulse Response');
    xlabel('Time (sec)');
    ylabel('Amplitude');
    legend(sprintf('k=%.1f; T=%.1f; theta=%.1f; n=%.1f', k, T(1), theta, n), sprintf('k=%.1f; T=%.1f; theta=%.1f; n=%.1f', k, T(2), theta, n));
    hold off
end





