clear all;

[Y, Fs] = audioread('shikabu.wav');
Fs = 16000;
sound(Y, Fs);

noise = randn(length(Y), 1);
Y_noise = Y + 0.08 * noise;
sound(Y_noise, Fs);

satu = ones(4, 1);

Y_c = conv(satu, Y_noise);
sound(Y_c, Fs);