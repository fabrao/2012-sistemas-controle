%%%%%%%%%%% 3.1(a) %%%%%%%%%%%%%%
num1 = [0  0  1]
den1 = [0  1  10]

G1 = tf(num1, den1) %transfer function

sys1= ss(G1) %state space



%%%%%%%%%%% 3.1(b) %%%%%%%%%%%%%%
num2 = [1  5  3]
den2 = [1  8  5]

G2 = tf(num2, den2) %transfer function

sys2= ss(G2) %state space


%%%%%%%%%%% 3.1(c) %%%%%%%%%%%%%%
num3 = [0  0  1  1]
den3 = [1  3  3  1]

G3 = tf(num3, den3) %transfer function

sys3= ss(G3) %state space
