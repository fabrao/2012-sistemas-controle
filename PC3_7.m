clc
clear all
%%%%%%%%%%%%%%% 3.7 %%%%%%%%%%%%%%%%%
A=[0 1;-2 -3]; 
B=[0;1]; 
C=[1 0]; 
D=[0]; 

sys = ss(A,B,C,D);
x0=[1;0];
t=[0:0.1:10]; 
u=0*t; 
[y,t,x]=lsim(sys,u,t,x0);
plot(t,x(:,1),t,x(:,2),'--')

xlabel('tempo')
ylabel('Resposta de Estado') 
grid