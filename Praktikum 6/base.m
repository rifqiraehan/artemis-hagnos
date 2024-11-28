% Fenomena Gibb
t = -3:6/1000:3;
N = input('Jumlah sinyal');
c0 = 0.5;
w0 = pi;
xN = c0 * ones(1, length(t));
for n = 1:2:N
    theta = ((-1)^((n-1) / 2) - 1) * pi / 2;
    xN = xN + 2/n/pi * cos(n * w0 * t + theta);
end

plot(t, xN);
xlabel('waktu')
ylabel('x(t)')

% Pengamatan Frekuensi Pada Sinyal Tunggal
Fs = 100;
t = (1:100) / Fs;
f = 5;
s = sin(2 * pi * f * t);
subplot(2, 1, 1)
plot(t, s)
xlabel('time')

S = fft(s, 512);
w = (0:255) / 256 * (Fs/2);
subplot(2, 1, 2)
plot(w, abs(S(1:256)))
xlabel('frequency')

% Pengamatan Frekuensi Pada Kombinasi 2 Sinyal
Fs = 100;
t = (1:400) / Fs;

f1 = 1;
s1 = (2/pi) * sin(2 * pi * f1 * t);

f2 = 3;
s2 = (2/3/pi) * sin(2 * pi * f2 * t);

s = s1 + s2;

subplot(2, 1, 1)
plot(t, s)
xlabel('time')
S = fft(s, 512);
w = (0:255)/256 * (Fs/2);
subplot(2, 1, 2)
plot(w, abs(S(1:256)))
xlabel('frequency')

% Pengamatan Frekuensi Pada Kombinasi 4 Sinyal
Fs = 100;
t = (1:400) / Fs;

f1 = 1;
s1 = (2/pi) * sin(2 * pi * f1 * t);

f2 = 3;
s2 = (2/3/pi) * sin(2 * pi * f2 * t);

f3 = 5;
s2 = (2/5/pi) * sin(2 * pi * f3 * t);

f4 = 7;
s2 = (2/7/pi) * sin(2 * pi * f4 * t);

s = s1 + s2 + s3 + s4;

subplot(2, 1, 1)
plot(t, s)
xlabel('time')
S = fft(s, 512)
w = (0:255)/256 * (Fs/2);
subplot(2, 1, 2)
plot(w, abs(S(1:256)))
xlabel('frequency')


% Pengamatan Frekuensi Pada Kombinasi 6 Sinyal
Fs = 100;
t = (1:200) / Fs;

f1 = 1;
s1 = (2/pi) * sin(2 * pi * f1 * t);

f2 = 3;
s2 = (2/3/pi) * sin(2 * pi * f2 * t);

f3 = 5;
s3 = (2/5/pi) * sin(2 * pi * f3 * t);

f4 = 7;
s4 = (2/7/pi) * sin(2 * pi * f4 * t);

f5 = 9;
s5 = (2/9/pi) * sin(2 * pi * f5 * t);

f6 = 11;
s6 = (2/11/pi) * sin(2 * pi * f6 * t);

s = s1 + s2 + s3 + s4 + s5 + s6;

subplot(2, 1, 1)
plot(t, s)
xlabel('time')
S = fft(s, 512)
w = (0:255)/256 * (Fs/2);
subplot(2, 1, 2)
plot(w, abs(S(1:256)))
xlabel('frequency')

% Pengamatan Frekuensi Pada Sinyal Audio
clear all; clc

[y, Fs] = audioread('shikabu.wav');
Fs = 16000;
sound(y, Fs);

figure(1)
plot(y)

figure(2)
Y = fft(y)
plot((abs(Y(1:3400))))