clc;
clear;
close all;

%==================================================
% PART B: STABILITY TEST
%==================================================

% Given transfer function:
%
% F(z) = (2z^3 + 3z^2 - 3.2z - 1.6)
%        --------------------------------
%        (2z^3 + 2.5z^2 + 0.25z - 0.25)

num = [2 3 -3.2 -1.6];
den = [2 2.5 0.25 -0.25];

% Find zeros, poles and gain
[z_zeros,poles,gain] = tf2zpk(num,den);

disp('----------------------------------');
disp('STABILITY TEST');
disp('----------------------------------');

disp('Zeros:');
disp(z_zeros);

disp('Poles:');
disp(poles);

disp('Magnitude of poles:');
disp(abs(poles));

% Plot pole-zero diagram
figure;

zplane(num,den);
grid on;
title('Pole-Zero Plot');

% Stability condition
if all(abs(poles) < 1)
    disp('The System Is Stable.');
else
    disp('The System Is Unstable.');
end