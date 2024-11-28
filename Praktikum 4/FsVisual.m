Fs_values1 = [10, 14, 20];
Fs_values2 = [12, 16, 30];

for i = 1:length(Fs_values1)
    Fs1 = Fs_values1(i);

    t1 = (0:Fs1-1)/Fs1;
    s1 = sin(2 * pi * t1 * 2);

    Fs2 = Fs_values2(i);
    t2 = (0:Fs2-1)/Fs2;
    s2 = sin(2 * pi * t2 * 2);

    figure;

    subplot(211)
    stem(t1, s1)
    axis([0 1 -1.2 1.2])
    title(['Fs = ', num2str(Fs1)])

    subplot(212)
    stem(t2, s2)
    axis([0 1 -1.2 1.2])
    title(['Fs = ', num2str(Fs2)])
end
