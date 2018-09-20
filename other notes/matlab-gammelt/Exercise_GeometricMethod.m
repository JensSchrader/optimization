clear
clc
disp('Infeasible, is when the objective matrix is subject to something not possible.')
disp('This is coused when the objective function is subject to e.g. x <= 3 and x >= 4.')
disp(' ')
disp('Unbound if an unknown like x may be arbitrarily large')
disp('This is coused when the objective function is subject to e.g. x >= 0 and x >= -3.')
disp(' ')

fun = @(x) 2*x(1)+5*x(2)
c1 = @(x) x(1)+2*x(2)<=16
c2 = @(x) 5*x(1)+3*x(2)<=45
s1 = @(x) x(1)>=0;
s2 = @(x) x(2)>=0;
mini(fun,2,{c1, c2},{s1,s2})


syms x1 x2 x3
fun = 2*x1+5*x2
c1 = x1+2*x2==16
c2 = 5*x1+3*x2==45
[A,B] = equationsToMatrix([c1,c2],[x1,x2])
linsolve(A,B)

syms x1 x2 x3
fun(x1,x2,x3) = 2*x1 + 3*x2 + 4*x3;
c1 = x1 + x2 + x3 == 50;
c2 = x1 +2*x2 + 4*x3 == 80;
c3 = x3 == 0;
[A,B] = equationsToMatrix([c1,c2,c3],[x1,x2,x3]);
X = linsolve(A,B)
c3 = x2 == 0;
[A,B] = equationsToMatrix([c1,c2,c3],[x1,x2,x3]);
X = linsolve(A,B)
c3 = x1 == 0;;
[A,B] = equationsToMatrix([c1,c2,c3],[x1,x2,x3]);
X = linsolve(A,B)

%maximizeSubjectTo();


