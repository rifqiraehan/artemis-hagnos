clear all; clc;

m = 1000;
b = 50;
num = 1;
denum = [m b];

sysc = tf(num, denum);
step(sysc);
grid;

sysd = c2d(sysc, 0.1, 'zoh');
hold on;
step(sysd);

% For-loop version
clear all; clc;

m = 1000;
b = 50;
num = 1;
denum = [m b];
Ts = [0.1, 0.5, 1];

for i = 1:length(Ts)
    sysc = tf(num, denum);
    figure;
    step(sysc);
    grid;
    sysd = c2d(sysc, Ts(i), 'zoh');
    hold on;
    step(sysd);
    title(['Ts = ', num2str(Ts(i))]);
    grid;
    hold off;
end