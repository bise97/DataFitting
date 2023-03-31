runge = @(x) 1./(1+25*x.^2);
x = linspace(-1,1,1e4);
y = runge(x);
n_punti = 16;
cebi = @(i,n) cos(((2*i-1)*pi)./(2*n));
xp = cebi(1:n_punti, n_punti);
yp = runge(xp);
[v,t] = interp_pol(xp,yp,n_punti-1);
figure(1)
plot(x,y,'b',t,v,'r')
hold on
scatter(xp,yp,'r','filled')
xlabel('x');
ylabel('f(x)')
legend('fun. di Runge','pol. grado 15 (nodi di Čebyšëv)')
hold off
err = zeros(40,1);
for i = 1:40
    xp = cebi(1:i+1,i+1);
    yp = runge(xp);
    [v,t] = interp_pol(xp,yp,i);
    y = runge(t);
    err(i) = norm(y-v);
end
figure(2)
semilogy(err);
xlabel('Grado del pol. interpolante')
ylabel('Errore')
clear