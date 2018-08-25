% b is a list that records all energy data.
% mb is a list that records all magnetization data.
% a is a list that records average energy data.
% ma is a list that records average magnetization data.
% c and mc are used to record temporary data.
a = [];
b = [];
c = [];
ma = [];
mb = [];
mc = [];

% The program will repeat 10 times before changing the temporature.
times = 10;

for w = 1 : 30
    % T is the temporature, the program will sweep it from 1 to 10.
    T = 1 + (0.3 * w);
    
    for u = 1 : times
        % The program will run for a long time. You can estimate the remaining time by counting T and u.
        % The program ends when [T , u] reaches [10 , 10].
        [T , u]
        ising_;
        b(times * (w-1) + u , 1) = T;
        b(times * (w-1) + u , 2) = et;
        mb(times * (w-1) + u , 1) = T;
        mb(times * (w-1) + u , 2) = mt;
        
        c(u) = et;
        mc(u) = mt;
    end
    a(w , 1) = T;
    a(w , 2) = sum(c) / times;
    ma(w , 1) = T;
    ma(w , 2) = sum(mc) / times;
end

% Plot data.
% Left: energy-temporature figure
subplot(1 , 2 , 1);
plot(a(: , 1) , a(: , 2));
hold on
% Right: magnetization-temporature figure
subplot(1 , 2 , 2);
plot(ma(: , 1) , ma(: , 2));

% Output data into txt files.
%dlmwrite('a.txt' , a , '\t');
%dlmwrite('b.txt' , b , '\t');
%dlmwrite('ma.txt' , ma , '\t');
%dlmwrite('mb.txt' , mb , '\t');
