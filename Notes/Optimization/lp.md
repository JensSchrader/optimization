## Linear Programming

### Matrix Games

### Geometric Method

![Geometric Method](./figures/geometricmethod.png)

### Simplex

Simplex is a method for linear programming problem. It must be a **maximization** problem on standard form.

- *All variables must be non-negative $\geq 0$.*
- *Constraints should be non-negative $(\leq)$.*

The objective function should have all the variables on the left-hand-side and is equal to zero e.g. $Z = 3x + 4y$ becomes $-3x-4y + Z =
0$.

Simplex introduces slack variables to turn inequalities into equations e.g. $2x_1+x_2 \leq 8$ becomes $2x_1+x_2 + x_3=8$.

Once the above is satisfied the initial problem can be formulated on simplex tableau form:

|$x_1$|$x_2$|$\hat{x}_3$|$\hat{x}_4$|$\hat{x}_5$|  $M$  |  $y$   |
|-----|-----|-----|-----|-----|-----|-----|
|1|4|1|0|0|0|16|
|6|4|0|1|0|0|30|
|2|-5|0|0|1|0|6|
|-6|-5|0|0|0|1|0|
Table 1: Initial simplex tableau

Similarly to Gaussian Elimination a pivot column must be chosen. The rest of the column should be reduced to zero and the pivot element should equal one.

The pivot column $j$ should be the largest negative i.e. smallest value of the bottom row, which is the coefficients.
The pivot row should be the smallest value. The pivot row $i$ is determined by $\min(\frac{y_n}{x_n})$.

**Duality Theorem**
Primal Problem $P$

$$maximize\: f(x)=c^Tx\\Ax\leq b\\x\geq0$$

Dual Problem $P'$

$$minimize\: g(y)=b^Ty\\A^Ty\leq c\\y\geq0$$

