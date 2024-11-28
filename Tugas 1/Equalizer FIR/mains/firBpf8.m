clear all; clc;

n = 16;
fs2 = 22;
f = [0, 0.465, 0.698, 1];
m = [0, 0.8, 0.8, 0];
b = fir2(n, f, m);

fid = fopen('fir.txt', 'w');
fprintf(fid, strcat('Koefisien filter FIR orde-'), int2str(n), ':\n');
fprintf(fid, strcat('Generated on-', datestr(now), '\n\n'));
for i = 1:n+1
    fprintf(fid, '%1.6f \n', b(i));
end
fclose(fid);

[H, w] = freqz(b, 1, 128);
plot(w/pi * fs2, abs(H));

xlabel('f (kHz)');
ylabel('|H|');
grid;
title(strcat('Respon Frekuensi Filter FIR Orde-', int2str(n)));