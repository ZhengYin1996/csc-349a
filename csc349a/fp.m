function [y]=fp(x)
    syms f1;
    f0 = 9*exp(-x)*cos(2*pi*x);
    y = diff(f0,f1);
    
end