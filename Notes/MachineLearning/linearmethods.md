## Linear Methods

### Fischer Discriminant Analysis

Is a linear projection, that seeks to maximize the discrimination of two classes. It has a lot of similarities with PCA, but instead of creating component that maximizes the total variance, LDA creates component, that projects onto the surface of the distance between two class means.

![LDA vs. PCA](./figures/lda_vs_pca.png)

### Linear Discriminant Analysis

Extends Fischer LDA into multi-class classification i.e. more than two classes. 

### Linear Discriminant Functions (Rules)

Maximum likelihood: Assigns $x$ to the group that maximizes population (group) density.

Bayes Discriminant Rule: Assigns $x$ to the group that maximizes $\pi_{i}f_{i}(x)$, where $\pi_i$ represents the prior probability of that classification, and $f_{i}(x)$ represents the population density.

Fisher's linear discriminant rule: Maximizes the ratio between $SS_{between}$ and $SS_{within}$, and finds a linear combination of the predictors to predict group.

### Generalized Discriminant Function

Is a classification technique for cases, that are non-linear separable. It is an augmented version of the latter. It uses feature expansion i.e. augmentation of the feature vector to create a higher dimensional representation, where the data is separable. It then create a decision hyperplane, and projects it back down to lower dimensions. The result is non-linear decision function. 

### Perceptron

A perceptron is a single layer neural network and the simplest form of a neural network. It takes a feature vector as input and produces a classification as output. It does so by multiplying each feature by a weight. The multiplied features are summed up to a weighted sum, that is given to the activation function. The activation function produces the output of the perceptron. The are different classification function e.g. the binary step function, that either produces a 1 or a 0 depending on the input. The training phase is an iterative approach to update the weights of the inputs by evaluating the response with a cost function. The cost function in our case is the mean squared error. The learning or training phase is an optimization process to minimize this cost function. The optimization function is a stochastic steepest gradient descent algorithm. The algorithm iteratively calculates the steepest decent from a given point and converges when finding minimas.
