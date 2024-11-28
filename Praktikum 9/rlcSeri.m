
%{
Rangkaian RLC seri
Sebuah rangkaian RLC seri memiliki konfigurasi sebagai berikut:
Vin ----
        |
        R
        ---- Vout
        |
        1/sC
        |
        sL
        |
        Gnd
1. Jika R = 10 Q, L = 1 mH dan C = 1 uF, maka hitunglah fungsi transfer dari sistem tersebut!
2. Setelah fungsi transfer anda peroleh, maka gambarkan bentuk respon sistemnya! Respon sistem dari sebuah fungsi transfer dapat dengan mudah diperoleh menggunakan Matlab sebagai berikut:
>> num= [a b c] → gantilah nilai-nilai a, b dan c tersebut dengan nilai-nilai yang anda dapatkan pada fungsi transfer bagian numerator atau pembilang.
>> denum = [d e f] → gantilah nilai-nilai d, e dan f tersebut dengan nilai-nilai yang anda dapatkan pada fungsi transfer bagian denumerator atau penyebut.
>> H = tf(num,denum) → mendapatkan fungsi transfer H
>> stepplot(H) → menggambarkan respon sistem ketika diberi fungsi step
Dari fungsi transfer tersebut, dapatkan nilai pole dan zero dari sistem tersebut! Apakah sistem tersebut stabil? Jelaskan!
Untuk memperoleh nilai-nilai pole dan zero dari sistem juga sangat mudah dilakukan menggunakan Matlab, yaitu sebagai berikut:
>> [z,p,k] = tf2zp(num,denum) → z adalah zero, p adalah pole dan k adalah gain.
%}

% Kode Matlab
R = 10;
L = 1e-3;
C = 1e-6;
num = [1/(R*C) 0];
denum = [L*C 1/(R*C) 1];
H = tf(num,denum);
stepplot(H);
[z,p,k] = tf2zp(num,denum);
% cetak nilai zero dan pole
z
p

% Hasil z dan p
>> z

% z =

%      0

% >> p

% p =

%    1.0e+14 *

%    -1.0000
%    -0.0000

% apakah stabil?
% Sistem tersebut stabil karena semua pole berada di sisi kiri dari bidang kompleks.
% Pole sistem tersebut adalah -1e14 dan -0.
% Sistem tersebut merupakan sistem orde dua.
% Sistem tersebut merupakan sistem yang underdamped.
% Sistem tersebut merupakan sistem yang stabil.
% Sistem tersebut merupakan sistem yang tidak osil

% filter apakah ini?
% Filter ini merupakan filter high pass.

% Bisakah pole digambarkan dalam bentuk diagram pole-zero?
% Tidak, karena sistem tersebut merupakan sistem orde dua, sehingga tidak dapat digambarkan dalam diagram pole-zero.

% bukankah a = L, b = R, c = C?
% Tidak, karena fungsi transfer dari sistem tersebut adalah 1/(sRC + 1/(sLC) + 1), sehingga a = 1/(R*C), b = 0, dan c = 1/(L*C).

% mengapa b = 0?
% Karena tidak ada s pada bagian pembilang fungsi transfer tersebut.
