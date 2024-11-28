clear all; clc;

f = [0, 0.00227, 0.003, 0.01, 0.5, 1]; % Frekuensi ter-normalisasi
m = [1, 1, 0.8, 0.1, 0, 0];
n = 16;                              % orde 16, 1/2 frekuensi sampling = 8kHz
fs2 = 22;                             % hitung koefisien filter
b = fir2(n, f, m);

fid = fopen('fir.txt', 'w');         % buka file fir.txt
fprintf(fid, strcat('Koefisien filter FIR orde-'), int2str(n), ':\n');
fprintf(fid, strcat('Generated on-', datestr(now), '\n\n'));
for i = 1:n+1                        % simpan dalam file
    fprintf(fid, '%1.6f \n', b(i));
end
fclose(fid);                         % tutup file

[H, w] = freqz(b, 1, 128);           % respon frekuensi
plot(w/pi * fs2, abs(H));            % plot respon frekuensi

xlabel('f (kHz)');
ylabel('|H|');
grid;
title(strcat('Respon Frekuensi Filter FIR Orde-', int2str(n)));