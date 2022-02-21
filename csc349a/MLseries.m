function MLseries(x,t)
fprintf('terms          first function          second function          RE by 1st fun        RE by 2nd fun\n')
FFun = 0;
SFun0 = 0;
trueValue = 0.135335;
for i=0:t
    FFun = FFun+ (-x)^i/factorial(i);
    SFun0 = SFun0 + x^i/factorial(i);
    SFun = 1/SFun0;
    RE1 = abs((trueValue-FFun)/FFun)*100;
    RE2 = abs((trueValue-SFun)/SFun)*100;
    fprintf('%8.3f',i),fprintf('%19.4f',FFun),fprintf('%25.5f',SFun),fprintf('%20.5f%%',RE1),fprintf('%20.5f%%\n',RE2)
end
