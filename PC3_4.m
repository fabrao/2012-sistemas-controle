clc
clear all

%%%%%%%%%%%%% 3.4 (a) %%%%%%%%%%%%%%
A = [0 1 0; 0 0 1; -3 -2 -5]
B = [0: 0: 1]
C = [1 0 0]
D = 0

sys = ss(A ,B ,C ,D );

G = tf(sys )

%%%%%%%%%%%%% 3.4 (b) %%%%%%%%%%%%%%
x0= [0 -1 1]
t= [0: 0.01: 10];
u= 0*t;
[y,t,x]= lsim (sys, u, t, x0);

figure(1)
subplot(3,1,1)
plot(t, x(:,1))
xlabel('tempo')
ylabel('x1')

subplot (3,1,2)
plot (t, x(:,2))
xlabel('tempo')
ylabel('x1')


subplot(3,1,3)
plot(t, x(:,3))
xlabel('tempo')
ylabel('x1')