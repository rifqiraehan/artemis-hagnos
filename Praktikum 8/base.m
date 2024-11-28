% Auto Korelasi, Frekuensi = 1Hz, Frekuensi Sampling = 200Hz
N = 1024;   % Number of samples
f1 = 1;     % Frequency of the sinewave
fs = 200;   % Sampling frequency
n = 0:N-1;  % Sampling index frequency
x = sin(2*pi*f1*n/fs);  % Generate the signal, x(n)
t = [1:N] * (1/fs);     % Prepare the time axis

subplot(2, 1, 1);       % Prepare the figure
plot(t, x);             % Plot x(n)
title('Sinewave of frequency 1000Hz [Fs = 8000Hz]');
xlabel('Time, [s]');
ylabel('Amplitude');
grid;

Rxx = xcorr(x);         % Estimate its autocorrelation
subplot(2, 1, 2);       % Prepare the figure
plot(Rxx);              % Plot the autocorrelation
grid;

title('Autocorrelation function of the sinewave');
xlabel('lags');
ylabel('Autocorrelation');

% Cross Korelasi dari dua buah sinyal: x(n) = sin(2*pi*f1*t) dan y(n) = x(n)+w(n), dengan f1 = 1 Hz dan w(n) adalah zero mean, unit varian dari random gaussian
N = 1024;   % Number of samples to generate
f1 = 1;     % Frequency of the sinewave
fs = 200;   % Sampling frequency
n = 0:N-1;  % Sampling index frequency
x = sin(2*pi*f1*n/fs);  % Generate x(n)
y = x + 10*randn(1, N);  % Generate y(n)

subplot(3, 1, 1);
plot(x);
title('Pure Sinewave');
grid;

subplot(3, 1, 2);
plot(y);
title('y(n), Pure Sinewave + Noise');
grid;

Rxy = xcorr(x, y);       % Estimate the cross correlation
subplot(3, 1, 3);
plot(Rxy);
title('Cross correlation Rxy');
grid;

% Percobaan 1 - Membuat fungsi autocorrelation sendiri
function [Rxx] = autom(x)
    % [Rxx] = autom(x)
    % This function estimates the autocorrelation of the sequence of
    % random variables given in x as: Rxx(1), Rxx(2), ..., Rxx(N),
    % where N is number samples in x.

    N = length(x);  % Number of samples
    Rxx = zeros(1, N);   % Prepare the output
    for m = 1 : N+1
        for n = 1 : N-m+1
            Rxx(m) = Rxx(m) + x(n) * x(n+m-1);
        end
    end
end

% and then call the function as follows:
N = 1024;
f1 = 1;
fs = 200;
n = 0:N-1;
x = sin(2*pi*fl*n/fs);
t = [1:N] * (1/fs);

subplot(2, 1, 1);
plot(t, x);
title('Sinewave of frequency 1000Hz [fs = 8000Hz]');
xlabel('Time, [s]');
ylabel('Amplitude');
grid;

Rxx = autom(x);
subplot(2, 1, 2);
plot(Rxx);
grid;

title('Autocorrelation function of the sinewave');
xlabel('lags');
ylabel('Autocorrelation');

% Percobaan 2 - Auto korelasi gabungan 2 sinyal sinus
% Edit contoh program diatas (program pertama auto korelasi) dengan menambahkan sebuah sinyal sinus yang lain dengan amplitudo 0.5 dan frekuensi 10 Hz.
N = 1024;
f1 = 1;
fs = 200;
n = 0:N-1;
x = sin(2*pi*f1*n/fs) + 0.5 * sin(2*pi*10*n/fs);  % Generate the signal, x(n)
t = [1:N] * (1/fs);

subplot(2, 1, 1);
plot(t, x);
title('Sinewave of frequency 1000Hz [fs = 8000Hz]');
xlabel('Time, [s]');
ylabel('Amplitude');
grid;

Rxx = autom(x);
subplot(2, 1, 2);
plot(Rxx);
grid;

title('Autocorrelation function of the sinewave');
xlabel('lags');
ylabel('Autocorrelation');

% Percobaan 3 - Auto korelasi gabungan 4 sinyal sinus
% Edit contoh program diatas (program pertama auto korelasi) dengan menambahkan lima buah sinyal sinus yang lain dengan amplitudo 0.5, 0.25, 0.1, dan frekuensi masing-masing 10 Hz, 30 Hz dan 50 Hz.
N = 1024;
f1 = 1;
fs = 200;
n = 0:N-1;
x = sin(2*pi*f1*n/fs) + 0.5 * sin(2*pi*10*n/fs) + 0.25 * sin(2*pi*30*n/fs) + 0.1 * sin(2*pi*50*n/fs);  % Generate the signal, x(n)
t = [1:N] * (1/fs);

