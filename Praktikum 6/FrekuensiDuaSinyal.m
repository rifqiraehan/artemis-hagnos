Fs = 100;
t = (1:400) / Fs;

f1 = 1;
s1 = (2/pi) * sin(2 * pi * f1 * t);

f2 = 3;
s2 = (2/3/pi) * sin(2 * pi * f2 * t);

s = s1 + s2;

subplot(2, 1, 1)
plot(t, s)
xlabel('time')
S = fft(s, 512);
w = (0:255)/256 * (Fs/2);
subplot(2, 1, 2)
plot(w, abs(S(1:256)))
xlabel('frequency')