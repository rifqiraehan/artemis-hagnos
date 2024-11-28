%{Bagaimana cara menampilkan dua fungsi diman masing-masing fungsi disajikan dalam grafik berbeda.
% Misalnya anda gunakan contoh kasus di atas, fungsi pertama anda tampilkan pada figure(1),
% sementara fungsi kedua anda tampilkan pada figure(2).}%

x = 0:0.01:2*pi;
y1 = sin(x);
y2 = sin(x + pi/4);

figure(1);
plot(x, y1);

figure(2);
plot(x, y2);