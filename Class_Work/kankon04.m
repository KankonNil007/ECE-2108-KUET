clc; clear;
x1 = [0 1 2 3 0 0 0];
x2 = [0 0 1 1 1 0 0];
a = 2;
b = 3;
len = length(x1);
tx=0:1:len-1;
y1= power(x1,2);
y2= power(x2,2);
LHS = a*y1+b*y2;
x3 = a*x1 + b*x2;
y3= power(x3,2);
RHS=power(y3,2);
LHS=round(LHS,4);
RHS=round(RHS,4);
ty=0:(length(y1)-1);
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
stem(ty,LHS); grid % plot LHS
xlabel('Time');
ylabel('Amplitude');
title(' LHS');
subplot(2,2,4);
stem(ty,RHS); grid % plot RHS
xlabel('Time');
ylabel('Amplitude');
title(' RHS');
if(LHS == RHS)
 disp('System is linear.');
else
 disp('System is non-linear.');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%timeinvariantcheck%%%%%%%%%%%%%%%%%%%%%%
yshifted_output = shift(y1,2);

xshifted_input = shift(x1,2);
yshifted_output2= power(xshifted_input,2);
yshifted_output=round(yshifted_output,4);
yshifted_output2=round(yshifted_output2,4);
figure(2)
subplot(2,2,1);
stem(tx,x1); % plot input
title('Input sequence');
subplot(2,2,2);
stem(ty,y1); % plot output
title('Output sequence');
subplot(2,2,3);
stem(ty,yshifted_output); % plot only shifted output
title('Only Shifting the Output');
subplot(2,2,4);
stem(ty,yshifted_output2); % plot output after shifting input
title('Output for Shifted version of input');

if(yshifted_output==yshifted_output2)
 disp('System is Time Invariant.');
else
 disp('System is not Time Invariant.');
end