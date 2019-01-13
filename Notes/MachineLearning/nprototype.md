## Nearest Prototype Classifiers

### Nearest Centroid

The nearest centroid classifier belong to the class of similarity or distance based algorithms. The model is trained by computing the centroid i.e. mean vector of each class based on the training data. The model is tested by computing the distance for unlabelled samples to the centroids and assigning the sample to the class of the nearest centroid. The are different distances measures to use e.g. Euclidean, Manhattan, Minkowski, etc. The most typical one is the euclidean distance. The euclidean distance is also defined as the L2 norm and is the straight line distance between to points.

### K-nearest neighbor

K-Nearest Neighbors is a rather simple but a computational expensive algorithm. The training phase is simply just storing the multi-dimensional training samples. The test phase on the other hand is expensive. It takes unlabelled sample vectors and computes the distance to all the samples in the model, and assigns the label that is most frequent among the $k$ nearest samples.



