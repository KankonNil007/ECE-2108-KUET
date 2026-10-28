clc;
clear;
close all;

fs = 1000;
f = 2;

t = 0:1/fs:1;

x = sin(2*pi*f*t);

xmin  = min(x);
xmax  = max(x);
xmean = mean(x);
xvar  = var(x);
xstd  = std(x);
xrms  = rms(x);

fprintf('Minimum Value      : %.4f\n', xmin);
fprintf('Maximum Value      : %.4f\n', xmax);
fprintf('Mean               : %.4f\n', xmean);
fprintf('Variance           : %.4f\n', xvar);
fprintf('Standard Deviation : %.4f\n', xstd);
fprintf('RMS Value          : %.4f\n', xrms);