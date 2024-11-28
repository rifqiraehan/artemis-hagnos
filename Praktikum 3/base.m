% Penguatan Sinyal
% Gelombang Pertama
T = 100;
t = 0:1/T:2;
f1 = 1;
y1 = sin(2 * pi * t);

subplot(2, 1, 1);
plot(t, y1);

% Continue
a = input('Nilai pengali yang anda gunakan (>0): ');
y1_kuat = a * sin(2 * pi * t);

subplot(2, 1, 2);
plot(t, y1_kuat);
title('Nilai pengali yang digunakan:' + a);

% Pelemahan Sinyal
a = input('Nilai pengali yang anda gunakan (<1): ');
y1_pelemahan = a * sin(2 * pi * t);

subplot(2, 1, 2);
plot(t, y1_pelemahan);
title('Nilai pengali yang digunakan:' + a);

% % % %
% Penjumlahan Dua Sinyal
T = 100;
t = 0:1/T:2;
f1 = 1;
y1 = sin(2 * pi * t);

subplot(3, 1, 1);
plot(t, y1);

% Gelombang Kedua
f2 = 2;
pha2 = pi/2;
y2 = sin(2 * pi * t + pi);

subplot(3, 1, 2);
plot(t, y2);

% Penjumlahan sinyal y1 dan y2
T = 100;
t = 0:1/T:2;
f1 = 1;
f2 = 2;
pha2 = pi/2;
y1 = sin(f1 * pi * t);

subplot(3, 1, 1);
plot(t, y1);

y2 = sin(f2 * pi * t + pha2);

subplot(3, 1, 2);
plot(t, y2);

y3 = y1 + y2;

subplot(3, 1, 3);
plot(t, y3);

% Penjumlahan Sinyal y1 dan y2 dengan nilai f2 = 3 s/d 10
T = 100;
t = 0:1/T:2;
f1 = 1;
pha2 = pi/2;

for f2 = 3:10
    y1 = sin(f1 * pi * t);
    y2 = sin(f2 * pi * t + pha2);
    y3 = y1 + y2;

    figure;
    subplot(3, 1, 1);
    plot(t, y1);

    subplot(3, 1, 2);
    plot(t, y2);

    subplot(3, 1, 3);
    plot(t, y3);
    title(['f2 = ', num2str(f2)]);
end

% Penjumlahan Sinyal y1 dan y2 dengan nilai pha2 = 0.1*pi, 0.25*pi, 0.5*pi, 1.5*pi
T = 100;
t = 0:1/T:2;
f1 = 1;
f2 = 2;

pha2_values = [0.1*pi, 0.25*pi, 0.5*pi, 1.5*pi];

for pha2 = pha2_values
    y1 = sin(f1 * pi * t);
    y2 = sin(f2 * pi * t + pha2);
    y3 = y1 + y2;

    figure;
    plot(t, y3);
    title(['pha2 = ', num2str(pha2)]);
end

% % % %
% Perkalian Dua Sinyal
T = 100;
t = 0:1/T:2;
f1 = 1;
y1 = sin(2 * pi * t);

subplot(3, 1, 1);
plot(t, y1);

% Gelombang Kedua
f2 = 2;
pha2 = pi/2;
y2 = sin(2 * pi * t + pi);

subplot(3, 1, 2);
plot(t, y2);

% Perkalian sinyal y1 dan y2
T = 100;
t = 0:1/T:2;
f1 = 1;
f2 = 2;
pha2 = pi/2;
y1 = sin(f1 * pi * t);

subplot(3, 1, 1);
plot(t, y1);

y2 = sin(f2 * pi * t + pha2);

subplot(3, 1, 2);
plot(t, y2);

y3 = y1 .* y2;

subplot(3, 1, 3);
plot(t, y3);

% Perkalian Sinyal y1 dan y2 dengan nilai f2 = 3 s/d 10
T = 100;
t = 0:1/T:2;
f1 = 1;
pha2 = pi/2;

for f2 = 3:10
    y1 = sin(f1 * pi * t);
    y2 = sin(f2 * pi * t + pha2);
    y3 = y1 .* y2;

    figure;
    plot(t, y3);
    title(['f2 = ', num2str(f2)]);
end

% Perkalian Sinyal y1 dan y2 dengan nilai pha2 = 0.1*pi, 0.25*pi, 1.5*pi
T = 100;
t = 0:1/T:2;
f1 = 1;
pha2_values = [0.1*pi, 0.25*pi, 1.5*pi];

for pha2 = pha2_values
    y1 = sin(f1 * pi * t);
    y2 = sin(f2 * pi * t + pha2);
    y3 = y1 .* y2;

    figure;
    plot(t, y3);
    title(['f2 = ', num2str(f2)]);
end

% % % %
% Penambahan Noise Gaussian pada Sinyal Audio
y1 = audioread('shikabu.wav');
Fs = 8192;
Fs1 = Fs;

sound(y1, Fs1); % Sinyal asli dimainkan

% Menambahkan noise Gaussian
N = length(y1);
var = 0.1;
noise_1 = sqrt(var) * randn(N, 1); % Membangkitkan noise gaussian

noise_1 = var * randn(N, 1); % Membangkitkan noise gaussian [MODUL]

y_1n = y1 + noise_1; % Menambahkan noise ke file

sound(y_1n, Fs1); % Sinyal bernoise dimainkan

% Noise dengan var = 0.2, 0.3, 0.5, 1.0, 1.5, 2.0
var_values = [0.2, 0.3, 0.5, 1.0, 1.5, 2.0];

for var = var_values
    noise_1 = sqrt(var) * randn(N, 1);
    y_n = y1 + noise_1;

    sound(y_n, Fs1);
end

% Menampilkan audio dalam grafik fungsi waktu untuk sinyal asli dan sinyal bernoise
t = 0:1/Fs1:(N-1)/Fs1;

subplot(2, 1, 1);
plot(t, y1);

subplot(2, 1, 2);
plot(t, y_1n);

% % % %
% Proses Penguatan pada Sinyal Sinyal Audio
y1 = audioread('shikabu.wav');
Fs = 8192;
sound(y1, Fs); % Memainkan audio sinyal asli

amp = 1.5;
y2 = amp * y1;
sound(y2, Fs); % Memainkan audio sinyal setelah penguatan

% Penguatan dengan nilai amp = 0.1, 0.2, 0.5, 1.0, 1.5, 2.0
amp_values = [0.1, 0.2, 0.5, 1.0, 1.5, 2.0];

for amp = amp_values
    y2 = amp * y1;
    sound(y2, Fs);
end

% Menampilkan audio dalam grafik fungsi waktu untuk sinyal asli dan sinyal setelah penguatan
t = 0:1/Fs:(N-1)/Fs;

subplot(2, 1, 1);
plot(t, y1);

subplot(2, 1, 2);
plot(t, y2);

