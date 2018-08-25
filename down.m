% The function gives the down-side neighbor of grid(i , j)
function out = down(i , j , grid)
if i < 1 || i > size(grid , 1) || j < 1 || j > size(grid , 2)
    out = 'incorrect inputs';
else
    if i == size(grid , 1)
        out = grid(1 , j);
    else
        out = grid(i + 1 , j);
    end
end
end