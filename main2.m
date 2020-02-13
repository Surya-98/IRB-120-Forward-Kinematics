function [Origin,TT] = main2( q1, q2, q3, q4, q5, q6)


n = 6;

alpha = [-90 0 -90 90 -90 0];
d = [290 0 0 302 0 72];
a = [0 270 70 0 0 0];
theta = [ 0 -90 0 0 0 0];

q = sym('q', [1, n]);
theta = subs (q, q, theta + q);


T = sym('T', [4,4,6]);
for i = 1:6
    T(:,:,i)= dhparam2matrix(theta(i), d(i), a(i), alpha(i));
end
origin = [];
origin = [origin; [0, 0, 0]];
K = T(:,:,1);
TT = [];
TT = [TT; K];
origin = [origin; transpose(K(1:3,4))];

for i = 2:6
    K = K*T(:,:,i);
    origin = [origin; transpose(K(1:3,4))];
    TT(:,:,i) = K;
end

Origin = double(vpa(subs(origin, q, [q1, q2, q3, q4, q5, q6])));
TT = double(vpa(subs(TT, q, [q1, q2, q3, q4, q5, q6])));
T = double(vpa(subs(T, q, [q1, q2, q3, q4, q5, q6])));
end
