## Unconstrained Optimization

Unconstrained optimization has no constraints i.e. bound for it's optimal value. An optimal solution of the function is sought and there are different ways to obtain optimum numerically. We cannot be sure to find a global optimum and sometimes, a locally optimum is sufficient. Other methods have mechanism to that helps the algorithm obtain global optimums or an approximation hereof.

**Root-Finding and Optimization**

![Root finding and optimization](./figures/root_vs_opt.png)

### 1D Line Search Methods

1D Line search methods are methods that seek an optimum a long the line of a 1D function.

#### Golden Section Search

**Class: Deterministic**
Golden section search are given an initial interval in which is should try to find an optimum. The interval is narrowed down by the golden ratio number $\phi=\sqrt{2}$. The algorithm converges, when there is no or sufficiently small progress of yet another iteration.

#### Fibonacci Search

**Class: Deterministic**
Fibonacci search is golden section search with improved narrowing down mechanism. Instead of the golden ratio the method uses the Fibonacci series to shrink the search space.

#### Newtons Method

**Class: Deterministic**
There are two basic approaches the tangent method and the secant method.

##### 1D

**Tangent method**
$$x(t+1)=x(t)-\frac{g(x)}{g'(x)}$$

![Newton 1D Tangent Method](./figures/newton1d.png)

Basically it computes the root of the tangent of $g(x)$, to get the next $x$.

**Secant Method**
$$x(t+1)=x(t)-\frac{x(t)-x(t-1)}{g(x(t))-g(x(t-1))}g(x(t))$$

![Newton 1D Secant Method](./figures/newton1ds.png)

Basically it computes the secant of $g(x)$ minus the previous step $g(x-1)$.

Both methods converges when the value of improvement gets desirably small by each increment.

$$|x^{(k+1)}-x^{(k)}|< e$$

Or when the residual size gets small enough i.e. close to the root.

$$f(x^{(k+1)}) < e$$

Or when we have done too many iterations.

$$k>k_{max}$$

For optimization at $f'(x)=0$ newtons method can be described as;

$$x^{(k+1)}=x^{(i)}\frac{f'(x^{(i)})}{f''(x^{(i)})}$$

##### nD

Expanding newtons method to n-dimension, basically just mean to turn $x$ into a vector $X$. For root finding purposes the problem can be rewritten as;

$$X^{(k+1)}=X^{(i)}-J^{(i)-1}f(x^{(i)})$$

Where $J$ is the Jacobian matrix.

Newton method for optimization, where the gradient $\nabla f(x)=0$, in nD can be stated as;

$$X^{(k+1)}=X^{(i)}-H^{(i)-1}\nabla f(x^{(i)})$$

Where $H$ is the Hessian matrix.

NB. Newton's method computes the first and second order derivative i.e. Jacobian and Hessian matrices in a point of $f$.

<!--#### Levenberg-Macquard's modification-->

##### Newton's for non-linear least-square

![Newton Curve Fitting](./figures/newtoncurvefitting.png)

##### Quasi-Newton

Quasi Newton's approximates Jacobian and Hessian matrices, in cases of unavailability or if they are too expensive to compute.

We replace the hessian with an approximation $B$.

$$X^{(k+1)}=X^{(i)}-B^{(i)-1}\nabla f(x^{(i)})$$

$$B=\frac{\nabla f(x_k+\Delta x)-\nabla f(x_k)}{\Delta x}$$

NB. It is actually just the secant method in nD.

As iteration steps increases $B$ converges to true Hessian.

Quasi-Newton is faster and more robust than newton

### Gradient Methods

#### Steepest Descent

The step-size is the movement in the direction of the gradient i.e. steepest descent, that minimizes $f$. The next step point is given as this point, and we once again move in the direction of the gradient, that minimizes the function $f$, this is done iteratively until convergence.

**Class: Deterministic**
$$\alpha_k=\underset{\alpha > 0}{\arg\min} f(x^{(k)}-\alpha\nabla f(x)^{k}))$$

![Steepest Descent](./figures/steepestdescent.png)

**Quadratic Form**
$$Q(t)=x^TAx$$

Where $A$ is a $n\times n$ symmetric matrix.

Then the steepest descent of the quadratic form is given by;

$$f(x)=\frac{1}{2}x^TQx-b^Tx$$

Where $x$ and $g(x)$ is given by;

$$x^{(k+1)}=x^{(k)}\frac{g^{(k)T}g^{(k)}}{g^{(k)T}Qg^{(k)}}g^{(k)}$$

$$g^{(k)}=\nabla f(x^{(k)})=Qx^{(k)}-b$$

### Conjugate Methods

![Gradient Descent Zig-Zag](./figures/gradientzigzag.png)

![Conjugate Directions](./figures/conjugatedirections.png)

#### Conjugate Descent

**Class: Deterministic**

