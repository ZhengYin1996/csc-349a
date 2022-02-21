function Newton(x0, e, i_max,f,fp)
i = 1;
xn = x0;
root_found = false;
fprintf('  iteration     approximation \n')
while i<= i_max
   Xn = xn- (f(xn)/fp(xn));
   fprintf('%6.0f %18.8f \n',i,Xn);
   if abs(1-(Xn/xn))<e
       root =Xn;
       root_found = true;
       break;
   end
   xn= Xn;
   i = i+1;
end
if root_found ==false
    fprintf('failed to converge in %g iteration\n',i_max);
    root = [];
end



