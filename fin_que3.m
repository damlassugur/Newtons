clear all;
close all;
clc;

 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 v0 = [3;4];
 alpha = 0.05;
 epsilon = 2;
 [fun,grad,hess]=barrier(v0,epsilon);
 v1 = v0 - alpha*grad
 [fun,grad,hess]=barrier(v1,epsilon);
 v2 = v1 - alpha*grad
 [fun,grad,hess]=barrier(v2,epsilon);
 v3 = v2 - alpha*grad 
 [fun,grad,hess]=barrier(v3,epsilon);
 v4 = v3 - alpha*grad 
 [fun,grad,hess]=barrier(v4,epsilon);
 v5 = v4 - alpha*grad  
 [fun,grad,hess]=barrier(v5,epsilon);
 v6 = v5 - alpha*grad 
 [fun,grad,hess]=barrier(v6,epsilon);
 v7 = v6 - alpha*grad  
 [fun,grad,hess]=barrier(v7,epsilon);
 v8 = v7 - alpha*grad
 [fun,grad,hess]=barrier(v8,epsilon);
 v9 = v8 - alpha*grad 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 vpath_gr = [v0.';v1.';v2.';v3.';v4.';v5.';v6.';v7.';v8.';v9.'];
 
 
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Newton
 v0 = [3;4];
 epsilon_nw = 2.5*epsilon;
 [fun,grad,hess]=barrier(v0,epsilon_nw);
 v1 = v0 - hess\grad
 [fun,grad,hess]=barrier(v1,epsilon_nw);
 v2 = v1 - hess\grad
 [fun,grad,hess]=barrier(v2,epsilon_nw);
 v3 = v2 - hess\grad 
 [fun,grad,hess]=barrier(v3,epsilon_nw);
 v4 = v3 - hess\grad  
 [fun,grad,hess]=barrier(v4,epsilon_nw);
 v5 = v4 - hess\grad  
 [fun,grad,hess]=barrier(v5,epsilon_nw);
 v6 = v5 - hess\grad 
 [fun,grad,hess]=barrier(v6,epsilon_nw);
 v7 = v6 - hess\grad  
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 vpath_n = [v0.';v1.';v2.';v3.';v4.';v5.';v6.';v7.'];
 
 figure;
 plot(vpath_gr(:,1),vpath_gr(:,2),'r-',vpath_n(:,1),vpath_n(:,2),'k-');