
% Pembangkitan Sinyal Waktu Kontinu Sinusoidal
Fs = 100;
t = (1:100)/Fs;
s1 = sin(2*pi*5*t);

% Mengubah Frekuensi
s2 = sin(2*pi*10*t); % frekuensi 10 Hz
s3 = sin(2*pi*15*t); % frekuensi 15 Hz
s4 = sin(2*pi*20*t); % frekuensi 20 Hz

figure;
subplot(2, 2, 1)
plot(t, s1)
title('Frekuensi 5 Hz')

subplot(2, 2, 2)
plot(t, s2)
title('Frekuensi 10 Hz')

subplot(2, 2, 3)
plot(t, s3)
title('Frekuensi 15 Hz')

subplot(2, 2, 4)
plot(t, s4)
title('Frekuensi 20 Hz')

% Mengubah Amplitudo
s2 = 2*sin(2*pi*5*t); % amplitudo 2
s3 = 4*sin(2*pi*5*t); % amplitudo 4
s4 = 5*sin(2*pi*5*t); % amplitudo 5
s5 = 6*sin(2*pi*5*t); % amplitudo 6
s6 = 10*sin(2*pi*5*t); % amplitudo 10
s7 = 20*sin(2*pi*5*t); % amplitudo 20

figure;
subplot(2, 2, 1)
plot(t, s1)
title('Amplitudo 1')

subplot(2, 2, 2)
plot(t, s2)
title('Amplitudo 2')

subplot(2, 2, 3)
plot(t, s3)
title('Amplitudo 4')

subplot(2, 2, 4)
plot(t, s4)
title('Amplitudo 5')

figure;
subplot(2, 2, 1)
plot(t, s5)
title('Amplitudo 6')

subplot(2, 2, 2)
plot(t, s6)
title('Amplitudo 10')

subplot(2, 2, 3)
plot(t, s7)
title('Amplitudo 20')



% Mengubah Fasa
s2 = sin(2*pi*5*t + pi/2); % fasa pi/2 90°
s3 = sin(2*pi*5*t + pi/4); % fasa pi/4 45°
s4 = sin(2*pi*5*t + 2*pi/3); % fasa 2*pi/3 120°
s5 = sin(2*pi*5*t + pi); % fasa pi 180°
s6 = sin(2*pi*5*t + 3*pi/4); % fasa 3*pi/4 225°

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
subplot(2, 1, 1)
plot(t, s5)
title('Fasa 180°')

subplot(2, 1, 2)
plot(t, s6)
title('Fasa 225°')


% Pembangkitan Sinyal Persegi
Fs = 100;
t = (1:100)/Fs;
s1 = square(2*pi*5*t);      % frekuensi 5 Hz
plot(t, s1, 'linewidth', 2)
axis([0 1 -1.2 1.2])

% Mengubah Frekuensi
s2 = square(2*pi*10*t);     % frekuensi 10 Hz
s3 = square(2*pi*15*t);     % frekuensi 15 Hz
s4 = square(2*pi*20*t);     % frekuensi 20 Hz

figure;
subplot(2, 2, 1)
plot(t, s1)
title('Frekuensi 5 Hz')

subplot(2, 2, 2)
plot(t, s2)
title('Frekuensi 10 Hz')

subplot(2, 2, 3)
plot(t, s3)
title('Frekuensi 15 Hz')

subplot(2, 2, 4)
plot(t, s4)
title('Frekuensi 20 Hz')

% Mengubah Fasa
s2 = square(2*pi*5*t + pi/4);   % fasa 45°
s3 = square(2*pi*5*t + 2*pi/3); % fasa 120°
s4 = square(2*pi*5*t + pi);     % fasa 180°
s5 = square(2*pi*5*t + 3*pi/4); % fasa 225°

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



% Pembangkitan Sinyal Waktu Diskrit, Sekuen Konstan

L = input('Panjang Gelombang (>=40) =');
P = input('Panjang Sekuen =');
for n = 1:L
    if (n >= P)
        step(n) = 1;
    else
        step(n) = 0;
    end
end

x = 1:L;
stem(x, step)



% Pembangkitan Sinyal Waktu Diskrit, Sekuen Pulsa


    L = input('Panjang Gelombang (>=40) =');
    P = input('Panjang Pulsa =');
    for n = 1:L
        if (n == P)
            step(n) = 1;
        else
            step(n) = 0;
        end
    end

    x = 1:L;
    stem(x, step)
    axis ([0 L -.1 1.2])



% Pembentukan Sinyal Sinus Waktu Diskrit

Fs = 20; % frekuensi sampling
t = (0:Fs - 1)/Fs; % proses normalisasi
s1 = sin(2*pi*t*2);
stem(t, s1)
axis([0 1 -1.2 1.2])

% Mengubah nilai Fs menjadi 30, 40, 50, 60, 70, 80
% Mengubah nilai Fs menjadi 18, 15, 12, 10, 8

% 30, 40, 50, 60, 70, 80, 18, 15, 12, 10, 8

% Pembangkitan Sinyal Dengan Memanfaatkan File *.wav

y1 = wavread('shikabu.wav');
Fs = 10000;
wavplay(y1, Fs, 'async') % memainkan audio sinyal asli

y1 = audioread('shikabu.wav');
Fs = 10000;
sound(y1, Fs) % memainkan audio sinyal asli

% Menampilkan file audio dalam bentuk grafik sebagai fungsi waktu
t = (1:length(y1))/Fs;
plot(t, y1)


% ffmpeg -i shikabu.mp3 -ac 1 -ar 16000 -ab 16k shikabu.wav
% ffmpeg -i COTE_OST.mp4a -ac 1 -ar 16000 -ab 16k COTE_OST.wav
% ffmpeg -i talking.mp3 -ac 1 -ar 16000 -ab 16k talking.wav
% ffmpeg -i me.mpeg -ac 1 -ar 16000 -ab 16k me.wav