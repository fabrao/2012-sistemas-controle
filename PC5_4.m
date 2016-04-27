%%%%%%%%%%%%%%% 5.4 %%%%%%%%%%%%%%%%%

numc=[21];
denc=[1 0]; 
sysc = tf(numc,denc);
numg=[1];
deng=[1 2]; 

sysg = tf(numg,deng);
sys_o = series(sysc,sysg);
sys_cl = feedback(sys_o,[1])

step(sys_cl)