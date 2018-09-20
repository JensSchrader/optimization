function [] = maximizeSubjectTo()
disp('Write your mazimization problem in maximizeSubjectTo.apm')
addpath('apm');

% Integrate model and return solution
y = apm_solve('maximizeSubjectTo')
z = y.x

disp(['x1: ' num2str(z.x1)])
disp(['x2: ' num2str(z.x2)])
end