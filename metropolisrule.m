% The function decides wether to accept the change by Metropolis-Acceptance-Ratio.
function out = metropolisrule(i , j , J , H , T , grid)
de = deltaenergy(i , j , J , H , grid);
if de < 0 || rand(1) < exp(-de / T)
    out = 1;
else
    out = 0;
end
end
