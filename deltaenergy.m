% The function is used to calculate the energy change if grid(i , j) is flipped.
function out = deltaenergy(i , j , J , H , grid)
out1 = 4 * J * grid(i,j) * (left(i,j,grid) + right(i,j,grid) + up(i,j,grid) + down(i,j,grid));
out2 = 2 * H * grid(i,j);
out = out1 + out2;
end