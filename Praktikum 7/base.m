% Transformasi Fourier Diskrit

% Dasar Pembentukan DFT
n = 0:199;
T = 0.01;
x_t = 3 * cos(2 * pi * n * T);
plot(n, x_t);  % ganti dengan stem(n, x_t) untuk plot diskrit
grid;

% file 2
clear all;clc

N = 200;
nn = N - 1;
for k = 1:200;
    x_n = 0.0;
    for n = 1:nn
        x_n = (3 * cos(0.02 * pi * n)) .* (exp(-j * k * 2 * pi * n / 200)) + x_n;
    end

    yR(k) = real(x_n);
    yI(k) = imag(x_n);

    magni_k(k) = sqrt(real(x_n) .* real(x_n) + imag(x_n) .* imag(x_n));
end

figure(1);
stem(yR);
axis([0 200 0 800]);
xlabel('indeks frekuensi');
title('Bagian Real');
grid;

figure(2);
stem(yI);
axis([0 200 0 800]);
xlabel('indeks frekuensi');
title('Bagian Imaginer');
grid;

% Edit File 2
x_t = 3 * sin(2 * pi * n * T);
x_n = (3 * sin(0.02 * pi * n)) .* (exp(-j * k * 2 * pi * n / 200)) + x_n;

% Edit File 2
N = 1000


% Zero Padding
% NULL

% Represesentasi Dalam Domain Frekuensi
clear all;clc

T = 128; % sample rate
zpf = 2; % zero padding factor
n = 0:1 / T:(T-1) / T; % disrete time axis
fi = 5; % frequency
xw = [sin(2 * pi * n * fi), zeros(1, (zpf - 1) * T)];
nn = length(xw);
k = 0:nn - 1;

% plot time data
subplot(2, 1, 1);
plot(zpf * k / nn, xw); % normalisasi absis domain waktu
axis([0 zpf -1.1 1.1])
xlabel('domain waktu (detik)')

% Smoothed, interpolated spectrum
X = fft(xw);
spec = abs(X);
f_X = length(X);
f= 0:f_X - 1;

% Plot spectral magnitude
subplot(2, 1, 2);
plot(f/T, spec);
axis([0 T/T 0 100])
xlabel('domain frekuensi (x pi), ternormalisasi terhadap frekuensi sampling')

% Modifikasi, sehingga tampilan nilai frekuensi dalah Hz
% Plot spectral magnitude
subplot(2, 1, 2);
plot(f/2, spec);
axis([0 T/2 0 100])
xlabel('domain frekuensi')

% Modifikasi, sehingga mendapatkan nilai magnitudo dalam dB
% Plot spectral magnitude
subplot(2, 1, 2);
plot(f/2, spec);
axis([0 T/2 0 40])
xlabel('domain frekuensi dalam dB')
grid;

x(n) = (1/64) * (sin(2 * pi * n/64) + (1/3) * sin(2 * pi * 15 * n/64));

xw = [(1/64) * (sin(2 * pi * n/64) + (1/3) * sin(2 * pi * 15 * n/64)), zeros(1, (zpf - 1) * T)];

% Zero Padding
% Untuk memahami konsep zero padding pada DFT, anda ikuti langkah-langkah percobaan berikut ini.
% 1. Buat program baru untuk pembangkitan sekuen unit step dan gunakan juga fft untuk memperoleh nilai DFT.
% 2. Modifikasi program anda dengan menambahkan nilai nol sebanyak 4 angka di belakang sekuen bernilai satu tersebut.
% 3. Modifikasi program anda sehingga nilai nol dibelakang sekuen unit step menjadi 12, catat apa yang terjadi.
% 4. Lanjutkan penambahan nilai nol menjadi 16, dan catat apa yang terjadi.
% Jelaskan konsep zero padding yang telah anda buat simulasinya.....(smile)

% Kode Matlab
clear all;clc

% 1. Sekuen unit step
n = 0:1:63;
x = ones(1, 64);
X = fft(x);
X = fftshift(X);
f = -32:31;
subplot(2, 1, 1);

% Plot domain waktu
stem(n, x);
xlabel('n');
ylabel('x[n]');
title('Sekuen unit step');

% Plot domain frekuensi
subplot(2, 1, 2);
stem(f, abs(X));
xlabel('f');
ylabel('|X(f)|');
title('DFT dari sekuen unit step');

% 2. Sekuen unit step dengan 4 nilai nol
x = [ones(1, 64), zeros(1, 4)];
X = fft(x);
X = fftshift(X);
f = -32:35;

figure;
subplot(2, 1, 1);

% Plot domain waktu
stem(n, x);
xlabel('n');
ylabel('x[n]');
title('Sekuen unit step dengan 4 nilai nol');

% Plot domain frekuensi
subplot(2, 1, 2);
stem(f, abs(X));
xlabel('f');
ylabel('|X(f)|');
title('DFT dari sekuen unit step dengan 4 nilai nol');

% 3. Sekuen unit step dengan 12 nilai nol
x = [ones(1, 64), zeros(1, 12)];
X = fft(x);
X = fftshift(X);
f = -32:51;
subplot(2, 1, 1);

% Plot domain waktu
stem(n, x);
xlabel('n');
ylabel('x[n]');
title('Sekuen unit step dengan 12 nilai nol');

% Plot domain frekuensi
subplot(2, 1, 2);
stem(f, abs(X));
xlabel('f');
ylabel('|X(f)|');
title('DFT dari sekuen unit step dengan 12 nilai nol');

% 4. Sekuen unit step dengan 16 nilai nol
x = [ones(1, 64), zeros(1, 16)];
X = fft(x);
X = fftshift(X);
f = -32:63;
subplot(2, 1, 1);

% Plot domain waktu
stem(n, x);
xlabel('n');
ylabel('x[n]');
title('Sekuen unit step dengan 16 nilai nol');

% Plot domain frekuensi
subplot(2, 1, 2);
stem(f, abs(X));
xlabel('f');
ylabel('|X(f)|');

% Konsep zero padding adalah menambahkan nilai nol pada akhir sekuen yang akan diolah. Dengan menambahkan nilai nol, maka resolusi frekuensi dari DFT akan meningkat. Hal ini dapat dilihat dari perubahan nilai f pada plot domain frekuensi. Semakin banyak nilai nol yang ditambahkan, maka semakin besar pula resolusi frekuensi yang dihasilkan. Dengan demikian, zero padding dapat digunakan untuk meningkatkan resolusi frekuensi dari DFT.
