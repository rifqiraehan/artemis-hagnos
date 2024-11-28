clear all; clc;

m = [0, 0, 0, 0.25, 0.707, 0.95, 1, 1, 1];  % vektor m
f = [0, 1, 2, 3, 4, 5, 6, 7, 8];            % vektor f

% normalisasi frekuensi cut-off
f = f / 8;                          % f = f / fs2
n = 16;                             % orde 16, 1/2 frekuensi sampling = 8kHz
fs2 = 8;                            % hitung koefisien filter
% b = firpm(n, f, m); % firpm = Parks-McClellan optimal FIR filter design
b = fir2(n, f, m);

fid = fopen('fir.txt', 'w');        % buka file fir.txt
fprintf(fid, strcat('Koefisien filter FIR orde-'), int2str(n), ':\n');
fprintf(fid, strcat('Generated on-', datestr(now), '\n\n'));
for i = 1:n+1                       % simpan dalam file
    fprintf(fid, '%1.6f \n', b(i));
end
fclose(fid);                        % tutup file

[H, w] = freqz(b, 1, 128);          % respon frekuensi
plot(w/pi * fs2, abs(H));           % plot respon frekuensi


m = [1, 1, 1, 1, 1, 0, 0, 1, 1];
f = [0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1];

