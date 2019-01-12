## Global Search Methods

Global Search Algorithms have countermeasures to avoid getting stuck in a local optimum and seek global optimum for the optimization problem.

Some of these global algorithms uses a population of candidate solutions and not just a single candidate solution at each iteration.

A population of candidate is a way of spreading out the search field of an optimization algorithm. Instead of a single candidate, that either search along a line or random steps from the former solution, the population searches in many areas of the function at the same time.
Particle swam optimization is one such method. It spreads out a swarm of particles i.e. candidate solutions and in corporation they find an approximation of the global optimum.

### Simulated Annealing

Simulated Annealing have countermeasures for getting stuck in local optimum, by accepting a worse candidate solution with some probability. Improving candidate solutions are always accepted. Simulated Annealing is inspired by metallurgy, where the blacksmith heath the metal material and lets it slowly cool off. It makes the metal easier to work with. Simulated annealing uses the term of hot and cold. When it's hot, the algorithm is more likely to take a worse candidate solution, as it get colder the probability decrease i.e. it gets less bendy.

```pseudo
Let s = s0
For k = 0 through kmax (exclusive):
T = temperature(k / kmax)
Pick a random neighbour, snew = neighbour(s)
If P(E(s), E(snew), T) >= random(0, 1):
s = snew
Output: the final state s
```

$$e^{(\frac{-(f(z_i)-f(x_i))}{T_i})}>r$$

If solution is worse (higher than for minimization), the $lhs$ will be between $0...1$, $r$ is a random integer between either $0$ or $1$. As the temperature cools off over time the $lhs$ will get converge to zero, which essentially reduces the probability of taking a worse candidate solution over time.

### Particle Swarm Optimization

Particle Swarm Optimization is inspired by swarms of insects finding good spots. Good spots are evaluated as fitness of some function $f(x,y)$. The solution seeks the global optimum or an approximation hereof.

The particle swarm has two update formulas one for particles velocity;

$$v_i(t+1)=wv_i(t)+c_1r_1[\hat{x}_i(t)-x_i(t)]+c_2r_2[g(t)-x_i(t)]$$

and one for particle position;

$$x_i(t+1)=x_i(t)+v_i(t+1)$$

The algorithm can be described as follows;

> For each $p$ in $P$
>
> 1. Evaluate the fitness i.e. heat of particle $p$ as $h(x_i,y_i)$.
> 2. If $h(\hat{x_i},\hat{y_i}) < h(x_i,y_i)$
Then update the $p$ best know position $\hat{x_i}$ (cognitive component)
If $g(t) < h(x_iy_i)$
Then update the best known global position $g(t)$ (social component).
>3. Update the particles individual velocity and position according to the update formulas in (i).

### Genetic Algorithms

Uses a chromosomatic representation of the data. It could be a bit string explaining a step in a certain direction.

Using two bits it could be;
Up: 00, 
Right: 01, 
Left: 10, 
Down 11.

A series of five steps could be represented like this;(00,01,01,00,10)

The algorithm is inspired by evolution theory and can be explained as follows;

```
Given initial population generation t0
1. Select intermediate population based on fitness (Selection)
2. use intermediate population to create offspring (Cross-over and Mutation)
3. population (t+1) is offspring
Repeat until stop criterion is met
```

**Single-Point Cross-Over**
Single-point cross-over of gene (1) and gene (2) result in gene (3).

$$(1)\: 00010|10010$$

$$(2)\: 00100|00010$$

$$(3)\: 00010|00010$$

*Cross-over point is indicated by | between index 5 and 6. First part is (1) second part is (2).*

**Mutation**
Step trough cromosome bit by bit. Randomly decide to flip with a probability e.g.  0.1%.*

(2) $000\mathbf{0}000010$

Index 4 has been flipped indicated with bold font. 

