clc;
clear;
close all;

% Input signals
x1 = [0 1 2 3 0 0 0];
x2 = [0 0 1 1 1 0 0];

% Constants
a = 2;
b = 3;

n = 0:length(x1)-1;

%--------------------------------------------------
% SYSTEM: y(n) = x^2(n)
%--------------------------------------------------

y1 = x1.^2;
y2 = x2.^2;

%--------------------------------------------------
% LINEARITY TEST
%--------------------------------------------------

% LHS = a*y1 + b*y2
LHS = a*y1 + b*y2;

% RHS = H[a*x1 + b*x2]
x3 = a*x1 + b*x2;
RHS = x3.^2;

LHS = round(LHS,4);
RHS = round(RHS,4);

figure(1);

subplot(2,2,1);
stem(n,x1,'filled');
grid on;
xlabel('n');
ylabel('Amplitude');
title('First Input x_1(n)');

subplot(2,2,2);
stem(n,x2,'filled');
grid on;
xlabel('n');
ylabel('Amplitude');
title('Second Input x_2(n)');

subplot(2,2,3);
stem(n,LHS,'filled');
grid on;
xlabel('n');
ylabel('Amplitude');
title('LHS');

subplot(2,2,4);
stem(n,RHS,'filled');
grid on;
xlabel('n');
ylabel('Amplitude');
title('RHS');

if isequal(LHS,RHS)
    disp('System is Linear.');
else
    disp('System is Nonlinear.');
end

%--------------------------------------------------
% TIME-INVARIANCE TEST
%--------------------------------------------------

k = 2;

% Shift input by k samples
x_shifted = [zeros(1,k) x1(1:end-k)];

% Output for shifted input
y_shifted_input = x_shifted.^2;

% Shift original output
y_shifted_output = [zeros(1,k) y1(1:end-k)];

y_shifted_input = round(y_shifted_input,4);
y_shifted_output = round(y_shifted_output,4);

figure(2);

subplot(2,2,1);
stem(n,x1,'filled');
grid on;
xlabel('n');
ylabel('Amplitude');
title('Original Input');

subplot(2,2,2);
stem(n,y1,'filled');
grid on;
xlabel('n');
ylabel('Amplitude');
title('Original Output');

subplot(2,2,3);
stem(n,y_shifted_output,'filled');
grid on;
xlabel('n');
ylabel('Amplitude');
title('Shifted Output');

subplot(2,2,4);
stem(n,y_shifted_input,'filled');
grid on;
xlabel('n');
ylabel('Amplitude');
title('Output for Shifted Input');

if isequal(y_shifted_input,y_shifted_output)
    disp('System is Time Invariant.');
else
    disp('System is Not Time Invariant.');
end