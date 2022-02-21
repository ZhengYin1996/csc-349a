function Euler2RE(m,k,g,t0,v0,tn,n)
% print headings and initial conditions
fprintf('values of t    RelativeError(V1 as VE)  RelativeError(V2 as VE)\n')
fprintf('%8.3f',t0),fprintf('%19.4f',v0),fprintf('%30.5f\n',v0)
% compute step size h
h=(tn-t0)/n;
% set t,v to the initial values
t=t0;
v1=v0;
v2= v0;
% compute v(t) over n time steps using Euler’s method
for i=1:n
    dv = g-k/m*v1^2;
    v1=v1+dv*h;
    v2 = sqrt(g*m/k)*tanh(sqrt(g*k/m)*(t+h));
    RE1 = abs((v1-v2)/v2);
    RE2 = abs((v2-v1)/v1);
    t=t+h;
   fprintf('%8.3f',t),fprintf('%19.4f%%',RE1*100),fprintf('%30.5f%%\n',RE2)
end
