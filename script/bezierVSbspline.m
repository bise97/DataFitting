%Consideriamo i seguenti punti di controllo
%cpts = [3 5 7 4 -3 1; 4 3 2 -5 3 1];
%Vediamo come cambiano le curve cambiando un solo punto di controllo, in
%particolare il primo punto (3,4)->(3,-1)
cpts = [3 5 7 4 -3 1; -1 3 2 -5 3 1];
%Costruzione della curva di bezier
syms t;
B = bernsteinMatrix(5, t);
bezierCurve = simplify(B*cpts');
figure(1)
plot(cpts(1,:),cpts(2,:),'xb-');
title('Curva di Bezier')
xlabel('X')
ylabel('Y')
hold on
fplot(bezierCurve(1),bezierCurve(2),[0,1],'g')

%Costruzione della curva B-Spline
%Scelgo l'intervallo temporale selezionando l'istante iniziale e finale
tpts = [0 5];
%Campioni temporali per la traiettoria, specificati come vettore
tvec = 0:0.01:5;
[q,~,~,pp] = bsplinepolytraj(cpts,tpts,tvec);
figure(2)
plot(cpts(1,:),cpts(2,:),'xb-');
title('Curva B-Spline')
xlabel('X')
ylabel('Y')
hold on
fnplt(pp)
