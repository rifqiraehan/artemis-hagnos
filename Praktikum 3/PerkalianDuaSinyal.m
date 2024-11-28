T = 100;
t = 0:1/T:2;
f1 = 1;
pha2 = pi/2;

for f2 = 2:10
    y1 = sin(f1 * pi * t);
    y2 = sin(f2 * pi * t + pha2);
    y3 = y1 .* y2;

    figure;
    subplot(3, 1, 1);
    plot(t, y1);
    title(['f2 = ', num2str(f2)]);

    subplot(3, 1, 2);
    plot(t, y2);

    subplot(3, 1, 3);
    plot(t, y3);
end