clear all; clc;

m = [1, 0.8, 0, 0, 0, 0];            % vektor m
f = [0, 0.25, 0.4, 0.6, 0.7, 1.0];   % vektor f
n = 16;                              % orde 16, 1/2 frekuensi sampling = 8kHz
fs2 = 8;                             % hitung koefisien filter
% b = firpm(n, f, m); % firpm = Parks-McClellan optimal FIR filter design
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

clear all; clc;

% Spesifikasi baru: frekuensi cut-off 4 kHz, orde 8
m = [1, 0.8, 0, 0];  % Vektor m disesuaikan
f = [0, 0.5, 0.6, 1.0];  % Vektor f disesuaikan
n = 8;              % Orde filter

fs2 = 8;  % Frekuensi sampling tetap 16 kHz

b = fir2(n, f, m);

% ... (sisanya sama seperti kode awal)