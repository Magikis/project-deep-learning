## 28.03.2019


### Pytorch implementaion

* Simple pytorch neural nets architectures on CIFAR10 dataset.
* Three models:
  * Simple MLP  - 49% accuracy; 2min train time
  * Simple ConvNet - 62% accuracy; 3min train time
  * ResNet18 - 83% accuracy; 33min train time
* Criterion: CrossEntropyLoss
* Optimizer: Stochastic Gradient Distance 
  *  learning rate -  0.001
  *   momentum - 0.9