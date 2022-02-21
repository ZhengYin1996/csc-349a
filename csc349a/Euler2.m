function Euler2(m,k,g,t0,v0,tn,n)
fprintf('values of t   approximations v(t)      dv/dt\n    ')
fprintf('%8.3f',t0),fprintf('%19.4f',v0), fprintf('%30.5f\n',v0)
h=(tn-t0)/n;
t=t0;
v=v0;
for i=1:n
    dv = g-k/m*v^2;
    v=v+dv*h;
    t=t+h;
    fprintf('%8.3f',t),fprintf('%19.4f',v),fprintf('%30.5f\n',dv )
end
