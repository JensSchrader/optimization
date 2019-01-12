# Optimization

Optimization problems can be classified as;

- Constrained Optimization vs. Unconstrained Optimization
- Continuous Optimization vs. Discrete Optimization
- Deterministic Optimization vs. Stochastic Optimization

Optimization is an important tool in making decisions and in analyzing physical systems. In mathematical terms, an optimization problem is the problem of finding the best solution from among the set of all feasible solutions. [^fn1]
Problems can be solved analytically (symbolic), when solutions do exist. Numerical methods can solve (some) problems, that can not be solved analytically by approximation. Optimization can be classified in to categories: Constrained or Unconstrained, Continuous or Discrete and Deterministic or Stochastic Optimization.

Most algorithm do not guarantee to find global optimum, there exist method that does, however these are computationally heavy and time exhaustive. Local search are often preferred, as the local solution are *"good enough"* and are not as time consuming.

## Constrained Optimization vs. Unconstrained Optimization

**Unconstrained Optimization**
Unconstrained optimization problems arise directly in many practical applications; they also arise in the reformulation of constrained optimization problems in which the constraints are replaced by a penalty term in the objective function.

**Constrained Optimization**
Constrained optimization problems arise from applications in which there are explicit constraints on the variables. The constraints on the variables can vary widely from simple bounds to systems of equalities and inequalities that model complex relationships among the variables. 

Constrained optimization problems can be furthered classified according to the nature of the constraints (e.g., linear, nonlinear, convex) and the smoothness of the functions (e.g., differentiable or non-differentiable) [^fn1]. 

## Continuous Optimization vs. Discrete Optimization

Models with discrete variables are discrete optimization problems; models with continuous variables are continuous optimization problems.

**Continuous optimization** problems tend to be easier to solve than discrete optimization problems; the smoothness of the functions means that the objective function and constraint function values at a point $x$ can be used to deduce information about points in a neighborhood of $x$ [^fn1]. It is important as the continuity assumption allow us to use calculus methods.

**Discrete optimization problems** use discrete variables and tend to be harder to solve as these calculus method cannot be applied to function that are not continuous and form gaps and intervals.The travelling salesman problem, is a well-known discrete optimization problem, that tries to optimize the best route trough a set of discrete variables i.e. cities.

## Deterministic Optimization vs. Stochastic Optimization

**Deterministic Optimization**
*Always produces the same result from initial input (e.g. for same candidate solution $x_{0}$)* -- <cite>Carl</cite>

In deterministic optimization, it is assumed that the data for the given problem are known accurately. However, for many actual problems, the data cannot be known accurately for a variety of reasons. The first reason is due to simple measurement error. The second and more fundamental reason is that some data represent information about the future (e. g., product demand or price for a future time period) and simply cannot be known with certainty.[^fn1]

**Stochastic Optimization**
Does not always produce the same result. Randomness is added to the algorithm e.g. random selection of candidate solutions or neighborhoods. Stochastic methods are presumably faster and more robust, as they have mechanism to avoid getting stuck in local minimums.  

In optimization under uncertainty, or stochastic optimization, the uncertainty is incorporated into the model. Robust optimization techniques can be used when the parameters are known only within certain bounds; the goal is to find a solution that is feasible for all data and optimal in some sense. Stochastic programming models take advantage of the fact that probability distributions governing the data are known or can be estimated; the goal is to find some policy that is feasible for all (or almost all) the possible data instances and optimizes the expected performance of the model. [^fn1]

Stochastic also means random. The opposite term is deterministic. Deterministic optimization given some input $x$ is guaranteed to always output the same $y$. Stochastic methods does not provide such guarantee, however stochastic methods are presumably faster and more robust, as they have mechanism to avoid getting stuck in local minimums.

[^fn1]: NEOS. Accessed December 20, 2018. https://neos-guide.org/optimization-tree.

### Mathematical Preliminaries

#### One-dimension

$$f:R^1 \rightarrow R^1$$

$FONC$:

$$f'(x)=0$$

$FOSC$:

For a maximum (not entirely sure)

$$f''(x)>0$$

For a minimum (not entirely sure)

$$f''(x)<0$$

#### N-dimensions

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

Considering the definiteness of the Hessian matrix reveals optimum as max, min or saddle point, using an eigen value analysis.

The hessian matrix is a matrix of the second order derivatives of $f$.

$$D^2f(x)=
\begin{bmatrix}
\frac{\partial^2 f}{\partial x_1x_2} \\
\frac{\partial^2 f}{\partial x_2x_1}
\end{bmatrix}$$
