Fs = 100;
t = (1:200) / Fs;

f1 = 1;
s1 = (2/pi) * sin(2 * pi * f1 * t);

f2 = 3;
s2 = (2/3/pi) * sin(2 * pi * f2 * t);

f3 = 5;
s3 = (2/5/pi) * sin(2 * pi * f3 * t);

f4 = 7;
s4 = (2/7/pi) * sin(2 * pi * f4 * t);

f5 = 9;
s5 = (2/9/pi) * sin(2 * pi * f5 * t);

f6 = 11;
s6 = (2/11/pi) * sin(2 * pi * f6 * t);

s = s1 + s2 + s3 + s4 + s5 + s6;

subplot(2, 1, 1)
plot(t, s)
xlabel('time')
S = fft(s, 512)
w = (0:255)/256 * (Fs/2);
subplot(2, 1, 2)
plot(w, abs(S(1:256)))
xlabel('frequency')