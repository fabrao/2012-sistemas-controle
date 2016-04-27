%%%%%%%%%%%%%%% 5.7 %%%%%%%%%%%%%%%%%

numg=[100 100];
deng=[1 2 100]; 
sysg = tf(numg,deng);

numc=[0.1 5];
denc=[1 0]; 
sysc = tf(numc,denc);
sys_o = series(sysg,sysc);
sys_cl = feedback(sys_o,[1])

t=[0:0.01:3];
step(sys_cl,t);
ylabel('Theta')