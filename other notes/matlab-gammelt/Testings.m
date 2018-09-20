clear
clc
%A = [2 1 3;4 -2 1]
%[rowMin,maxiMin,colMax,miniMax,sadlepoints,notSaddle,valueOfGame,optimalR,optimalC,fair,determinable] = MatrixGame(A);

A = [10 -5 5;1 1 -1;0 -10 -5]
x = [1/4;1/2;1/4]
y = [1/4;1/4;1/2]
MatrixGameEXY(A,x,y)

A = [1 5 3 6;4 0 1 2]
MatrixGame(A)
MatrixGameOptimalStretegy(A,1,2)