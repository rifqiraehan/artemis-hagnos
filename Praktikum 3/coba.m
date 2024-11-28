T = 100;
t = 0:1/T:2;
f1 = 1;
y1 = sin(2 * pi * t);

a_values = [0.1, 0.3, 0.5, 0.8];

for a = a_values
    y1_kuat = a * sin(2 * pi * t);
    gain_dB = 10 * log10(max(y1_kuat) / max(y1));

    figure;
    subplot(2, 1, 1);
    plot(t, y1);
    grid on;

    subplot(2, 1, 2);
    plot(t, y1_kuat);
    grid on;

    title(['Nilai pengali: ', num2str(a), ', Nilai dB: ', num2str(gain_dB)]);
end