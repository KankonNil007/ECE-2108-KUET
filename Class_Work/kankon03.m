clc; clear;
x1 = [0 1 2 3 0 0 0];
x2 = [0 0 1 1 1 0 0];
a = 2;
b = 3;
len = length(x1);
tx=0:1:len-1;
th=0:1:4;
h =3* exp(-3*th);
[y1 ty1]=convint(x1,tx,h,th);
[y2 ty2]=convint(x2,tx,h,th);
LHS = a*y1+b*y2;
x3 = a*x1 + b*x2;
[y3 ty3]=convint(x3,tx,h,th);
RHS=y3;
LHS=round(LHS,4);
RHS=round(RHS,4);
subplot(2,2,1);
stem(tx,x1); % plot input-1
xlabel('Time');
ylabel('Amplitude');
title('First input sequence');
subplot(2,2,2);
stem(tx,x2); % plot input-2
xlabel('Time');
ylabel('Amplitude');
title('Second input sequence');
subplot(2,2,3);
stem(ty1,LHS); grid % plot LHS
xlabel('Time');
ylabel('Amplitude');
title(' LHS');
subplot(2,2,4);
stem(ty3,RHS); grid % plot RHS
xlabel('Time');
ylabel('Amplitude');
title(' RHS');
if(LHS == RHS)
 disp('System is linear.');
else
 disp('System is non-linear.');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%time-invariantcheck%%%%%%%%%%%%%%%%%%%
yshifted_output = shift(y1,2);
xshifted_input = shift(x1,2);

[yshifted_output2,ty4] = convint(xshifted_input,tx,h,th);
yshifted_output =round(yshifted_output,4);
yshifted_output2=round(yshifted_output2,4);
figure(2)
subplot(2,2,1);
stem(tx,x1); % plot input
title('Input sequence');
subplot(2,2,2);
stem(ty1,y1); % plot output
title('Output sequence');
subplot(2,2,3);
stem(ty1,yshifted_output); % plot only shifted output
title('Only Shifting the Output');
subplot(2,2,4);
stem(ty4,yshifted_output2); % plot output after shifting input
title('Output for Shifted version of input');
if(yshifted_output==yshifted_output2)
 disp('System is Time Invariant.');
else
 disp('System is not Time Invariant.');
end