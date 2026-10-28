clc;
clear;
close all;

%% RLC Circuit Parameters
R = 20;             % Resistance (Ohm)
L = 10e-3;          % Inductance (H)
C = 10e-6;          % Capacitance (F)

%% State-Space Matrices
A = [0      -1/C;
     1/L   -R/L];

B = [1/C;
     0];

Cmat = [0 R];

D = 0;

%% Create Continuous State-Space Model
sys = ss(A, B, Cmat, D);

disp('======================================');
disp(' CONTINUOUS RLC STATE-SPACE MODEL');
disp('======================================');

sys

%% Stability Check
if isstable(sys)
    disp('System Status: STABLE');
else
    disp('System Status: NOT STABLE');
end

%% Controllability Check
Co = ctrb(A, B);

if rank(Co) == size(A,1)
    disp('Controllability: CONTROLLABLE');
else
    disp('Controllability: NOT CONTROLLABLE');
end

%% Observability Check
Ob = obsv(A, Cmat);

if rank(Ob) == size(A,1)
    disp('Observability: OBSERVABLE');
else
    disp('Observability: NOT OBSERVABLE');
end

%% Step Response
[y,t] = step(sys);

figure('Color','w');
plot(t, y, 'LineWidth', 2);
grid on;
box on;

title('Step Response of Continuous RLC Circuit', ...
      'FontSize', 14, 'FontWeight', 'bold');

xlabel('Time (s)', 'FontSize', 12);
ylabel('Output Voltage (V)', 'FontSize', 12);

set(gca, 'FontSize', 11, 'LineWidth', 1.1);

%% Bode Response
[mag, phase, w] = bode(sys);

mag = squeeze(mag);
phase = squeeze(phase);

figure('Color','w');

tiledlayout(2,1,'TileSpacing','compact');

% Magnitude
nexttile;
semilogx(w, 20*log10(mag), 'LineWidth', 2);
grid on;
box on;

title('Magnitude Response', ...
      'FontSize', 13, 'FontWeight', 'bold');

ylabel('Magnitude (dB)', 'FontSize', 11);
set(gca, 'FontSize', 10, 'LineWidth', 1.1);

% Phase
nexttile;
semilogx(w, phase, 'LineWidth', 2);
grid on;
box on;

title('Phase Response', ...
      'FontSize', 13, 'FontWeight', 'bold');

xlabel('Frequency (rad/s)', 'FontSize', 11);
ylabel('Phase (deg)', 'FontSize', 11);

set(gca, 'FontSize', 10, 'LineWidth', 1.1);

sgtitle('Bode Response of Continuous RLC Circuit', ...
        'FontSize', 14, 'FontWeight', 'bold');