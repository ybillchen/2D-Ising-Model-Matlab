% The function gives the right-side neighbor of grid(i , j)
function out = right(i , j , grid)
if i < 1 || i > size(grid , 1) || j < 1 || j > size(grid , 2)
    out = 'incorrect inputs';
else
    if j == size(grid , 2)
        out = grid(i , 1);
    else
        out = grid(i , j + 1);
    end
end
end

