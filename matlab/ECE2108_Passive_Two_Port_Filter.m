%% ECE - 2108: Design and MATLAB Simulation of a Passive Two-Port Filter
% Base MATLAB only. Save and run this script.
% Rs = 100 ohm; nominal RL = 10 kohm; Vs = 1 V.
% Design A: R = 1 kohm, C = 68 nF.
% Design B: R1 = R2 = 330 ohm, C1 = C2 = 68 nF.
% Requirements: |Vo/Vs| at 1 kHz >= 0.80; at 10 kHz <= 0.25.
%
% This script generates figures only; it does not create tables or CSV files.
% It distinguishes equation-based predictions from user-recorded Multisim values.
% Confirm the exact circuit topology and compare predictions with Multisim before
% submitting the report.

clear; clc; close all;

%% 1. Given specifications and selected values
Rs = 100; RL = 10e3; Vs = 1;
f1 = 1e3; f2 = 10e3;
f = logspace(2,5,1000); s = 1j*2*pi*f;
gainMin1 = 0.80; gainMax10 = 0.25;

% Design A: single-stage filter
RA = 1e3; CA = 68e-9;
% Design B: two-stage filter
R1B = 330; R2B = 330; C1B = 68e-9; C2B = 68e-9;

%% 2. Calculate transfer functions including Rs and RL
HA = singleStage(Rs,RA,CA,RL,s);
HB = doubleStage(Rs,R1B,C1B,R2B,C2B,RL,s);

HA1 = abs(singleStage(Rs,RA,CA,RL,1j*2*pi*f1));
HA10 = abs(singleStage(Rs,RA,CA,RL,1j*2*pi*f2));
HB1 = abs(doubleStage(Rs,R1B,C1B,R2B,C2B,RL,1j*2*pi*f1));
HB10 = abs(doubleStage(Rs,R1B,C1B,R2B,C2B,RL,1j*2*pi*f2));

fprintf('\nECE - 2108 Passive Two-Port Filter Project\n');
fprintf('Design A: G(1 kHz)=%.6f, G(10 kHz)=%.6f\n',HA1,HA10);
fprintf('Design B: G(1 kHz)=%.6f, G(10 kHz)=%.6f\n',HB1,HB10);
fprintf('Design A passes both nominal targets: %d\n',HA1>=gainMin1 && HA10<=gainMax10);
fprintf('Design B passes both nominal targets: %d\n',HB1>=gainMin1 && HB10<=gainMax10);

%% 3. Combined magnitude and phase response figure
% One figure window with magnitude above and phase below.
figure('Color','w','Name','Combined Magnitude and Phase Response');

subplot(2,1,1);
semilogx(f,abs(HA),'LineWidth',1.8); hold on;
semilogx(f,abs(HB),'LineWidth',1.8);
yline(gainMin1,'--','1 kHz gain minimum = 0.80');
yline(gainMax10,'--','10 kHz gain maximum = 0.25');
xline(f1,':','1 kHz'); xline(f2,':','10 kHz');
grid on; xlim([100 1e5]);
xlabel('Frequency (Hz)'); ylabel('|V_o/V_s|');
title('Magnitude Response, R_L = 10 k\Omega');
legend('Design A: single stage','Design B: two stages','Location','southwest');

subplot(2,1,2);
semilogx(f,angle(HA)*180/pi,'LineWidth',1.8); hold on;
semilogx(f,angle(HB)*180/pi,'LineWidth',1.8);
xline(f1,':','1 kHz'); xline(f2,':','10 kHz');
grid on; xlim([100 1e5]);
xlabel('Frequency (Hz)'); ylabel('Phase (degrees)');
title('Phase Response, R_L = 10 k\Omega');
legend('Design A: single stage','Design B: two stages','Location','southwest');

