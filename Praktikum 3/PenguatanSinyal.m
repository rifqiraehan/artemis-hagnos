T = 100;
t = 0:1/T:2;
f1 = 1;
y1 = sin(2 * pi * t);

subplot(2, 1, 1);
plot(t, y1);
grid on;

a = input('Nilai pengali yang anda gunakan (> 0): ');
y1_kuat = a * sin(2 * pi * t);
gain_dB = 10 * log10(a);

subplot(2, 1, 2);
plot(t, y1_kuat);
grid on;

title(['Nilai pengali: ', num2str(a), ', Nilai dB: ', num2str(gain_dB)]);