clear all
T = 128;
zpf = 2;
n = 0:1/T:(T-1)/T;
fi=5
xw=[((1/64)*sin(2*pi*n/64)+(1/3)*sin(2*pi*15*n/64)), zeros(1,(zpf-1)*T)];
nn=length(xw);
k=0:nn-1;

subplot(2,1,1);
plot(zpf*k/nn,xw);
axis([0 zpf -1.1 1.1])
xlabel('domain waktu (detik)')

X = fft(xw);
spec = abs(X);
f_X=length(X)
f=0:f_X-1;

subplot(2,1,2);
plot(f/2,spec);
axis([0 T/2 0 100])
xlabel('domain frekuensi')
grid

