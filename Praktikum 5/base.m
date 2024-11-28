% #1 Konvolusi Dua Sinyal Discrete Unit Step
clear all

L = input('Panjang gelombang (>=10): ');
P = input('Lebar pulsa (<L): ');

for n=1:L
    if n<=P
        x(n) = 1;
    else
        x(n) = 0;
    end
end

t = 1:L;

subplot(3, 1, 1);
stem(t, x);

% Part 2
for n=1:L
    if n<=P
        v(n) = 1;
    else
        v(n) = 0;
    end
end

t = 1:L;

subplot(3, 1, 2);
stem(t, v);

subplot(3, 1, 3);
stem(conv(x, v));

% #2 Konvolusi Dua Sinyal Sinus
L = input('Banyaknya titik sampel (>=20): ');
f1 = input('Besarnya frekuensi gel 1 adalah Hz: ');
f2 = input('Besarnya frekuensi gel 2 adalah Hz: ');
teta1 = input('Besarnya fase gel 1 (dalam radiant): ');
teta2 = input('Besarnya fase gel 2 (dalam radiant): ');
A1 = input('Besarnya amplitudo gel 1: ');
A2 = input('Besarnya amplitudo gel 2: ');

% Sinus Pertama
t = 1:L;
t = 2 * t / L;
y1 = A1 * sin(2 * pi * f1 * t + teta1 * pi);

subplot(3, 1, 1);
stem(y1);

% Sinus Kedua
t = 1:L;
t = 2 * t / L;
y2 = A2 * sin(2 * pi * f2 * t + teta2 * pi);

subplot(3, 1, 2);
stem(y2);

subplot(3, 1, 3);
stem(conv(y1, y2));

% #3 Konvolusi Sinyal Bernoise dengan Raise Cosine
n = -7.9:.5:8.1;
y = sin(4 * pi * n / 8) ./ (4 * pi * n / 8);

figure(1);
plot(y, 'linewidth', 2);

t = 0.1:.1:8;
x = sin(2 * pi * t / 4);

figure(2);
plot(x, 'linewidth', 2);

t = 0.1:.1:8;
x_n = sin(2 * pi * t / 4) + 0.5 * randn * sin(2 * pi * 10 * t / 4) + 0.2 * randn * sin(2 * pi * 12 * t / 4);

figure(3);
plot(x_n, 'linewidth', 2);

xy = conv(x_n, y);
figure(4);
plot(xy, 'linewidth', 2);

% #4 Konvolusi Pada Sinyal Audio
[Y, Fs] = audioread('shikabu.wav');
Fs = 16000;
sound(Y, Fs);

noise = randn(length(Y), 1);
Y_noise = Y + 0.08 * noise;
sound(Y_noise, Fs);

satu = ones(4, 1);

Y_c = conv(satu, Y_noise);
sound(Y_c, Fs);