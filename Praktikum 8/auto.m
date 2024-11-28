% Auto Korelasi, Frekuensi = 1Hz, Frekuensi Sampling = 200Hz
N = 1024;   % Number of samples
f1 = 1;     % Frequency of the sinewave
fs = 200;   % Sampling frequency
n = 0:N-1;  % Sampling index frequency
x = sin(2*pi*f1*n/fs);  % Generate the signal, x(n)
t = [1:N] * (1/fs);     % Prepare the time axis

subplot(2, 1, 1);       % Prepare the figure
plot(t, x);             % Plot x(n)
title('Sinewave of frequency 1000Hz [Fs = 8000Hz]');
xlabel('Time, [s]');
ylabel('Amplitude');
grid;

Rxx = xcorr(x);         % Estimate its autocorrelation
subplot(2, 1, 2);       % Prepare the figure
plot(Rxx);              % Plot the autocorrelation
grid;

title('Autocorrelation function of the sinewave');
xlabel('lags');
ylabel('Autocorrelation');