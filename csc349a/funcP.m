function y=fp(x)
    syms f;
    f0 = 9*exp(-x)*cos(2*x);
    df = diff(f0,f);
    y = double(subs(df,x));
end