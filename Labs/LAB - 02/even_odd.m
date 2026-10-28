clc;
clear;
close all;

fs = 1;
t = linspace(0,10,1000);

x = sin(2*pi*fs*t) + cos(2*pi*fs*t);

components(t,x);