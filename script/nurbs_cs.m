clear all
close all
load tavg_milan_v2
p = tavg';
n_punti = length(p(1,:));
h = 3;
w1 = ones(1,n_punti);
t = [zeros(1,h+1) 1/(n_punti-h)*(1:n_punti-h-1) ones(1,h+1)];
u = linspace(0,1,1e4);
c = nurbsfun(h+1,t,w1,p,u);
plot(c(1,:),c(2,:),'r');
title('NURBS con pesi omogenei')
hold on
scatter(p(1,:),p(2,:),'bo')

%utilizzando pesi disomogenei
w2 = [0.2*ones(1,5) ones(1,4) 0 5*ones(1,5) ones(1,5)];
c = nurbsfun(h+1,t,w2,p,u);
figure(2)
plot(c(1,:),c(2,:),'r');
title('NURBS con pesi non omogenei')
hold on
scatter(p(1,:),p(2,:),'bo')