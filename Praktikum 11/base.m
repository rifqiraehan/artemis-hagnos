

%{

FIR (Finite Impulse Response) Filter
- Disebut FIR karena berangkat dari persamaan beda yang memiliki persamaan umum:
y(n) = b0*x(n) + b1*x(n-1) + b2*x(n-2) + ... + bM*x(n-M)
akan berubah menjadi FIR, jika L = 0, K != 0. Sehingga, aoY(n) = b0*x(n) + b1*x(n-1) + b2*x(n-2) + ... + bM*x(n-M)
Y(n) = 1/a0 * (b0*x(n) + b1*x(n-1) + b2*x(n-2) + ... + bM*x(n-M))
- Hanya memiliki koefisien b, tidak ada koeefisien a



IIR (Infinite Impulse Response) Filter
disebut infinite karena memiliki respon yang tak hingga.

Bagaimana menormalisasi frekuensi cut-off?
Normalisasi frekuensi cut-off dilakukan dengan cara membagi frekuensi cut-off dengan frekuensi sampling

%}

% Percobaan 1: Desain Low Pass Filter orde 16, frekuensi cut-off 2kHz, frekuanasi sampling 16kHz
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

% Percobaan 2: Desain Low Pass Filter orde 8, frekuensi cut-off 4kHz, frekuensi sampling 16kHz

% m = [1, 0.8, 0, 0];                 % vektor m
% f = [0, 0.25, 0.5, 1.0];            % vektor f

f = [0, 1, 2, 3, 4, 5, 6, 7, 8];            % vektor f
m = [1, 1, 1, 0.95, 0.707, 0.25, 0, 0, 0];  % vektor m
% normalisasi frekuensi cut-off
f = f / 8;                          % f = f / fs2
n = 8;                              % orde 8, 1/2 frekuensi sampling = 8kHz
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

% Percobaan 3: Desain High Pass Filter orde 16, frekuensi cut-off 6kHz, frekuensi sampling 16kHz, menggunakan normalisasi frekuensi cut-off
f = [0, 1, 2, 3, 4, 5, 6, 7, 8];            % vektor f
m = [0, 0, 0, 0.25, 0.707, 0.95, 1, 1, 1];  % vektor m

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

% Percobaan 4: Desain Band Pass Filter orde 16, frekuensi cut-off 3kHz hingga 4kHz, frekuensi sampling 16kHz, menggunakan normalisasi frekuensi cut-off
f = [0, 1, 2, 3, 4, 5, 6, 7, 8];            % vektor f
m = [0, 0, 0, 1, 1, 0, 0, 0, 0];           % vektor m

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

% Percobaan 5: Desain Band Stop Filter orde 16, frekuensi cut-off 3kHz hingga 4kHz, frekuensi sampling 16kHz, menggunakan normalisasi frekuensi cut-off

f = [0, 1, 2, 3, 4, 5, 6, 7, 8];            % vektor f
m = [1, 1, 1, 0, 0, 1, 1, 1, 1];           % vektor m

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