%%%%%%%%%%%%%%% 5.8 %%%%%%%%%%%%%%%%%

numg=[10];
deng=[1 10];
sysg = tf(numg,deng);

numh=[0.5];
denh=[10 0.5];
sysh= tf(numh,denh);

sys = feedback(sysg,sysh)
step(sys);