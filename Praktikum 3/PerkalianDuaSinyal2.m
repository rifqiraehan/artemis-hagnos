T = 100;
t = 0:1/T:2;
f1 = 1;
pha2_values = [pi/2, 0.1*pi, 0.25*pi, 1.5*pi];

for pha2 = pha2_values
    y1 = sin(f1 * pi * t);
    y2 = sin(f2 * pi * t + pha2);
    y3 = y1 .* y2;

    figure;
    subplot(3, 1, 1);
    plot(t, y1);

    subplot(3, 1, 2);
    plot(t, y2);

    subplot(3, 1, 3);
    plot(t, y3);
    title(['f2 = ', num2str(f2)]);
end