load tavg_milan_v2
err = zeros(19,1);
for i = 1:19
    [~,~,p] = interp_pol(years,temp,i);
    yp = polyval(p,years);
    err(i) = norm(yp-temp,Inf);
end
plot(err)