%Selezioniamo i punti di controllo
cpts = tavg';
%Scelgo l'intervallo temporale selezionando l'istante iniziale e finale
tpts = [0 21];
%Campioni temporali per la traiettoria, specificati come vettore
tvec = linspace(0,21,1e4);

[q,~,~,pp] = bsplinepolytraj(cpts,tpts,tvec);
plot(cpts(1,:),cpts(2,:),'xb-');
title('Curva B-Spline')
xlabel('Years')
ylabel('Temp[°C]')
grid on
hold on
fnplt(pp)
