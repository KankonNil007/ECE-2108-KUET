clc;
clear;
A=[0 1 0 0;
 0 0 1 0;
 0 0 0 1;
 -3 -6 -5 -4];
B=[0; 0; 0 ; 1];
C=[1 0 0 0];
D=0;
sys=ss(A,B,C,D,-1)
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