%% 8. Load variation: equation-based predictions and supplied Multisim values
RLvals = [5e3 10e3 20e3];
loadA1 = zeros(3,1); loadA10 = zeros(3,1);
loadB1 = zeros(3,1); loadB10 = zeros(3,1);
for k = 1:3
    loadA1(k) = abs(singleStage(Rs,RA,CA,RLvals(k),1j*2*pi*f1));
    loadA10(k) = abs(singleStage(Rs,RA,CA,RLvals(k),1j*2*pi*f2));
    loadB1(k) = abs(doubleStage(Rs,R1B,C1B,R2B,C2B,RLvals(k),1j*2*pi*f1));
    loadB10(k) = abs(doubleStage(Rs,R1B,C1B,R2B,C2B,RLvals(k),1j*2*pi*f2));
end
figure('Color','w','Name','Load Variation');
subplot(1,2,1);
plot(RLvals/1e3,loadA1,'o-','LineWidth',1.6); hold on;
plot(RLvals/1e3,loadB1,'s-','LineWidth',1.6); yline(gainMin1,'--');
grid on; xlabel('R_L (k\Omega)'); ylabel('Gain at 1 kHz');
title('Useful-Signal Gain vs Load'); legend('Single stage','Two stages','Limit','Location','best');
subplot(1,2,2);
plot(RLvals/1e3,loadA10,'o-','LineWidth',1.6); hold on;
plot(RLvals/1e3,loadB10,'s-','LineWidth',1.6); yline(gainMax10,'--');
grid on; xlabel('R_L (k\Omega)'); ylabel('Gain at 10 kHz');
title('Interference Gain vs Load'); legend('Single stage','Two stages','Limit','Location','best');

%% 9. ±5% sensitivity analysis, nominal load
% Each variation is applied to one component at a time.
variation = ["R -5%";"R +5%";"C -5%";"C +5%"];
RAvar = [0.95*RA;1.05*RA;RA;RA];
CAvar = [CA;CA;0.95*CA;1.05*CA];
R1var = [0.95*R1B;1.05*R1B;R1B;R1B];
C1var = [C1B;C1B;0.95*C1B;1.05*C1B];
SA1=zeros(4,1); SA10=zeros(4,1); SB1=zeros(4,1); SB10=zeros(4,1);
for k=1:4
    SA1(k)=abs(singleStage(Rs,RAvar(k),CAvar(k),RL,1j*2*pi*f1));
    SA10(k)=abs(singleStage(Rs,RAvar(k),CAvar(k),RL,1j*2*pi*f2));
    SB1(k)=abs(doubleStage(Rs,R1var(k),C1var(k),R2B,C2B,RL,1j*2*pi*f1));
    SB10(k)=abs(doubleStage(Rs,R1var(k),C1var(k),R2B,C2B,RL,1j*2*pi*f2));
end
figure('Color','w','Name','Sensitivity Analysis');
subplot(1,2,1); bar([SA1 SB1]); grid on;
set(gca,'XTickLabel',variation); ylabel('Gain at 1 kHz'); title('Sensitivity at 1 kHz');
legend('Single stage','Two stages','Location','best');
subplot(1,2,2); bar([SA10 SB10]); grid on;
set(gca,'XTickLabel',variation); ylabel('Gain at 10 kHz'); title('Sensitivity at 10 kHz');
legend('Single stage','Two stages','Location','best');

%% 10. Independent hand verification: Design A
handGain = @(freq) RL ./ sqrt((Rs+RA+RL).^2 + ...
    (2*pi*freq*CA*(Rs+RA)*RL).^2);
hand1 = handGain(f1); hand10 = handGain(f2);
multisim1 = 0.830; multisim10 = 0.207;
fprintf('Independent hand verification, Design A:\n');
fprintf('Gain at 1 kHz: %.6f (recorded Multisim: %.3f)\n',hand1,multisim1);
fprintf('Gain at 10 kHz: %.6f (recorded Multisim: %.3f)\n',hand10,multisim10);
fprintf('For Vs = %.2f V, calculated output amplitudes: %.6f V at 1 kHz and %.6f V at 10 kHz.\n', ...
    Vs,Vs*hand1,Vs*hand10);

