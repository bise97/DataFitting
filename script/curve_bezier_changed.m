load tavg_milan_v2
%Calcolo della matrice di Bernstein
tavg(9,2) = 20
syms t
B = bernsteinMatrix(length(years)-1,t)
bezierCurve = simplify(B*tavg)
figure(2)
xlabel('Years')
ylabel('Temp[°C]')
fplot(bezierCurve(1),bezierCurve(2),[0,1],'b')
hold on
scatter(tavg(:,1),tavg(:,2),'filled','r')
grid on