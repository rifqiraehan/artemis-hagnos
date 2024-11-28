clear all; clc;

num = [0.001 0 10^6];    % (0.001 * s^2 + 10^6)
denum = [0.001 10 10^6]; % (0.001 * s^2 + 10 * s + 10^6)
sysc = tf(num, denum);
step(sysc);
grid;

sysd = c2d(sysc, 0.00001, 'zoh');
hold on;
step(sysd);


% For-loop version
clear all; clc;

num = [0.001 0 10^6];    % (0.001 * s^2 + 10^6)
denum = [0.001 10 10^6]; % (0.001 * s^2 + 10 * s + 10^6)
Ts = [0.00001, 0.00005, 0.001];

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