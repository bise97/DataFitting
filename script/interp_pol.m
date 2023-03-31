function [v,t,p] = interp_pol(x,y,r)
p = polyfit(x,y,r);
t = linspace(min(x),max(x),1e4);
v = polyval(p,t);
end

