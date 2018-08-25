% The function is used to generate a size-by-size grid.
% If tis0 == 1, gird will be generated orderly otherwise randomly.
function grid = generategrid(size , tis0)
if tis0
    grid = ones(size);
else
    grid = rand(size);
    grid = grid > 0.5;
    grid = 2 * grid - ones(size);
end
end

