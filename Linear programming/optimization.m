close all

A=[1,1,1; 1, 2, 3];
b=[2; 0];
lb=zeros(3,1);
ub=ones(3,1);

plotregion(A,b,lb,ub,[0.6,0.5,0.1]);

axis equal