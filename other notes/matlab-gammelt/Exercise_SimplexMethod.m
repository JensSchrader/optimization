syms x1 x2
fun(x1,x2) = 2*x1 + 3*x2;
c1 = x1 == 30;
c2 = x2 == 20;
c3 = x1 + 2*x2 == 54;
[A,B] = equationsToMatrix([c1,c2,c3],[x1,x2])
tableau = [A eye([size(B,1) size(B,1)]) B]
tableau = rref(tableau)


syms x1 x2 x3
fun = 25*x1 + 33*x2 + 18*x3 == 0;
fun = -1*fun
c1 = 2*x1 + 3*x2 + 4*x3 == 60;
c2 = 3*x1 + x2 + 5*x3 == 46;
c3 = x1 + 2*x2 + x3 == 50;
[A,B] = equationsToMatrix([c1,c2,c3,fun],[x1,x2,x3])
tableau = [A eye([size(B,1) size(B,1)]) B]
disp('pick the lowest coefficients (bottom row), that column will be reduced')
disp('We do so till there is no negative values left.')
tableau = pivot(tableau,1,2)
disp('x1 = x3 = x4 = 0; x2 = 20; x5 = 26; x6 = 10; M = 600')
disp('the equation for M is now')
disp('M = 660 + 3*x1 - 26*x3 - 11*x4')
disp('next step will be to reduce col1 row 2')
disp('because that has the lowest value when 26/2.3333')
disp('no 10/(-1/3) is not lower.. even if it is negative..')
tableau = pivot(tableau,2,1)



syms x1 x2
fun(x1,x2) = 2*x1 + 3*x2 == 0;
fun = -1*fun
c1 = x1 == 30;
c2 = x2 == 20;
c3 = x1 + 2*x2 == 54;
[A,B] = equationsToMatrix([c1,c2,c3,fun],[x1,x2])
tableau = [A eye([size(B,1) size(B,1)]) B]
tableau = pivot(tableau,2,2)
tableau = pivot(tableau,3,1)
tableau = pivot(tableau,1,4)





disp('Exercise 9.3.1')
fun(x1,x2) = 21*x1 + 25*x2 + 15*x3 == 0;
fun = -1*fun
c1 = 2*x1 + 7*x2 + 10*x3 == 20;
c2 = 3*x1 + 4*x2 + 19*x3 == 25;
[A,B] = equationsToMatrix([c1,c2,fun],[x1,x2,x3])
tableau = [A eye([size(B,1) size(B,1)]) B]

disp('Exercise 9.3.2')
fun(x1,x2) = 22*x1 + 14*x2 == 0;
fun = -1*fun
c1 = 3*x1 + 5*x2 == 30;
c2 = 2*x1 + 7*x2 == 24;
c3 = 6*x1 + 1*x2 == 42;
[A,B] = equationsToMatrix([c1,c2,c3,fun],[x1,x2,x3])
tableau = [A eye([size(B,1) size(B,1)]) B]

disp('Exercise 9.3.3')
fun(x1,x2) = 4*x1 + 10*x2 == 0;
fun = -1*fun
c1 = 5*x1 + 1*x2 == 20;
c2 = 3*x1 + 2*x2 == 30;
[A,B] = equationsToMatrix([c1,c2,fun],[x1,x2])
tableau = [A eye([size(B,1) size(B,1)]) B]
disp('A) We will bring x2 into the solution')
disp('because it has the lowest coeffiecient.')
disp('B) the next tableau is:')
tableau = pivot(tableau,2,2)
disp('C) The feasible solution is:')
disp('x1 = 5; x2 = 15; M = 150')
disp('D) This is optimal since there is non-negative values in the bottom row.')

disp('Exercise 9.3.4')
tableau = [-1 1 2 0 0 4; 1 0 5 1 0 6; -4 -10 0 0 1 0]
disp('A) We will bring x2 into the solution')
disp('because it has the lowest coeffiecient.')
disp('B) the next tableau is:')
tableau = pivot(tableau,2,1)
disp('C) The feasible solution is:')
disp('x1 = 10; x2 = 6; M = 24')
disp('D) This is not optimal since there is negative values in the bottom row.')


disp('Exercise 9.3.5')
tableau = [2 3 1 0 0 20;2 1 0 1 0 16;-6 -5 0 0 1 0]
disp('A) We will bring x2 into the solution')
disp('because it has the lowest coeffiecient.')
disp('B) the next tableau is:')
tableau = pivot(tableau,2,1)
tableau = pivot(tableau,1,2)
disp('C) The feasible solution is:')
disp('x1 = 2; x2 = 7; M = 52')
disp('D) This is optimal since there is non-negative values in the bottom row.')


disp('Exercise 9.3.6')
tableau = [5 8 1 0 0 80; 12 6 0 1 0 30; 2 -3 0 0 1 0]
disp('A) We will bring x2 into the solution')
disp('because it has the lowest coeffiecient.')
disp('B) the next tableau is:')
tableau = pivot(tableau,2,2)
tableau = pivot(tableau,1,1)
disp('C) The feasible solution is:')
disp('x1 = -3.6364; x2 = 12.2727; M = 44.0909')
disp('D) This is not optimal since there is negative values in the bottom row.')



