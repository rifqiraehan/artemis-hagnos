% Pembangkitan Sinyal Waktu Kontinu Sinusoidal
Fs = 100;
t = (1:100)/Fs;
s1 = sin(2*pi*5*t);          % fasa 0°

s2 = sin(2*pi*5*t + pi/2);   % fasa 90°
s3 = sin(2*pi*5*t + pi/4);   % fasa 45°
s4 = sin(2*pi*5*t + 2*pi/3); % fasa 120°
s5 = sin(2*pi*5*t + pi);     % fasa 180°
s6 = sin(2*pi*5*t + 5*pi/4); % fasa 225°

figure;
subplot(2, 2, 1)
plot(t, s1)
title('Fasa 0°')

subplot(2, 2, 2)
plot(t, s2)
title('Fasa 90°')

subplot(2, 2, 3)
plot(t, s3)
title('Fasa 45°')

subplot(2, 2, 4)
plot(t, s4)
title('Fasa 120°')

figure;
subplot(2, 2, 1)
plot(t, s5)
title('Fasa 180°')

subplot(2, 2, 2)
plot(t, s6)
title('Fasa 225°')


Fs = 100;
t = (1:100) / Fs;

fasa = [0, pi/2, pi/4, 2*pi/3, pi, 5*pi/4];
titles = {'Fasa 0°', 'Fasa 90°', 'Fasa 45°', 'Fasa 120°', 'Fasa 180°', 'Fasa 225°'};

for i = 1:length(fasa)
    s = sin(2 * pi * 5 * t + fasa(i));
    figure;
    plot(t, s);
    title(titles{i});
    xlabel('t');
    ylabel('amplitudo');
end