% Define the coefficients for the numerator and denominator
clear all; clc;

num = [0.001 0 10^6];    % (0.001 * s^2 + 10^6)
denum = [0.001 10 10^6]; % (0.001 * s^2 + 10 * s + 10^6)

H = tf(num, denum);

stepplot(H);
title('Step Response of the Series RLC Circuit');

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