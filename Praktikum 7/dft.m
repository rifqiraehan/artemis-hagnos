n = 0:199;
T = 0.01;
x_t = 3 * cos(2 * pi * n * T);
plot(n, x_t);  % ganti dengan stem(n, x_t) untuk plot diskrit
grid;