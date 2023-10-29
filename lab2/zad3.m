licz = [0 0 1];
mian = [1000 500 400];

[A,B,C,D] = tf2ss(licz,mian);

[z, p, k] = tf2zp(licz, mian);
[A1,B1,C1,D1] = zp2ss(z,p,k);

if A == A1
    disp("A jest takie samo")
end
if B == B1 
    disp("B jest takie samo")
end
if C == C1 
    disp("D jest takie samo")
end
if D == D1 
    disp("D jest takie samo")
end

step(A,B,C,D);
step(A1,B1,C1,D1);
odpowiedzi_skokowe = isequal(step(A,B,C,D), step(A1,B1,C1,D1))

%impulse(A,B,C,D)
%impulse(A1,B1,C1,D1)
