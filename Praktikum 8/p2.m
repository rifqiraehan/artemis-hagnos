% Percobaan 2 - Auto korelasi gabungan 2 sinyal sinus
% Edit contoh program diatas (program pertama auto korelasi) dengan menambahkan sebuah sinyal sinus yang lain dengan amplitudo 0.5 dan frekuensi 10 Hz.
N = 1024;
f1 = 1;
fs = 200;
n = 0:N-1;
x = sin(2*pi*f1*n/fs) + 0.5 * sin(2*pi*10*n/fs);  % Generate the signal, x(n)
t = [1:N] * (1/fs);

subplot(2, 1, 1);
plot(t, x);
title('Sinewave of frequency 1000Hz [fs = 8000Hz]');
xlabel('Time, [s]');
ylabel('Amplitude');
grid;

Rxx = autom(x);
subplot(2, 1, 2);
plot(Rxx);
grid;

title('Autocorrelation function of the sinewave');
xlabel('lags');
ylabel('Autocorrelation');