% Pembangkitan Sinyal Waktu Kontinu Sinusoidal
Fs = 100;
t = (1:100)/Fs;
s1 = sin(2*pi*5*t);    % amplitudo 1

s2 = 2*sin(2*pi*5*t);  % amplitudo 2
s3 = 4*sin(2*pi*5*t);  % amplitudo 4
s4 = 5*sin(2*pi*5*t);  % amplitudo 5
s5 = 6*sin(2*pi*5*t);  % amplitudo 6
s6 = 10*sin(2*pi*5*t); % amplitudo 10
s7 = 20*sin(2*pi*5*t); % amplitudo 20

figure;
subplot(2, 2, 1)
plot(t, s1)
title('Amplitudo 1')

subplot(2, 2, 2)
plot(t, s2)
title('Amplitudo 2')

subplot(2, 2, 3)
plot(t, s3)
title('Amplitudo 4')

subplot(2, 2, 4)
plot(t, s4)
title('Amplitudo 5')

figure;
subplot(2, 2, 1)
plot(t, s5)
title('Amplitudo 6')

subplot(2, 2, 2)
plot(t, s6)
title('Amplitudo 10')

subplot(2, 2, 3)
plot(t, s7)
title('Amplitudo 20')