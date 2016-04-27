%%%%%%%%%%%%%%% 5.6 (a) %%%%%%%%%%%%%%%%%

numc=[2];
denc=[1];
sys_c = tf(numc,denc); 

nums=[-10];
dens=[1 10];
sys_s = tf(nums,dens);

numg=[-1 -5];
deng=[1 3.5 6 0];
sys_g = tf(numg,deng);

sysa = series(sys_c,sys_s);
sysb = series(sysa,sys_g);

sys = feedback(sysb,[1]);

f=0.5*pi/180;
t=[0:0.1:10];
u=f*t;

[y,x]=lsim(sys,u,t);
y(length(t),1)-u(1,length(t)))*180/pi
subplot(211)
plot(t,y*180/pi,t,u*180/pi,'--'), grid
xlabel('Time (sec)'),ylabel('theta')
title('Constant gain C(s) = 2: theta (solid) & input (dashed)') 



%%%%%%%%%%%%%%% 5.6 (b) %%%%%%%%%%%%%%%%%

numc=[2 1];
denc=[1 0];
sys_c = tf(numc,denc); 

[numa,dena]=series(numc,denc,nums,dens);
sysa = series(sys_c,sys_s);
sysb = series(sysa,sys_g);
sys = feedback(sysb,[1]);

[y,x]=lsim(sys,u,t);
(y(length(t),1)-u(1,length(t)))*180/pi
subplot(212), plot(t,y*180/pi,t,u*180/pi,'--'), grid
xlabel('Time (sec)'),ylabel('theta')
title('PI controller C(s) = 2 + 1/s: theta (solid) & input (dashed)')