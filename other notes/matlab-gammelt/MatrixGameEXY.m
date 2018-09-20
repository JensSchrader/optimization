function [] = MatrixGameEXY(matrix,x,y)
Exy = x'*matrix*y
EXe_n = matrix'*x
vx = min(EXe_n)
EYe_n = matrix*y
vy = max(EXe_n)
disp('we expect vx < Exy <= vy')
disp('vx < Exy')
if(vx < Exy)
    disp('True')
else
    disp('False')
end
disp('Exy <= vy')
if(Exy <= vy)
    disp('True')
else
    disp('False')
end
end