% Pembangkitan Sinyal Waktu Kontinu Sinusoidal
Fs = 100;
t = (1:100)/Fs;
s1 = sin(2*pi*5*t);  % frekuensi 5 Hz

s2 = sin(2*pi*10*t); % frekuensi 10 Hz
s3 = sin(2*pi*15*t); % frekuensi 15 Hz
s4 = sin(2*pi*20*t); % frekuensi 20 Hz

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


