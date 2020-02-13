function T = plotarm(q1, q2, q3, q4, q5, q6)
[Origin, TT] = main2(q1, q2, q3, q4, q5, q6-180);

TT = double(TT);
T = TT(:,:,6);
x = [];
y = [];
z = [];
for i = 1:7
   x = [x; Origin(i,1)];
   y = [y; Origin(i,2)];
   z = [z; Origin(i,3)];
   
end

figure
plot3(x, y, z, '-o','Color','b','MarkerSize',5,'MarkerFaceColor','#FF00FF')
axis([-1000 1000 -1000 1000 0 1400])

hold on

Fo =  TT(:,:,6) * [0; 0; 0; 1];
Fx =  TT(:,:,6) * [100; 0; 0; 1];
Fy =  TT(:,:,6) * [0; 100; 0; 1];
Fz =  TT(:,:,6) * [0; 0; 100; 1];

plot3([Fo(1), Fx(1)], [Fo(2), Fx(2)], [Fo(3), Fx(3)], 'Color', 'r')
plot3([Fo(1), Fy(1)], [Fo(2), Fy(2)], [Fo(3), Fy(3)], 'Color', 'g')
plot3([Fo(1), Fz(1)], [Fo(2), Fz(2)], [Fo(3), Fz(3)], 'Color', 'b')
txt = {'X'};
text(Fx(1), Fx(2), Fx(3) ,txt)
txt = {'Y'};
text(Fy(1), Fy(2), Fy(3) ,txt)
txt = {'Z'};
text(Fz(1), Fz(2), Fz(3) ,txt)
hold off
end

