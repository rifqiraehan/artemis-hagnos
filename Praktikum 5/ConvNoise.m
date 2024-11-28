clear all;

n=-7.9:.5:8.1;
y=sin(4*pi*n/8)./(4*pi*n/8);
figure(1);
plot(y,'linewidth',2);

t=0.1:.1:8;
x=sin(2*pi*t/4);
figure(2);
plot(x,'linewidth',2);

t=0.1:.1:8;
x_n=sin(2*pi*t/4)+0.5*randn*sin(2*pi*10*t/4)+0.2*randn*sin(2*pi*12*t/4);
figure(3);
plot(x_n,'linewidth',2);

xy=conv(x_n,y);
figure(4);
plot(xy,'linewidth',2);



Rentang Lebih Panjang: Sinyal raise cosine akan menunjukkan lebih banyak informasi di area yang jauh dari pusat sinyal. Ini akan menghasilkan lebih banyak osilasi kecil di luar puncak utama pada grafik, dan hasil konvolusi mungkin menunjukkan lebih banyak detail dari sinyal bernoise.

Rentang Lebih Pendek: Sinyal raise cosine akan terlihat lebih "sempit" dengan lebih sedikit informasi di luar puncak utama, membuat hasil konvolusi lebih fokus pada sinyal pusat dan mengurangi efek dari bagian tepi sinyal.


[Y, Fs] = audioread('shikabu.wav');  % Baca file audio
Fs = 16000;  % Sampling rate
time = (1:length(Y)) / Fs;  % Buat sumbu waktu untuk sinyal asli

% 1. Plot sinyal asli
figure(1);
plot(time, Y);
sound(Y, Fs);  % Putar suara asli
pause(length(Y)/Fs + 2);  % Tunggu hingga suara selesai dimainkan

% 2. Tambahkan noise dan plot sinyal bernoise
noise = randn(length(Y), 1);
Y_noise = Y + 0.08 * noise;
figure(2);
plot(time, Y_noise);
sound(Y_noise, Fs);  % Putar suara bernoise
pause(length(Y)/Fs + 2);  % Tunggu hingga suara selesai dimainkan

% 3. Lakukan konvolusi dan plot hasilnya
satu = ones(4, 1);  % Buat filter konvolusi
Y_c = conv(satu, Y_noise);  % Lakukan konvolusi
time_conv = (1:length(Y_c)) / Fs;  % Buat sumbu waktu untuk sinyal hasil konvolusi

figure(3);
plot(time_conv, Y_c);
sound(Y_c, Fs);  % Putar suara hasil konvolusi
pause(length(Y_c)/Fs + 2);  % Tunggu hingga suara selesai dimainkan
