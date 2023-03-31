clear
load tavg_milan_v2
t = linspace(min(years),max(years),1e4)';
f = interp1(years,temp,t);
plot(t,f,'r')
hold on
scatter(years,temp,'or','filled')
xlabel('Years')
ylabel('Temp[°C]')
grid on
axis tight
clear