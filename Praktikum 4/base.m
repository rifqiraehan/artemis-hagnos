
% Pengamatan Pengaruh Pemilihan Frekuensi Sampling Secara Visual
Fs = 8; % Frekuensi Sampling
t = (0:Fs-1)/Fs; % Proses Normalisasi
s1 = sin(2 * pi * t * 2);

subplot(211)
stem(t, s1)
axis([0 1 -1.2 1.2])

Fs = 16; % Frekuensi Sampling
t = (0:Fs-1)/Fs; % Proses Normalisasi
s2 = sin(2 * pi * t * 2);

subplot(212)
stem(t, s2)
axis([0 1 -1.2 1.2])


% Pengamatan Pengaruh Pemilihan Frekuensi Sampling pada Efek Audio
clear all;

Fs = 10000;
t = 0:1/Fs:0.25;
f = 100;
x = sin(2 * pi * f * t);

sound(x, Fs);

% Pengamatan Efek Aliasing pada Audio 1
clc

Fs = 16000;
t = 0:1/Fs:0.25;

c = sin(2 * pi * 261.63 * t);
d = sin(2 * pi * 293.66 * t);
e = sin(2 * pi * 329.63 * t);
f = sin(2 * pi * 349.23 * t);
g = sin(2 * pi * 392.00 * t);
a = sin(2 * pi * 440.00 * t);
b = sin(2 * pi * 493.88 * t);
c1 = sin(2 * pi * 523.25 * t);
nol = zeros(1, length(t));

nada1 = [c, e, c, e, f, g, g, nol, b, c1, b, c1, b, g, nol, nol];
nada2 = [c, e, c, e, f, g, g, nol, b, c1, b, c1, b, g, nol];
nada3 = [c, nol, e, nol, g, nol, f, f, g, f, e, c, f, e, c, nol];
nada4 = [c, nol, e, nol, g, nol, f, f, g, f, e, c, f, e, c];
lagu = [nada1, nada2, nada3, nada4];

sound(lagu,Fs)

audiowrite('gundul.wav', lagu);

% Pengamatan Efek Aliasing pada Audio 2
clear all;

[Y, Fs] = audioread('shikabu');
Fs = 16000;

sound(Y, Fs);



[Y, Fs1] = audioread('COTE.wav');
Fs_values = [16000, 8000, 11025, 22050, 44100];

durasi = length(Y) / Fs1;

for Fs = Fs_values
    sound(Y, Fs);
    disp(Fs);

    pause(durasi + 5);
end
