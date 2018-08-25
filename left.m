% The function gives the left-side neighbor of grid(i , j)
function out = left(i , j , grid)
if i < 1 || i > size(grid , 1) || j < 1 || j > size(grid , 2)
    out = 'incorrect inputs';
else
    if j == 1
        out = grid(i , end);
    else
        out = grid(i , j - 1);
    end
end
end

