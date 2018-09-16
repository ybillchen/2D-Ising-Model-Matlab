function out = unitenergy(i , j , J , H , grid)
out1 = - J * grid(i,j) * (left(i,j,grid) + right(i,j,grid) + up(i,j,grid) + down(i,j,grid));
out2 = - H * grid(i,j);
out = out1 + out2;
end

