% Load the input music signal
[x, fs] = audioread('COTE30.wav');

% Design filters
n = 16; % Order of the filters

% Low Pass Filter (LPF)
f_lpf = [0, 0.00227, 0.003, 0.01, 0.5, 1];
m_lpf = [1, 1, 0.8, 0.1, 0, 0];
b_lpf = fir2(n, f_lpf, m_lpf);

% Band Pass Filters (BPF)
f_bpf1 = [0, 0.00363, 0.00545, 1];
m_bpf1 = [0, 0.8, 0.8, 0];
b_bpf1 = fir2(n, f_bpf1, m_bpf1);

f_bpf2 = [0, 0.00727, 0.0109, 1];
m_bpf2 = [0, 0.8, 0.8, 0];
b_bpf2 = fir2(n, f_bpf2, m_bpf2);

f_bpf3 = [0, 0.0145, 0.0218, 1];
m_bpf3 = [0, 0.8, 0.8, 0];
b_bpf3 = fir2(n, f_bpf3, m_bpf3);

f_bpf4 = [0, 0.029, 0.0436, 1];
m_bpf4 = [0, 0.8, 0.8, 0];
b_bpf4 = fir2(n, f_bpf4, m_bpf4);

f_bpf5 = [0, 0.058, 0.0872, 1];
m_bpf5 = [0, 0.8, 0.8, 0];
b_bpf5 = fir2(n, f_bpf5, m_bpf5);

f_bpf6 = [0, 0.116, 0.1744, 1];
m_bpf6 = [0, 0.8, 0.8, 0];
b_bpf6 = fir2(n, f_bpf6, m_bpf6);

f_bpf7 = [0, 0.232, 0.3488, 1];
m_bpf7 = [0, 0.8, 0.8, 0];
b_bpf7 = fir2(n, f_bpf7, m_bpf7);

f_bpf8 = [0, 0.464, 0.6976, 1];
m_bpf8 = [0, 0.8, 0.8, 0];
b_bpf8 = fir2(n, f_bpf8, m_bpf8);

% High Pass Filter (HPF)
f_hpf = [0, 1, 2, 3, 4, 5, 6, 7, 8];
m_hpf = [0, 0, 0, 0.25, 0.707, 0.95, 1, 1, 1];
f_hpf = f_hpf / 8;
b_hpf = fir2(n, f_hpf, m_hpf);

% Initialize amplitude control values
A = 1; B = 1; C = 1; D = 1; E = 1; F = 1; G = 1; H = 1; I = 1; J = 1;

% Apply filters to the input signal
y1 = filter(b_lpf, 1, x) * A;
y2 = filter(b_bpf1, 1, x) * B;
y3 = filter(b_bpf2, 1, x) * C;
y4 = filter(b_bpf3, 1, x) * D;
y5 = filter(b_bpf4, 1, x) * E;
y6 = filter(b_bpf5, 1, x) * F;
y7 = filter(b_bpf6, 1, x) * G;
y8 = filter(b_bpf7, 1, x) * H;
y9 = filter(b_bpf8, 1, x) * I;
y10 = filter(b_hpf, 1, x) * J;

% Combine the filtered signals
y = y1 + y2 + y3 + y4 + y5 + y6 + y7 + y8 + y9 + y10;

% Plot the input and output signals
figure;
subplot(2, 1, 1);
plot(x);
title('Input Signal');
xlabel('Sample');
ylabel('Amplitude');

subplot(2, 1, 2);
plot(y);
title('Output Signal');
xlabel('Sample');
ylabel('Amplitude');

% Save the output signal
% audiowrite('output_lagu.wav', y, fs);
sound(y, fs);