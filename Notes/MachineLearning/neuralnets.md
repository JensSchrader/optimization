## Neural Networks

Multi-layered Neural Networks are a widely used supervised learning technique. It extends the perceptron by adding hidden layers between the input layer and the output layer. All nodes in the hidden layers have a weight and activation function just as the single layer perceptron. The training phase consists of two sub-phases; feedforward and Back-propagation.

**Feedforward** is the process of each node in a layer passing its result to the next layer in the network until it reaches the output layer. The error is then computed using a loss function.

**Backpropagation** is the process of determining the contribution to the error at each node, as all nodes in the network affect the outcome. The network tries to optimize the error or cost function by updating the weight at each layer. This is done repeatedly until the network converges to a state where all training data has been correctly classified.

The testing phase is inputting unlabelled data to the network's input layer. The layers then apply their effect and the outcome is the prediction.

Selecting number of neurons in hidden layers rules of thumb;

> - The number of hidden neurons should be between the size of the input layer and the size of the output layer.
> - The number of hidden neurons should be 2/3 the size of the input layer, plus the size of the output layer.
> - The number of hidden neurons should be less than twice the size of the input layer.
>
> -- *Jeff Heaton*