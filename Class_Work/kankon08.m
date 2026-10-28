clc;
clear;
cp=1*10^(-9);
L=0.22*10^(-9);
res=100;
A=[0 -1/cp;
 1/L -res/L];
B=[1/cp; 0];
C=[0 res];
D=0;
sys=ss(A,B,C,D)
figure(1)
step(sys)
figure(2)
bode(sys)
stb=isstable(sys);
if stb==1
 disp('Stable')
else
 disp('Not Stable')
end
S = ctrb(sys);
Co=det(S);
if Co==0
 disp('Not Controllable')
else
 disp('Controllable')
end
V = obsv(sys);
ob=det(V);
if ob==0
 disp('Not Observable')
else
 disp('Observable')
end
