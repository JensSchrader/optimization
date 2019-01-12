## Constrained Optimization

$$\begin{aligned}
minimize\: f \\ subject\: to\:  \in \Omega
\end{aligned}$$

Where $x=(x_1,... , x_n)$ optimization variables, or decision variables.
$f:\:R^n \rightarrow R$, objective function.
$\Omega$, is the constraint set or feasible set, sometimes $\Omega = \{x\in R^n | f_i(x)$, where $i=1,...,m\}$.
$f_i(x)\:R^n \rightarrow R$ where $i=1,...,m$.constraint functions.
$x$ optimal solution or minimizer, is the smallest value of $f$ among $x=(x_1,... , x_n)$ satisfying the
constraints.

### Solving Linear Equations

Linear System of Equations $Ax=b$ can be solved using Gaussian Elimination. For some system of equation no solution exists, and an approximate solution is the best we can get. We can typically project $b$ onto the linear subspace spanned by $A$. The solution will have some error term, and we wish to find the projection with the least mean squared error.

### Non-linear Constrained Optimization

The lagrange theorem:

$$F(x,\lambda)=f(x)-\lambda(h(x))$$

$$DF(x,\lambda)=\nabla f(x)-\nabla\lambda(h(x))$$

$DF$ is the partial derivatives of $x$ and $\lambda$

Solve the system of equations

$$DF(x,\lambda)=\nabla f(x)-\nabla\lambda(h(x))=0$$

If the solution has optimizers, these will be given as the solution to the system of equations.

