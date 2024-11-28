
%{
Sebuah sistem peredam dengan per memiliki konfigurasi sebagai berikut:
|
|   b
|      ___->x
|--|]--|  |
|^v^v^v|m |-> f
|      ___
|   k
|
Bila b adalah koefisien redaman, k adalah konstanta pegas, x adalah besarnya perpindahan massa benda dan F adalah gaya yang dihasilkan oleh sistem pegas, maka:
a. Hitunglah fungsi transfer dari sistem tersebut
b. Bila m = 1 kg, k = 1 N/m, b = 0.2 Ns/m dan F = 1 N, maka bagaimanakah respon
sistem tersebut terhadap masukan unit step? Gambarkan!
c. Apakah sistem pegas tersebut stabil? Hitung nilai pole dan zero nya!
%}

% Kode Matlab
clear all; clc;

m = 1;
k = 1;
b = 0.2;
F = 1;
num = [1];
denum = [m b k];
H = tf(num, denum);
stepplot(H);
[z, p, k] = tf2zp(num, denum);

disp('Zeros:');
disp(z);
disp('Poles:');
disp(p);
disp('Gain:');
disp(k);

if all(real(p) < 0)
    disp('The system is stable (all poles have negative real parts).');
else
    disp('The system is unstable (some poles have non-negative real parts).');
end

% the transfer function of the system is
% H(s) = 1 / (ms^2 + bs + k)
