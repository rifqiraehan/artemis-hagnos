T = 100;
t = 0:1/T:2;
f1 = 1;
y1 = sin(2 * pi * t);

subplot(2, 1, 1);
plot(t, y1);

a = input('Nilai pengali yang anda gunakan (< 1): ');
y1_kuat = a * sin(2 * pi * t);

subplot(2, 1, 2);
plot(t, y1_kuat);
title(['Nilai pengali yang digunakan: ', num2str(a)]);

gain_dB = 20 * log10(a);
disp(['Penguatan dalam dB: ', num2str(gain_dB)]);