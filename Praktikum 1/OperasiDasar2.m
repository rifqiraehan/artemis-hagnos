%{Coba anda cari bagaimana cara menampilkan grafik untuk tampilan tiga dimensi dan grafik polar.}%

% Grafik 3D
t = 0:0.01:10;
x = sin(t);
y = cos(t);
z = t;

figure;
plot3(x, y, z);
grid on;

% Grafik Polar
theta = linspace(0, 2*pi, 100);
r = 1 + cos(4*theta);

figure;
polarplot(theta, r);
