clc;
clear;
close all;

A = [1 0 0;
     2 2 0;
     3 3 3];

b = [2;
     2;
     2];

% Solve Ax = b
x = inv(A)*b;

disp('Coefficient Matrix (A):')
disp(A)

disp('Constant Vector (b):')
disp(b)

disp('Solution Vector (x):')
disp(x)