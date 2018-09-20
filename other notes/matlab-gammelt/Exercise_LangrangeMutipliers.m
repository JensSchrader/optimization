%Nonlinear constrained optimization
%chapter 20 in [CZ,4e]
%20.2[CZ4] | 19.1[CZ3], 20.6[CZ4]

%20.2[CZ4] | 19.1[CZ3]
disp('Find local extremizers for the following optimization problems:')
disp('a.')
syms x1 x2 x3
minimize = x1^2 + 2*x1*x2 + 3*x2^2 + 4*x1 + 5*x2 + 6*x3
objective =@(x) x(1)^2 + 2*x(1)*x(2) + 3*x(2)^2 + 4*x(1) + 5*x(2) + 6*x(3);
% split the minimization manually  |
%          x1^2 + 2*x1*x2 + 3*x2^2 |+4*x1 + 5*x2 + 6*x3
c1 = x1 + 2*x2 == 3
c2 = 4*x1 + 5*x3 == 6
[A,B] = equationsToMatrix([c1,c2],[x1,x2,x3])
[AA,BB] = equationsToMatrix([gradient(minimize)],[x1,x2,x3])
Matrix = [AA A' BB;A zeros(size(A,1)) B]
X = linsolve(Matrix(:,1:size(Matrix,2)-1),Matrix(:,size(Matrix,2)))
disp('unique solution to the matrix above is:')
x_star = X(1:size(AA))
lambda_star = X(size(AA)+1:size(X))
disp('we apply SOSC to compute L(x_star,lambda_star)')
lagrange  = AA
syms y
[2,2;2,6] + hessian([-27/5*(3- 16/5 + 2*-1/10); -6/5*(6-4*16/5 + 5*-34/25)])
tangenPlane = A*y==0
linsolve(A==[0],[y;y])



disp('b.')
clear
syms x1 x2
maximize = 4*x1 + x2^2
c1 = x1^2 + x2^2 == 9