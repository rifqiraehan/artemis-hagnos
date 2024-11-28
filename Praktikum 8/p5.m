% Percobaan 5 - Cross korelasi dua buah sinyal audio yang sama.
% Rekam/download sebuah sinyal audio bertipe wav (setiap kelompok berbeda)! Edit/potong sinyal tersebut sehingga memiliki periode pengamatan sepanjang 0.1 detik! Simpan hasil sinyal yang telah diedit tersebut pada variabel x dan y! Jalankan program cross korelasi! Bagaimanakah bentuk keluaran yang dihasilkan? audio = shikabu2.wav
[x, fs] = audioread('shikabu2.wav');
x = x(1:fs*0.1);
y = x;

subplot(3, 1, 1);
plot(x);
title('Sinyal x');
grid;

subplot(3, 1, 2);
plot(y);
title('Sinyal y');
grid;

Rxy = xcorr(x, y);
subplot(3, 1, 3);
plot(Rxy);
title('Cross correlation Rxy');
grid;