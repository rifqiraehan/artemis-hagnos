
%{
Cruise Sistem
Sebuah sistem cruise / kendaraan memiliki konfigurasi sebagai berikut:

bv <---> m ---> u
           ---> V̇
           ---> v

1. Jika m adalah massa kendaraan, u adalah gaya mesin, bv adalah gaya balik dan v adalah kecepatan, maka carilah dan tentukan bentuk fungsi transfernya!
2. Jika m = 1000 kg dan b = 50 Ns/m, maka hitunglah fungsi transfer dari sistem tersebut!
3. Setelah fungsi transfer anda peroleh, maka gambarkan bentuk respon sistemnya!
4. Dari fungsi transfer tersebut, dapatkan nilai pole dan zero dari sistem tersebut!
%}

% Kode Matlab
clear all; clc;

m = 1000;
b = 50;
num = 1;
denum = [m b];
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

% before doing code, you neet to determine the transfer function of the system
% the transfer function of the system is
% H(s) = 1 / (ms + b)
% where m is the mass of the vehicle, b is the damping coefficient, and s is the Laplace variable
% applying the given values of m and b, we get
% H(s) = 1 / (1000s + 50)
% the transfer function of the system is H(s) = 1 / (1000s + 50)
% the system is stable because all poles have negative real parts
% can i find reference for the transfer function of that system? i can't find it
% i think the transfer function of the system is H(s) = 1 / (ms + b)
% m^s or ms?
% m * s
% there's no value for zero, why?
% because the numerator is 1, so there is no zero

Bila b adalah koefisien redaman, k adalah konstanta pegas, x adalah besarnya perpindahan massa benda dan F adalah gaya yang dihasilkan oleh sistem pegas, maka:
a. Hitunglah fungsi transfer dari sistem tersebut
b. Bila m = 1 kg, k = 1 N/m, b = 0.2 Ns/m dan F = 1 N, maka bagaimanakah respon
sistem tersebut terhadap masukan unit step? Gambarkan!
c. Apakah sistem pegas tersebut stabil? Hitung nilai pole dan zero nya!