[y,Fs] = audioread('COTE_OST_cut.wav');
soundsc(y, Fs);

info = audioinfo('COTE_OST_cut.wav');

fprintf('Jumlah channel: %d\n', info.NumChannels);
fprintf('Frekuensi sampling: %d Hz\n', info.SampleRate);
fprintf('Bit depth: %d bit\n', info.BitsPerSample);

plot(y);


y1 = audioread('shikabu.wav');
Fs = 10000;

sound(y1, Fs);

n = length(y1);

t = (0:n-1)/Fs;

figure;
plot(t, y1);
grid on;
