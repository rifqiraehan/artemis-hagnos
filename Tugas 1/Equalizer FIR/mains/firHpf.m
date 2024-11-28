clear all; clc;

f = [0, 0.4, 0.704, 1];
m = [0, 0, 0.8, 1];
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