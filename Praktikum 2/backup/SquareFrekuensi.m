% Pembangkitan Sinyal Persegi
Fs = 100;
t = (1:100)/Fs;
s1 = square(2*pi*5*t);      % frekuensi 5 Hz
plot(t, s1, 'linewidth', 2)
axis([0 1 -1.2 1.2])

s2 = square(2*pi*10*t);     % frekuensi 10 Hz
s3 = square(2*pi*15*t);     % frekuensi 15 Hz
s4 = square(2*pi*20*t);     % frekuensi 20 Hz

figure;
subplot(2, 2, 1)
plot(t, s1)
title('Frekuensi 5 Hz')

subplot(2, 2, 2)
plot(t, s2)
title('Frekuensi 10 Hz')

subplot(2, 2, 3)
plot(t, s3)
title('Frekuensi 15 Hz')

subplot(2, 2, 4)
plot(t, s4)
title('Frekuensi 20 Hz')


% Edited
Fs = 100;
t = (1:100) / Fs;

frekuensi = [5, 10, 15, 20];

for i = 1:length(frekuensi)
    s = square(2 * pi * frekuensi(i) * t);
    figure;
    plot(t, s, 'linewidth', 2);
    title(['Frekuensi ', num2str(frekuensi(i)), ' Hz']);
    xlabel('t');
    ylabel('Amplitudo');
    axis([0 1 -1.2 1.2]);
    grid on;
end