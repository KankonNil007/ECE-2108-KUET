clc;
clear all;
syms t s a w % creates symbolic variables
f = (1- exp(t))/t % from Table 3.1
F = laplace(f) % computes the Laplace transform
simplify(F) % simplify the transformed equation
pretty(ans) % prints symbolic output as typeset mathematics.
