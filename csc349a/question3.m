A=[(-1.4)^3 (-1.4)^2 -1.4 1;
    (-1)^3 (-1)^2 -1 1;
    (0.1)^3 (0.1)^2 0.1 1;
    (1.1)^3 (1.1)^2 1.1 1;
    (1.4)^3 (1.4)^2 1.4 1];
B = [tan(-1.4); tan(-1); tan(0.1); tan(1.1); tan(1.4)];
coef = polyfit(A,B,4);
syms X;
p = coef(1)+ coef(2)*X+coef(3)*(X^2)+coef(4)*(X^3)+coef(5)*(X^4);