subplot(2, 1, 1);
plot(t, x);
title('Sinewave of frequency 1000Hz [fs = 8000Hz]');
xlabel('Time, [s]');
ylabel('Amplitude');
grid;

Rxx = autom(x);
subplot(2, 1, 2);
plot(Rxx);
grid;

title('Autocorrelation function of the sinewave');
xlabel('lags');
ylabel('Autocorrelation');

% Percobaan 4 - Cross korelasi dua buah sinyal sinus berbeda frekuensi. Edit contoh program diatas (program kedua cross korelasi) dengan menambahkan sebuah sinyal sinus yang lain dengan amplitudo A2 = 0.5 dan frekuensi f2 = 10 Hz → y(n) = A2 sin(2*PI*f2*n/Fs)
N = 1024;
f1 = 1;
fs = 200;
n = 0:N-1;
x = sin(2*pi*f1*n/fs);
y = x + 0.5 * sin(2*pi*10*n/fs);

subplot(3, 1, 1);
plot(x);
title('Pure Sinewave');
grid;

subplot(3, 1, 2);
plot(y);
title('y(n), Pure Sinewave + Noise');
grid;

Rxy = xcorr(x, y);
subplot(3, 1, 3);
plot(Rxy);
title('Cross correlation Rxy');
grid;

% Percobaan 5 - Cross korelasi dua buah sinyal audio yang sama.
% Rekam/download sebuah sinyal audio bertipe wav (setiap kelompok berbeda)! Edit/potong sinyal tersebut sehingga memiliki periode pengamatan sepanjang 0.1 detik! Simpan hasil sinyal yang telah diedit tersebut pada variabel x dan y! Jalankan program cross korelasi! Bagaimanakah bentuk keluaran yang dihasilkan? audio = shikabu2.wav
[x, fs] = audioread('shikabu2.wav');
x = x(1:fs*0.1);
y = x;

subplot(3, 1, 1);
plot(x);
title('Pure Sinewave');
grid;

subplot(3, 1, 2);
plot(y);
title('y(n), Pure Sinewave + Noise');
grid;

Rxy = xcorr(x, y);
subplot(3, 1, 3);
plot(Rxy);
title('Cross correlation Rxy');
grid;

% Percobaan 6 – Cross korelase dua buah sinyal audio yang berbeda.
% Ulangi percobaan 5! Rekam/download sebuah sinyal audio baru bertipe .wav! Edit/potong sinyal tersebut sehingga memiliki periode pengamatan sepanjang 0.1 detik! Simpan hasil sinyal yang telah diedit tersebut pada variabel y! (variabel x menggunakan sinyal audio pada percobaan 5). Jalankan program cross korelasi! Bagaimanakah bentuk keluaran yang dihasilkan sekarang? audio 1 = shikabu2.wav, audio 2 = cote2.wav
[x, fs] = audioread('shikabu2.wav');
x = x(1:fs*0.1);
[y, fs] = audioread('cote2.wav');
y = y(1:fs*0.1);

subplot(3, 1, 1);
plot(x);
title('Pure Sinewave');
grid;

subplot(3, 1, 2);
plot(y);
title('y(n), Pure Sinewave + Noise');
grid;

Rxy = xcorr(x, y);
subplot(3, 1, 3);
plot(Rxy);
title('Cross correlation Rxy');
grid;

% ffmpeg
% ffmpeg -i shikabu.mp3 -ac 1 -ar 16000 -ab 16k shikabu.wav
% detail:
% -i shikabu.mp3 = input file
% -ac 1 = mono
% -ar 16000 = audio rate 16000
% -ab 16k = audio bitrate 16k
% shikabu.wav = output file

% potong audio wav diatas menggunakan ffmpeg audio dijalankan dari detik ke 1 hingga 1.1 detik, sehingga hasilnya adalah 0.1 detik
% ffmpeg -i shikabu.wav -ss 1 -t 1.1 -ac 1 -ar 16000 -ab 16k shikabu2.wav
% ffmpeg -i cote.wav -ss 1 -t 1.1 -ac 1 -ar 16000 -ab 16k cote2.wav


% 1. Sepanjang pemahaman anda dari hasil praktikum, apakah yang terjadi sebenarnya pada saat sebuah sinyal dihitung dengan menggunakan fungsi auto korelasi? Jelaskan!
% 2. Apa pula yang terjadi sebenarnya pada saat dua buah sinyal dihitung dengan menggunakan fungsi cross korelasi? Jelaskan!
% 3. Berikan contoh aplikatif dari fungsi cross korelasi dan jelaskan cara kerjanya!