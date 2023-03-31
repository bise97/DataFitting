load tavg_milan_v2
[v,t,p] = interp_pol(years,temp,5);
plot(years,temp,'*',t,v)
grid on
axis tight
xlabel('Years')
ylabel('Temp[°C]')
clear