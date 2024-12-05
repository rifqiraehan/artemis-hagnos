clear all;

% Load the input music signal
[x, fs] = audioread('COTE30.wav');

n = 16; % Order of the filters

% Low Pass Filter (LPF)
f_lpf = [0, 0.00227, 0.6, 0.9, 1];
m_lpf = [1, 0.8, 0, 0, 0];
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
f_hpf = [0, 0.4, 0.704, 1];
m_hpf = [0, 0, 0.8, 1];
b_hpf = fir2(n, f_hpf, m_hpf);

% Initialize amplitude control values
A = 1; B = 1; C = 1; D = 1; E = 1; F = 1; G = 1; H = 1; I = 1; J = 1;

% Apply filters to the input signal
y1 = conv((A * b_lpf), x);
y2 = conv((B * b_bpf1), x);
y3 = conv((C * b_bpf2), x);
y4 = conv((D * b_bpf3), x);
y5 = conv((E * b_bpf4), x);
y6 = conv((F * b_bpf5), x);
y7 = conv((G * b_bpf6), x);
y8 = conv((H * b_bpf7), x);
y9 = conv((I * b_bpf8), x);
y10 = conv((J * b_hpf), x);

y = conv((A * b_lpf + B * b_bpf1 + C * b_bpf2 + D * b_bpf3 + E * b_bpf4 +  F * b_bpf5 +  G * b_bpf6 +  H * b_bpf7 + I * b_bpf8 + J * b_hpf), x);

y_signals = {y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y};

figure_titles = {
    'Sinyal Audio Filter LPF', 'Sinyal Audio Filter BPF1', 'Sinyal Audio Filter BPF2', 'Sinyal Audio Filter BPF3', 'Sinyal Audio Filter BPF4', 'Sinyal Audio Filter BPF5', 'Sinyal Audio Filter BPF6', 'Sinyal Audio Filter BPF7', 'Sinyal Audio Filter BPF8', 'Sinyal Audio Filter HPF', 'Sinyal Audio Filter Penuh'
};

% Plot the input and output signals
for i = 1:length(y_signals)
    figure(i);
    subplot(2,1,1);
    plot(x);
    title('Sinyal Audio Asli');
    xlabel('Indeks Sampling');
    ylabel('Amplitudo');
    subplot(2,1,2);
    plot(y_signals{i});
    title(figure_titles{i});
    xlabel('Indeks Sampling');
    ylabel('Amplitudo');
end

% Save the output signal
% audiowrite('output_lagu.wav', y, fs);
% sound(y, fs);