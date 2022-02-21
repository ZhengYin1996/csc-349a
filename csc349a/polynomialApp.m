function polynomialApp()
x=[-2:0.01:1];
fx = log(x+2);
Px1 = x+1;
Px2 = Px1-(1/2)*(x.^2+2*x+1);
Px3 = Px2+1/3*(x.^3+3*x.^2+3*x+1);
plot(x,fx,'r',x,Px1,'b',x,Px2,'g', x,Px3,'c');

