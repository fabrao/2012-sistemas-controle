clc
clear all

%%%%%%%%%%%%% 3.6(a) %%%%%%%%%%%%%%
num1 = [0  0  3 ]
den1 = [0  1  3]

G1 = tf(num1, den1) %transfer function

sys_cont= ss(G1) %state space


%%%%%%%%%%%%% 3.6(b) %%%%%%%%%%%%%%
num2 = [0  0  1]
den2 = [1  2  5]

G2 = tf(num2, den2) %transfer function

sys_proc = ss(G2) %state space


%%%%%%%%%%%%% 3.6(C) %%%%%%%%%%%%%%

sys_serie = series(sys_cont, sys_proc)

sys_feedback = feedback(sys_serie, 1)