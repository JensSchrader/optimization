function [] = MatrixGameOptimalStretegy(matrix,t_min,t_max)
disp('matrix must be 2 x n')
syms t;
z = matrix(1,:)'*(1-t)+matrix(2,:)'*t
x = [t_max t_min];

for i=1:size(matrix,2)
    y = [fliplr(matrix(:,i)')];
    pl = line(x,y);
    hold on
end
hold off
matrix()'
disp('Look at the graph find the highest z where lines do not cross for the secound time.')
disp('To find t solve the corresponding z functions. t is the optimal stretegy.')
disp('Find z by solving one of the z with the given t. z is the value of the game.')
end