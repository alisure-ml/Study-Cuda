## 教程

NVIDIA® cuDNN is a GPU-accelerated library of primitives for deep neural networks. It provides highly tuned implementations of routines arising frequently in DNN applications:

* Convolution forward and backward, including cross-correlation
* Pooling forward and backward
* Softmax forward and backward
* Neuron activations forward and backward:
    * Rectified linear (ReLU)
    * Sigmoid
    * Hyperbolic tangent (TANH)
* Tensor transformation functions
* LRN, LCN and batch normalization forward and backward

cuDNN's convolution routines aim for a performance that is competitive with the fastest GEMM (matrix multiply)-based implementations of such routines, while using significantly less memory.

cuDNN features include customizable data layouts, supporting flexible dimension ordering, striding, and subregions for the 4D tensors used as inputs and outputs to all of its routines. This flexibility allows easy integration into any neural network implementation, and avoids the input/output transposition steps sometimes necessary with GEMM-based convolutions.

cuDNN offers a context-based API that allows for easy multithreading and (optional) interoperability with CUDA streams. 


## Inference

* [cudnn-developer-guide overview](https://docs.nvidia.com/deeplearning/sdk/cudnn-developer-guide/index.html#overview)

