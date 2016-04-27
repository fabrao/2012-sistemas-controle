clc
clear all

%%%%%%%%%%%%% 5.2 %%%%%%%%%%%%%%
 num = [0 0 1 10]; 
 den = [1 15 0 0]; 
 t = [0: 0.1: 50];   
 
 sys = tf (num ,den);  
 Gmf = feedback(sys, 1); 
 sys_mf = ss(Gmf);
 u = t;
 
 lsim(sys_mf, u, t);