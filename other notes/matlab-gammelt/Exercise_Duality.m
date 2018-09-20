syms x1 x2 x3 y1 y2 y3

maximize = 25*x1 + 33*x2 + 18*x3 == 0;
cx1 = 2*x1 + 3*x2 +  4*x3 == 60;
cx2 = 3*x1 + x2 +5*x3 == 46;
cx3 = x1 + 2*x2 + x3 == 50;
[A,B] = equationsToMatrix([cx1,cx2,cx3,maximize],[x1,x2,x3])
tableau = [A eye([size(B,1) size(B,1)]) B]
prime = [A B]
dual = prime'
disp('from this matrix we can create the minimizeation problem')
minimize = 60*y1 + 46*y2 + 50*y3;
cy1 = 2*y1 + 3*y2 + y3 == 25;
cy2 = 3*y1 + y2 + 2*y3 == 33
cy3 = 4*y1 + 5*y2 + y3 == 18;
[A,B] = equationsToMatrix([cy1,cy2,cy3,minimize],[y1,y2,y3])
tableau = [A eye([size(B,1) size(B,1)]) B]


disp('exercise 9.4.11')
disp('use simplex method to solve the dual and from this solve the original problem the dual of dual.')
minimize = 16*x1 + 10*x2 + 20*x3 == 0;
cx1 = x1 + x2 +  3*x3 == 4;
cx2 = 2*x1 + x2 +2*x3 == 5;
[A,B] = equationsToMatrix([cx1,cx2,minimize],[x1,x2,x3])
prime = [A B]
dual = prime'
maximize = 4*y1 + 5*y2 == 0;
cy1 = 1*y1 + 2*y2 <= 16
cy2 = 1*y1 + 1*y2 <= 10
cy3 = 3*y1 + 2*y2 <= 20
[A,B] = equationsToMatrix([cx1,cx2,minimize],[x1,x2,x3])