% The function is used to calculate the total energy.
function out = totalenergy(J , H , grid)
out = 0
for i = 1 : size(grid , 1)
    for j = 1 : size(grid , 2)
        out = out + unitenergy(i , j , J , H , grid);
    end
end
end