%% 11. Required design revision
% Example revision: increase Design A capacitor by 5%, from 68 nF to 71.4 nF.
% This is a documented trial revision, not claimed to be globally optimal.
CAnew = 1.05*CA;
HArev = singleStage(Rs,RA,CAnew,RL,s);
rev1 = abs(singleStage(Rs,RA,CAnew,RL,1j*2*pi*f1));
rev10 = abs(singleStage(Rs,RA,CAnew,RL,1j*2*pi*f2));
figure('Color','w','Name','Design Revision');
semilogx(f,abs(HA),'LineWidth',1.8); hold on;
semilogx(f,abs(HArev),'LineWidth',1.8);
yline(gainMin1,'--','Minimum gain 0.80'); yline(gainMax10,'--','Maximum gain 0.25');
xline(f1,':','1 kHz'); xline(f2,':','10 kHz');
grid on; xlim([100 1e5]); xlabel('Frequency (Hz)'); ylabel('|V_o/V_s|');
title('Design Revision: C increased by 5%');
legend('Original C = 68 nF','Revised C = 71.4 nF','Location','southwest');

%% 12. ABCD parameters and Z parameters
% ABCD convention: [V1; I1] = [A B; C D]*[V2; I2].
% I1 enters port 1; I2 leaves port 2. Rs and RL are external to the two-port.
fprintf('\nABCD parameters, Design A:\n');
fprintf('A = 1 + s*R*C = 1 + s*(%.9g)\n',RA*CA);
fprintf('B = R = %.9g ohm\n',RA);
fprintf('C = s*C = s*(%.9g) S\n',CA);
fprintf('D = 1\n');

fprintf('\nABCD parameters, Design B:\n');
fprintf('A = 1 + s*(R1*C1 + R1*C2 + R2*C2) + s^2*R1*R2*C1*C2\n');
fprintf('  = 1 + s*(%.9g) + s^2*(%.9g)\n',R1B*C1B+R1B*C2B+R2B*C2B,R1B*R2B*C1B*C2B);
fprintf('B = R1 + R2 + s*R1*R2*C1 = %.9g + s*(%.9g) ohm\n',R1B+R2B,R1B*R2B*C1B);
fprintf('C = s*(C1+C2) + s^2*R2*C1*C2 = s*(%.9g) + s^2*(%.9g) S\n',C1B+C2B,R2B*C1B*C2B);
fprintf('D = 1 + s*R2*C1 = 1 + s*(%.9g)\n',R2B*C1B);

% Z parameters for Design A, with both port currents entering the network:
% Z11 = R + 1/(sC); Z12 = Z21 = Z22 = 1/(sC).
fprintf('\nZ parameters for Design A (both port currents entering):\n');
fprintf('Z11(s) = %.9g + 1/(s*%.9g) ohm\n',RA,CA);
fprintf('Z12(s) = Z21(s) = Z22(s) = 1/(s*%.9g) ohm\n',CA);

fprintf('Figures generated: magnitude/phase response, load variation, sensitivity analysis, and design revision.\n');

%% Local functions (MATLAB R2016b or newer)
function H = singleStage(Rs,R,C,RL,s)
    H = RL ./ (Rs + R + RL + s.*C.*(Rs+R).*RL);
end

function H = doubleStage(Rs,R1,C1,R2,C2,RL,s)
    % Exact nodal solution. Rs and R1 are in the source-to-node-1 path.
    % Node 1 is connected to C1 and R2; output is loaded by RL || C2.
    Gs = 1/(Rs+R1);
    G2 = 1/R2;
    Yout = 1/RL + s.*C2;
    denominator = (Gs+s.*C1+G2).*(G2+Yout) - G2^2;
    H = (Gs*G2)./denominator;
end
