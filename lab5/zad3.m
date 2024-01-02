% k -1-10
%skok - 0.01

%pm +-0.1

%[licz, mian] = zp2tf([], [-1 -1 -1], k);
%[Gm,Pm] = margin(licz,mian)

%a
for k = 1:0.01:10
    [licz, mian] = zp2tf([], [-1 -1 -1], k);
    [Gm,Pm1] = margin(licz,mian);

    if  Pm1 >= 44.9 && Pm1 <= 45.1
        poprawneK = k
        break;
    end

end

[licz, mian] = zp2tf([], [-1 -1 -1], poprawneK);
[Gm,Pm] = margin(licz,mian)

%b
for k = 1:0.01:8
    [licz,mian]=zp2tf([],[-1 -1 -1],k);
    [Gm, Pm]=margin(licz, mian);
    Gm_dB=20*log10(Gm);

    if 5.99 < abs(Gm_dB) && abs(Gm_dB) < 6.01 
        poprawneK = k
        break;
    end
end

[licz,mian]=zp2tf([],[-1 -1 -1],poprawneK);
[Gm, Pm]=margin(licz, mian)
Gm_dB=20*log10(Gm)
