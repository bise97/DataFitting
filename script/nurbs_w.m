clear
close all
h = 2;
t = [0 0 0 1 1 1];
P = [0 2 4;1 3 1];
U = linspace(0,1,1e4);
w1 = [1 1 1];
c = nurbsfun(h+1,t,w1,P,U);
plot(c(1,:),c(2,:),'r')
hold on
w2 = [1 0.5 1];
c = nurbsfun(h+1,t,w2,P,U);
plot(c(1,:),c(2,:),'g')
w3 = [1 2 1];
c = nurbsfun(h+1,t,w3,P,U);
plot(c(1,:),c(2,:),'y')
w4 = [1 0 1];
c = nurbsfun(h+1,t,w4,P,U);
plot(c(1,:),c(2,:),'m')
plot(P(1,:),P(2,:),'b')
scatter(P(1,:),P(2,:),'bo','filled')
legend('parabola(w_1=1)','ellisse(w_1<1)','iperbole(w_1>1)','retta(w_1=0)')
axis([-1 5 0 4]) 
