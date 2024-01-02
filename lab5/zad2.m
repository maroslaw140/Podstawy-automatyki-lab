clc % czyszczenie pamięci roboczej
close % zamykania otwartych okien graficznych

K = [100, 125, 150];
mian = [0.01, 0.5, 3, -10, 10];

for i = 1:length(K)
    licz = [0, 0, 0, K(i), K(i)];

    rA = roots(mian); 
    
    obiekt = tf(licz,mian); % obiekt A
    obiektZ = feedback(obiekt,1); % obiekt zamknięty
    
    [liczZ, mianZ] = tfdata(obiektZ,'v');
    
    rZ_A = roots(mianZ); 
    
    figure(i)
    subplot(2, 2, 1);
    hold on;
    
    % charakterystyka Nyquista
    nyquist(licz,mian);
    
    plot(rA,'b+')

    
    % legenda
    legend('obiekt otwarty','bieguny układ otwarty')
    
    hold off;

    subplot(2, 2, 2);
    step(obiekt);
    

    subplot(2, 2, 3);
    hold on;
    
    % charakterystyka Nyquista
    nyquist(liczZ, mianZ);
    
    plot(rZ_A,'g*')
    
    % legenda
    legend('obiekt zamknięty','bieguny układ zamknięty')
    
    hold off;

    subplot(2, 2, 4);
    step(obiektZ);
    
end