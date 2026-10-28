clc;
clear;
close all;

syms t s n z a w

%==================================================
% LAPLACE TRANSFORM
%==================================================

% Given continuous-time signal
f = t*sin(a*t);

% Laplace transform
F = laplace(f,t,s);

disp('----------------------------------');
disp('LAPLACE TRANSFORM');
disp('----------------------------------');

disp('Given signal:');
pretty(f);

disp('Laplace Transform:');
pretty(simplify(F));

% Inverse Laplace transform
f_inv = ilaplace(F,s,t);

disp('Inverse Laplace Transform:');
pretty(simplify(f_inv));


%==================================================
% Z-TRANSFORM
%==================================================

% Given discrete-time signal
x = exp(-a*n)*sin(w*n);

% Z-transform
X = ztrans(x,n,z);

disp('----------------------------------');
disp('Z-TRANSFORM');
disp('----------------------------------');

disp('Given signal:');
pretty(x);

disp('Z-Transform:');
pretty(simplify(X));

% Inverse Z-transform
x_inv = iztrans(X,z,n);

disp('Inverse Z-Transform:');
pretty(simplify(x_inv));