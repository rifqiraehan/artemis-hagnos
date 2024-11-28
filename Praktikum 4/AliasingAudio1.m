Fs_values = [16000, 10000, 8000, 2000, 1000, 900, 800, 700, 600, 500];

for Fs = Fs_values
    t = 0:1/Fs:0.25;

    c = sin(2 * pi * 261.63 * t);
    d = sin(2 * pi * 293.66 * t);
    e = sin(2 * pi * 329.63 * t);
    f = sin(2 * pi * 349.23 * t);
    g = sin(2 * pi * 392.00 * t);
    a = sin(2 * pi * 440.00 * t);
    b = sin(2 * pi * 493.88 * t);
    c1 = sin(2 * pi * 523.25 * t);
    nol = zeros(1, length(t));

    nada1 = [c, e, c, e, f, g, g, nol, b, c1, b, c1, b, g, nol, nol];
    nada2 = [c, e, c, e, f, g, g, nol, b, c1, b, c1, b, g, nol];
    nada3 = [c, nol, e, nol, g, nol, f, f, g, f, e, c, f, e, c, nol];
    nada4 = [c, nol, e, nol, g, nol, f, f, g, f, e, c, f, e, c];
    lagu = [nada1, nada2, nada3, nada4];


    sound(lagu,Fs);
    disp(Fs);
    pause(1);
end

audiowrite('gundul.wav', lagu);



Fs_values = [16000, 10000, 8000, 2000, 1000, 900, 800, 700, 600, 500];

for Fs = Fs_values
    t = 0:1/Fs:0.25;

    c = sin(2 * pi * 261.63 * t);
    d = sin(2 * pi * 293.66 * t);
    e = sin(2 * pi * 329.63 * t);
    f = sin(2 * pi * 349.23 * t);
    g = sin(2 * pi * 392.00 * t);
    a = sin(2 * pi * 440.00 * t);
    b = sin(2 * pi * 493.88 * t);
    c1 = sin(2 * pi * 523.25 * t);
    nol = zeros(1, length(t));

    nada1 = [c, e, c, e, f, g, g, nol, b, c1, b, c1, b, g, nol, nol];
    nada2 = [c, e, c, e, f, g, g, nol, b, c1, b, c1, b, g, nol];
    nada3 = [c, nol, e, nol, g, nol, f, f, g, f, e, c, f, e, c, nol];
    nada4 = [c, nol, e, nol, g, nol, f, f, g, f, e, c, f, e, c];
    lagu = [nada1, nada2, nada3, nada4];

    sound(lagu, Fs);
    disp(Fs);
    pause(length(lagu)/Fs + 1);
end