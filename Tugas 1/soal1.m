
%{

Desainlah sebuah equalizer digital 10 band yang terdiri dari 1 buah Low Pass Filter, 1 buah
High Pass Filter dan 8 buah Band Pass Filter. Semua filter-filter tersebut didesain dengan
menggunakan tipe FIR. Spesifikasi filter-filter yang digunakan disimpan pada file .json di bawah ini:

[
    {
        "No" : "1",
        "Jenis filter" : "LPF",
        "Frekuensi cut-off (Hz)" : "50",
        "Frekuensi sampling (Hz)" : "44.000",
        "Orde (N)" : "16"
    },
    {
        "No" : "2",
        "Jenis filter" : "BPF 1",
        "Frekuensi cut-off (Hz)" : "100 ± 20",
        "Frekuensi sampling (Hz)" : "44.000",
        "Orde (N)" : "16"
    },
    {
        "No" : "3",
        "Jenis filter" : "BPF 2",
        "Frekuensi cut-off (Hz)" : "200 ± 40",
        "Frekuensi sampling (Hz)" : "44.000",
        "Orde (N)" : "16"
    },
    {
        "No" : "4",
        "Jenis filter" : "BPF 3",
        "Frekuensi cut-off (Hz)" : "400 ± 80",
        "Frekuensi sampling (Hz)" : "44.000",
        "Orde (N)" : "16"
    },
    {
        "No" : "5",
        "Jenis filter" : "BPF 4",
        "Frekuensi cut-off (Hz)" : "800 ± 160",
        "Frekuensi sampling (Hz)" : "44.000",
        "Orde (N)" : "16"
    },
    {
        "No" : "6",
        "Jenis filter" : "BPF 5",
        "Frekuensi cut-off (Hz)" : "1.600 ± 320",
        "Frekuensi sampling (Hz)" : "44.000",
        "Orde (N)" : "16"
    },
    {
        "No" : "7",
        "Jenis filter" : "BPF 6",
        "Frekuensi cut-off (Hz)" : "3.200 ± 640",
        "Frekuensi sampling (Hz)" : "44.000",
        "Orde (N)" : "16"
    },
    {
        "No" : "8",
        "Jenis filter" : "BPF 7",
        "Frekuensi cut-off (Hz)" : "6.400 ± 1.280",
        "Frekuensi sampling (Hz)" : "44.000",
        "Orde (N)" : "16"
    },
    {
        "No" : "9",
        "Jenis filter" : "BPF 8",
        "Frekuensi cut-off (Hz)" : "12.800 ± 2.560",
        "Frekuensi sampling (Hz)" : "44.000",
        "Orde (N)" : "16"
    },
    {
        "No" : "10",
        "Jenis filter" : "HPF",
        "Frekuensi cut-off (Hz)" : "15.500",
        "Frekuensi sampling (Hz)" : "44.000",
        "Orde (N)" : "16"
    }
]

Catatan: Dari tabel diatas, sebuah Band Pass Filter memiliki 2 frekuensi Cut Off, misal 100
± 20 berarti fcutoff1 = 80 Hz dan fcutoff2 = 120 Hz.

Dari spesifikasi pada tabel diatas, tentukan:
a. Desain dari vektor F (frekuensi) dan M (magnitude) dari setiap jenis filter !
b. Implementasi vektor-vektor tersebut ke dalam program Matlab. Tuliskan masingmasing program Matlab yang anda gunakan untuk setiap jenis filter ! (10 program)
c. Dari program Matlab anda, tunjukkan / gambarkan respon frekuensi yang anda
dapatkan dari setiap filter yang telah anda desain ! (10 gambar respon frekuensi)
d. Dari program Matlab anda, tunjukkan hasil koefisien filter digital yang telah didapatkan
dari setiap filter ! (10 set koefisien filter digital)


---------------------------

Dari equalizer digital 10 band tersebut, gunakan sebagai kontrol sound system pada
musik/lagu yang anda sukai !
Adapun langkah-langkah persiapan untuk mengimplementasikan equalizer tersebut adalah
sebagai berikut:
1. Persiapan untuk musik/lagu masukan
a. Carilah musik/lagu kesukaan anda !
b. Dengan menggunakan tool/program wavesurfer, potonglah musik/lagu tersebut
menjadi hanya 0,5 menit atau 30 detik saja !
c. Simpan kembali hasil pemotongan tersebut dengan nama test_lagu.wav

2. Persiapan untuk menggunakan equalizer digital 10 band
a. Sebuah sistem audio dengan 10 band equalizer memiliki model sebagai berikut:

Dari model tersebut, output y dapat dihitung sebagai berikut:

y = (A.LPF + B.BPF1 + C.BPF2 + D.BPF3 + E.BPF4 + F.BPF5 + G.BPF6 + H.BPF7 + I.BPF8 + J.HPF).x

Dimana:
x adalah sinyal musik/lagu masukan
y adalah sinyal keluaran terfilter
A, B, C, D, E, F, G, H, I, dan J adalah nilai antara 0 sampai 1 yang
menyatakan kontrol amplitudo dari setiap filter

b. Dengan menggunakan model diatas (a), implementasikanlah sistem anda !
c. Tunjukkan hasil / keluaran setiap filter ! (10 pasang gambar sinyal masukan x dan
keluaran y1, y2, y3, dst)
d. Tunjukkan hasil / keluaran total y ! (1 pasang gambar sinyal masukan x dan sinyal
keluaran y)
e. Untuk kesimpulan subyektif, silakan anda play hasil keluaran sinyalnya ! Apakah yang bisa anda tarik kesimpulan jika nilai A, B, C, D, dst anda ubah-ubah ? Jelaskan! Visualisasikan dengan gambar pasangan sinyal masukan x dan keluaran y untuk setiap perubahan nilai amplitudo yang anda lakukan!



%}

