clear all;

% Load dan mainkan suara 'train'
load train;
whos;
sound(y, Fs);
plot(y);
pause(length(y)/Fs); % Jeda hingga suara selesai diputar

% Load dan mainkan suara 'handel'
load handel;
whos;
sound(y, Fs);
plot(y);
pause(length(y)/Fs); % Jeda hingga suara selesai diputar

% Load dan mainkan suara 'gong'
load gong;
whos;
sound(y, Fs);
plot(y);
pause(length(y)/Fs); % Jeda hingga suara selesai diputar

% Load dan mainkan suara 'chirp'
load chirp;
whos;
sound(y, Fs);
plot(y);
pause(length(y)/Fs); % Jeda hingga suara selesai diputar
