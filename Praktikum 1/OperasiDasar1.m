% Penjumlahan dan Perkalian
x = 2
y = 3
z = x + y
z = x * y

% Operasi Vektor dan Matriks
x = [1 2 3]
y = [4 5 6]
y(1)
x + y
y'
x*y'
x.*y'

x = [1;2;3]

x = ones(1, 10)
x = zeros(3, 1)


% Bilangan Acak
% Bilangan Acak Terdistribusi Uniform
rand(1, 10)

% Bilangan Acak Terdistribusi Gaussian (normal)
randn(1, 10)

% Bilangan Acak Binary
randi(1, 10)

% Vektor
randi(1, 10, 4)
Berikan penjelasan arti setiap perintah terhadap output yang dihasilkannya.

% Membuat Grafik
time = [0:0.001:0.099];
x = cos(0.1*pi*(0:99));
plot(time,x)

figure(2)
stem(time,x)

Lalu,
time = [0:0.001:0.099];
x = cos(0.1*pi*(0:99));
y = sin(0.1*pi*(0:99));
plot(time, x)
hold on
plot(time, y)
hold off

subplot(211); plot(time, x)
subplot(212); plot(time, y)

figure(1);
plot(time, x)
figure(2);
plot(time, y)

% Membuka File
clear all
load train
whos

sound(y, Fs)
plot(y)

clear all
load handel
whos

sound(y, Fs)
plot(y)

clear all
load gong
whos

sound(y, Fs)
plot(y)

clear all
load chirp
whos

sound(y, Fs)
plot(y)

y = imread('agnes.png');
imshow(y)

yg = rgb2gray(y);
imshow(yg)

whos

% File Name: buka_gambar.m
clear all
y = imread('agnes.jpg');
figure(1);
imshow(y)
yg = rgb2gray (y);
figure(2);
imshow(yg)

% Membuat Fungsi Matlab
function y = x2(t)
y = t.^2;

t = 0:1:10;
y_2 = x2(t);
t
y_2


% 1. Dari contoh-contoh program yang sudah anda jalankan, coba berikan penjelasan arti setiap perintah terhadap output yang dihasilkannya.

% 2. Coba anda cari bagaimana cara menampilkan grafik untuk tampilan tiga dimensi dan grafik polar.
% 3D Plot
% Create data for 3D plot
x = linspace(-10, 10, 100);
y = sin(x);
z = cos(x);

% Create a 3D plot
figure;
plot3(x, y, z);
title('3D Plot');
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
grid on;

% Polar Plot
% Create data for polar plot
theta = linspace(0, 2*pi, 100);
rho = abs(sin(2*theta) .* cos(2*theta));

% Create a polar plot
figure;
polarplot(theta, rho);
title('Polar Plot');

% 3. Bagaimana cara menampilkan lebih dari satu persamaan dalam satu grafik? Misalnya anda memiliki dua fungsi sinus yang berbeda fase. Fungsi pertama anda tampilkan, lalu anda lanjutkan menampilkan fungsi kedua, dengan catatan tampilan pada fungsi pertama tidak boleh hilang.
% Create data for the first sine function
x = linspace(0, 2*pi, 100);
y1 = sin(x);

% Plot the first sine function
figure;
plot(x, y1, 'b'); % 'b' specifies blue color
hold on; % Retain the current plot

% Create data for the second sine function with a phase shift
y2 = sin(x + pi/4);

% Plot the second sine function
plot(x, y2, 'r'); % 'r' specifies red color

% Add title and labels
title('Multiple Sine Functions');
xlabel('X-axis');
ylabel('Y-axis');

% Add a legend
legend('sin(x)', 'sin(x + \pi/4)');

% Release the plot hold
hold off;

% 4. Bagaimana cara menampilkan lebih dari satu grafik dalam satu tampilan? Misalnya anda gunakan fungsi di atas, satu fungsi ditampilkan diatas dan fungsi lainya di bagian bawah.

% 5. Bagaimana cara menampilkan dua fungsi diman masing-masing fungsi disajikan dalam grafik berbeda. Misalnya anda gunakan contoh kasus di atas, fungsi pertama anda tampilkan pada figure(1), sementara fungsi kedua anda tampilkan pada figure(2).