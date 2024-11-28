clear all;clc

N = 4;
zp = 16;
x = ones(1, N);
y = zeros(1, zp);
z = [x, y]
n = 0:length(z)-1;
figure(1)
subplot(3,1,1)
stem(0:N-1, x);
title('Sekuen Unit Step')
subplot(3,1,2)
stem(0:zp-1, y);
title('Zero Padding (just zeroes)')
subplot(3,1,3)
stem(n, z);
title('Sekuen Unit Step + Zero Padding')

xdft= fft(x)
u = fft(z)
figure(2)
subplot(2,1,1);
plot(abs(xdft), '-o')
title('DFT of x without zero padding')
subplot(2,1,2);
plot(abs(u), '-o')
title('DFT of x with zero padding')
