clear
clc

%Exercise 9.1
%Read the text for the exercise to understand them
%1
disp('Exercise 1:')
A = [-10 10;25 -25]

%2
disp('Exercise 2:')
A = [2 -3 4; -2 4 -5;4 -5 6]

%3
disp('Exercise 3:')
A = [0 5 -5; -5 0 5; 5 -5 0]

%4
disp('Exercise 4:')
A = [4 -12; 6 -15; -11 16]

%Find all saddle point for the matrix games 5-8
%5
disp('Exercise 5:')
A = [4 3; 1 -1]
MatrixGame(A);
%6
disp('Exercise6:')
A = [2 1 3; 4 -2 1]
MatrixGame(A);
%7
disp('Exercise 7:')
A = [5 3 4 3;-2 1 -5 2;4 3  7 3]
MatrixGame(A);
%8
disp('Exercise 8:')
A = [-2 4 1 -1;3 5 2 2; 1 -3 0 2]
MatrixGame(A);

%9
disp('Exercise 9:')
disp('Let M be the matrix game having payoff matrix, find E(x,y), v(x), v(y) with the given x and y')
M = [1 2 -2;0 1 4; 3 -1 1]
disp('Exercise 9a:')
x = [1/3; 1/2; 1/6]
y = [1/4; 1/2; 1/4]
MatrixGameEXY(M,x,y)

disp('Exercise 9b:')
x = [1/4; 1/2; 1/4]
y = [1/2; 1/4; 1/4]
MatrixGameEXY(M,x,y)


disp('Exercise 10:')
disp('Let M be the matrix game having payoff matrix, find E(x,y), v(x), v(y) with the given x and y')
M = [2 0 1 -1; -1 1 -2 0;1 -2 2 1]
disp('Exercise 10a:')
x = [1/3; 0; 2/3]
y = [1/4; 1/2; 0; 1/4]
MatrixGameEXY(M,x,y)

disp('Exercise 10b:')
x = [1/2; 1/4; 1/4]
y = [0; 1/4; 1/2; 1/4]
MatrixGameEXY(M,x,y)

disp('find the optimal row and column strategies and the value of the game for exercise 11-18')
disp('Exercise 11')
A = [3 -2;0 1]
MatrixGame(A);
disp('Exercise 12')
A = [2 -2; -3 6]
MatrixGame(A);
disp('Exercise 13')
A = [3 5; 4 1]
MatrixGame(A);
disp('Exercise 14')
A = [3 5 3 2;-1 9 1 8]
MatrixGame(A);
disp('Exercise 15')
A = [4 6 2 0;1 3 2 5]
MatrixGame(A);
disp('Exercise 16')
A = [5 -1 1;4 2 3;-2 -3 1]
MatrixGame(A);
disp('we can also reduce the matrix')
disp('PlayerC want to remove the largest sum columns')
disp('PlayerR want to remove the smallest sum rows')
A = [5 -1 1;4 2 3;-2 -3 1]
A = [ -1 1; 2 3; -3 1]
A = [ -1 1; 2 3]
MatrixGameOptimalStretegy(A,1,2)
disp('Exercise 17')
A = [0 1 -1 4 3;1 -1 3 -1 -3; 2 -1 4 0 -2;-1 0 -2 2 1]
MatrixGame(A);
disp('Exercise 18')
A = [6 4 5 5;0 4 2 7;6 3 5 2; 2 5 3 7]
MatrixGame(A);