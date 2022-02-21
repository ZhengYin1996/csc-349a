function relativeError(m,c,g,t0, v0, tn, n)
fprintf('values of t    RelativeError(V1 as VE)  RelativeError(V2 as VE)\n')
fprintf('%8.3f',t0),fprintf('%19.4f',v0),fprintf('%30.5f\n',v0)
h = (tn-t0)/n;
t = t0;
v1 = v0;
v2 =v0;
for i=1:n
    v1= g*m/c*(1-exp(-(c*(t+h)/m)));
    v2 =v2+(g-c/m*v2)*h;
    RE1 = abs((v1-v2)/v2);
    RE2 = abs((v2-v1)/v1);
    t = t+h;
    fprintf('%8.3f',t),fprintf('%19.4f%%',RE1*100),fprintf('%30.5f%%\n',RE2)
end
