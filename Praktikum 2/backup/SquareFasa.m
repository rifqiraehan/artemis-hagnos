% Pembangkitan Sinyal Persegi
Fs = 100;
t = (1:100)/Fs;
s1 = square(2*pi*5*t);          % fasa 0°
plot(t, s1, 'linewidth', 2)
axis([0 1 -1.2 1.2])

s2 = square(2*pi*5*t + pi/4);   % fasa 45°
s3 = square(2*pi*5*t + 2*pi/3); % fasa 120°
s4 = square(2*pi*5*t + pi);     % fasa 180°
s5 = square(2*pi*5*t + 5*pi/4); % fasa 225°

figure;
subplot(2, 2, 1)
plot(t, s1)
title('Fasa 0°')

subplot(2, 2, 2)
plot(t, s2)
title('Fasa 45°')

subplot(2, 2, 3)
plot(t, s3)
title('Fasa 120°')

subplot(2, 2, 4)
plot(t, s4)
title('Fasa 180°')

figure;
subplot(2, 1, 1)
plot(t, s5)
title('Fasa 225°')

% Edited
Fs = 100;
t = (1:100) / Fs;

fasa = [0, pi/4, 2*pi/3, pi, 3*pi/4];
titles = {'Fasa 0°', 'Fasa 45°', 'Fasa 120°', 'Fasa 180°', 'Fasa 225°'};

for i = 1:length(fasa)
    s = square(2 * pi * 5 * t + fasa(i));
    figure;
    plot(t, s, 'linewidth', 2);
    title(titles{i});
    xlabel('t');
    ylabel('amplitudo');
    axis([0 1 -1.2 1.2]);
    grid on;
end
