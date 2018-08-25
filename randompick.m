% The function gives a coordinate randomly.
function out = randompick(grid)
out(1) = ceil(size(grid , 1) * rand(1));
out(2) = ceil(size(grid , 2) * rand(1));
end