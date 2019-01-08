# Unconstrained Optimization

## One-dimension

$$f:R^1 \rightarrow R^1$$

$FONC$:

$$f'(x)=0$$

$FOSC$:

For a maximum (not entirely sure)

$$f''(x)>0$$

For a minimum (not entirely sure)

$$f''(x)<0$$

## N-dimensions

$$f:R^n \rightarrow R^1$$

$SONC$:

$$\nabla f(x_1,x_2) = 0$$

$\nabla f$ is the gradient of $f$, which is a vector of the partial derivatives of $f$.

$$\nabla f(x_1,x_2)=
\begin{bmatrix}
\frac{\partial f}{\partial x_1} \\
\frac{\partial f}{\partial x_2}
\end{bmatrix}$$

$SOSC$:

Considering the definiteness of the Hessian matrix reveals optimum as max, min or saddle point.

The hessian matrix is a matrix of the second order derivatives of $f$.

$$D^2f(x)=
\begin{bmatrix}
\frac{\partial^2 f}{\partial x_1x_2} \\
\frac{\partial^2 f}{\partial x_2x_1}
\end{bmatrix}$$