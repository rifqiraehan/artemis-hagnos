y1 = audioread('shikabu.wav');
Fs = 8192;
sound(y1, Fs); % Memainkan audio sinyal asli

amp_values = [0.1, 0.2, 0.5, 1.0, 1.5, 2.0];

for amp = amp_values
    y2 = amp * y1;

    sound(y2, Fs);

    t = 0:1/Fs:(N-1)/Fs;

    figure;
    subplot(2, 1, 1);
    plot(t, y1);

    subplot(2, 1, 2);
    plot(t, y2);
    title(['Amp = ', num2str(amp)]);
end
