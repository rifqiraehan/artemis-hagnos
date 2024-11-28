Fs = 100;
t = (1:100) / Fs;
f_values = [5, 10, 20, 50];
a_values = [1, 2, 4, 5];

for i = 1:length(f_values)
    f = f_values(i);
    a = a_values(i);

    s = a * sin(2 * pi * f * t);

    figure;
    subplot(2, 1, 1)
    plot(t, s)
    title(['Sinyal dengan frekuensi ', num2str(f), ' Hz dan amplitudo ', num2str(a)])
    xlabel('time')

    S = fft(s, 512);
    w = (0:255) / 256 * (Fs/2);
    subplot(2, 1, 2)
    plot(w, abs(S(1:256)))
    xlabel('frequency')
end

