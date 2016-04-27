%%%%%%%%%%%%%%% 5.9 %%%%%%%%%%%%%%%%%

numg=[10];
deng=[1 20 75 0]; 

sysg = tf(numg,deng);
sys = feedback(sysg,1)

t=[0:0.1:100];
u=t;

lsim(sys,u,t);