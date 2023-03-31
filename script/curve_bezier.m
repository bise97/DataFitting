load tavg_milan_v2
%Calcolo della matrice di Bernstein
syms t
B = bernsteinMatrix(length(years)-1,t)
bezierCurve = simplify(B*tavg)
figure(1)
fplot(bezierCurve(1),bezierCurve(2),[0,1],'b')
xlabel('Years')
ylabel('Temp[°C]')
hold on

tavg(9,2) = 20
bezierCurve1 = simplify(B*tavg)
fplot(bezierCurve1(1),bezierCurve1(2),[0,1],'g')
scatter(tavg(:,1),tavg(:,2),'filled','r')
scatter(1992,tavg(9,2),'filled','g')
grid on