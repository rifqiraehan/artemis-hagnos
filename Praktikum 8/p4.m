% Percobaan 4 - Cross korelasi dua buah sinyal sinus berbeda frekuensi. Edit contoh program diatas (program kedua cross korelasi) dengan menambahkan sebuah sinyal sinus yang lain dengan amplitudo A2 = 0.5 dan frekuensi f2 = 10 Hz → y(n) = A2 sin(2*PI*f2*n/Fs)
N = 1024;
f1 = 1;
fs = 200;
n = 0:N-1;
x = sin(2*pi*f1*n/fs);
y = x + 0.5 * sin(2*pi*10*n/fs);

subplot(3, 1, 1);
plot(x);
title('sinyal x(n)');
grid;

subplot(3, 1, 2);
plot(y);
title('sinyal y(n)');
grid;

Rxy = xcorr(x, y);
subplot(3, 1, 3);
plot(Rxy);
title('Cross correlation Rxy');
grid;