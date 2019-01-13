## Unsupervised Learning Techniques

Unsupervised learning is the learning process or finding patterns, structures and similarities in unlabeled data. It is widely used in data mining.

To find these patterns and discriminate some classes in data from other classes, similarity measures is used determine the degree of which the data has the same structure.

### Distance-based similarity

Similarity can in some applications, be describe as the distance $d(x_i,x_j)$ between two vectors.

Similarity function based on distance function can have the forms;

$$s(x_i,x_j)=\frac{\sigma}{d(x_i,x_j)}$$

$$s(x_i,x_j)=e^{-\frac{d(x_i,x_j)}{\sigma}}$$

In the above any distance function between two vector-pairs.

**Euclidean Distance**
$$d_E(x_i,x_j)=\left\lVert x_i -x_j\right\rVert_2=\sqrt{\sum_{d=1}^D (x_{id}-x_jd)^2}$$

**Manhattan Distance**
$$d_M(x_i,x_j)=\sum_{d=1}^D |x_{id}-x_jd|$$

**Minkowski Distance**
$$d(x_i,x_j)=\Bigg(\sum_{d=1}^D |x_{id}-x_jd|^q)^{\frac{}{}}\Bigg)^{\frac{1}{q}}$$

### Angular-based similarity

$$s(x_i,x_j)=\frac{x_i^Tx_j}{\left\lVert x_i\right\rVert_2\left\lVert x_j\right\rVert_2}$$

## K-means clustering algorithm
Given a data set of size N

```pseudo
Generate k centroids vectors randomly. 

Do:
    Assign each sample to the nearest centroid for the sample.

    Update the centroid to become the mean vector of the samples.

Until no change
```

![KMeans Pseudo Code](./figures/kmeans_pseudo.png)

## Fuzzy K-means clustering

K-means clustering uses har-assignment, by assigning a sample to one or another cluster distinctively. Fuzzy or soft assignment allow us to assign a sample partly to one or the other. The membership is a percentage of how much we assign each sample to every cluster.