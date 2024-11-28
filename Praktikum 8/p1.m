% and then call the function as follows:
N = 1024;
f1 = 1;
fs = 200;
n = 0:N-1;
x = sin(2*pi*f1*n/fs);
t = [1:N] * (1/fs);

subplot(2, 1, 1);
plot(t, x);
title('Sinewave of frequency 1000Hz [fs = 8000Hz]');
xlabel('Time, [s]');
ylabel('Amplitude');
grid;

Rxx = autom(x);
subplot(2, 1, 2);
plot(Rxx);
grid;

title('Autocorrelation function of the sinewave');
xlabel('lags');
ylabel('Autocorrelation');