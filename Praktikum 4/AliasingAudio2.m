[Y, Fs] = audioread('COTE_OST_cut');
Fs_values = [16000, 8000, 11025,  22050, 44100];

for Fs = Fs_values
    sound(Y, Fs);
    disp(Fs);
    pause(1);
end

% cut the audio of wav to 10 seconds first in fmpeg
% ffmpeg -t 10 -i COTE_OST.wav COTE_OST_cut.wav