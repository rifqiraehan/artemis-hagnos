y1 = audioread('shikabu.wav');
Fs = 8192;
Fs1 = Fs;

sound(y1, Fs1); % Sinyal asli dimainkan

N = length(y1);
var_values = [0.1, 0.2, 0.3, 0.5, 1.0, 1.5, 2.0];

for var = var_values
    noise_1 = sqrt(var) * randn(N, 1);
    y_n = y1 + noise_1;

    sound(y_n, Fs1);

    t = 0:1/Fs1:(N-1)/Fs1;

    figure;
    subplot(2, 1, 1);
    plot(t, y1);

    subplot(2, 1, 2);
    plot(t, y_1n);
    title(['Var = ', num2str(var)]);
end