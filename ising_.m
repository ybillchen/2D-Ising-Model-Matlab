% Initialize all parameters
size = 8;
J = 1;
H = 0;
steps = 100;
ist0 = 0;

g = generategrid(size , ist0);
e = totalenergy(J , H , g);
m = totalmagnetization(g);

% The average energy/magnetization of spins.
energy = [e / size^2];
magnetization = [m / size^2];

for i = 1 : steps * size^2
    x = randompick(g);
    isflip = metropolisrule(x(1) , x(2) , J , H , T , g);
    if isflip 
        e = e + deltaenergy(x(1) , x(2) , J , H , g);
        m = m - 2 * g(x(1) , x(2));
        g(x(1) , x(2)) = -g(x(1) , x(2));
    end
    energy(i + 1) = e / size^2;
    magnetization(i + 1) = m / size^2;
end

% The average energy/magnetization of the last one tenth steps.
et = sum(energy(end - 0.1 * steps * size^2  + 1: end))/(0.1 * steps * size^2);
mt = sum(magnetization(end - 0.1 * steps * size^2  + 1: end))/(0.1 * steps * size^2);