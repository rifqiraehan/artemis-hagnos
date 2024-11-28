% Percobaan 6 – Cross korelase dua buah sinyal audio yang berbeda.
% Ulangi percobaan 5! Rekam/download sebuah sinyal audio baru bertipe .wav! Edit/potong sinyal tersebut sehingga memiliki periode pengamatan sepanjang 0.1 detik! Simpan hasil sinyal yang telah diedit tersebut pada variabel y! (variabel x menggunakan sinyal audio pada percobaan 5). Jalankan program cross korelasi! Bagaimanakah bentuk keluaran yang dihasilkan sekarang? audio 1 = shikabu2.wav, audio 2 = cote2.wav
[x, fs] = audioread('shikabu2.wav');
x = x(1:fs*0.1);
[y, fs] = audioread('cote2.wav');
y = y(1:fs*0.1);

subplot(3, 1, 1);
plot(x);
title('sinyal audio 1');
grid;

subplot(3, 1, 2);
plot(y);
title('sinyal audio 2');
grid;

Rxy = xcorr(x, y);
subplot(3, 1, 3);
plot(Rxy);
title('Cross correlation Rxy');
grid;