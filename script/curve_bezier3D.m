%Matrice costruita a partire dai punti di controllo
P = [1 0 0; 5 5 5; 3 2 2; 8 5 9; 6 1 6]
%Calcolo della matrice di Bernstein
syms t
B = bernsteinMatrix(length(P)-1,t)
bezierCurve = simplify(B*P)

fplot3(bezierCurve(1),bezierCurve(2),bezierCurve(3),[0,1],'b')
xlabel('X')
ylabel('Y')
zlabel('Z')
hold on
scatter3(P(:,1),P(:,2),P(:,3),'filled','r')
grid on