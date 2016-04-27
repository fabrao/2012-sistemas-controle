clc
clear all

%%%%%%%%%%%%% 3.5 (a) %%%%%%%%%%%%%%
%%% SISTEMA 1
    A1 = [0 1 0; 0 0 1; -4 -5 -8]
    B1 = [0: 0: 4]
    C1 = [1 0 0]
    D1 = 0
    sys1 = ss(A1 ,B1 ,C1 ,D1 );
    G1 = tf(sys1)

%%%%%%%%%%%%% 3.5 (b) %%%%%%%%%%%%%%
%%% SISTEMA 2
    A2 = [0.500  0.500  0.7071; -0.500  -0.500  0.7071;  -6.3640  -0.7071  -8.000]
    B2 = [0: 0: 4]
    C2 = [0.7071  -0.7071  0]
    D2 = 0
    sys2 = ss(A2 ,B2 ,C2 ,D2 );
    G2 = tf(sys2)
    
    
%%%%%%%%%%%%% 3.5 (c) %%%%%%%%%%%%%%
x0= [0 -1 1]
t= [0: 0.01: 10];
u= 0*t;

[a,b,c] = lsim(sys1, u ,t, x0);
[y,t,x]= lsim (sys2, u, t, x0 );


figure(1)
subplot(3,1,1)
plot(t, x(:,1),t, c(:,1))
xlabel('tempo')
ylabel('x1')

subplot (3,1,2)
plot (t, x(:,2), t, c(:,2))
xlabel('tempo')
ylabel('x2')


subplot(3,1,3)
plot(t, x(:,3), t, c(:,3))
xlabel('tempo')
ylabel('x3')