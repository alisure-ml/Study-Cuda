## 学习CUDA


### 1、什么是CUDA

CUDA(ComputeUnified Device Architecture)，是显卡厂商NVIDIA推出的运算平台。

CUDA是一种由NVIDIA推出的通用并行计算架构，该架构使GPU能够解决复杂的计算问题。


### 2、什么是CUDNN

NVIDIA cuDNN是专门针对深度神经网络（Deep Neural Networks）中的基础操作而设计基于GPU的加速库。

它强调性能、易用性和低内存开销。NVIDIA cuDNN可以集成到更高级别的机器学习框架中，如Caffe、Caffe2、TensorFlow、Torch、Pytorch、Theano等。

简单的`插入式设计`可以让开发人员专注于设计和实现神经网络模型，而不是简单调整性能，同时还可以在GPU上实现高性能现代并行计算。

cuDNN是基于CUDA的深度学习GPU加速库，有了它才能在GPU上完成深度学习的计算。


### 3、CUDNN不会对CUDA造成影响

只要把cuDNN文件复制到CUDA的对应文件夹里就可以，即是所谓插入式设计，
把cuDNN数据库添加CUDA里，cuDNN是CUDA的扩展计算库，不会对CUDA造成其他影响。

cuDNN的安装文件有两个文件夹(`include`,`lib64`)，共五个文件，放到`cuda`对应的位置即可。

CUDA已有的文件与cuDNN没有相同的文件，复制CUDNN的文件后，CUDA里的文件并不会被覆盖，CUDA其他文件并不会受影响。


### 4、卸载cuDNN

因为是插入式设计，cuDNN的卸载也非常简单，只需要把相关文件删除就可以了。


### 5、安装cuDNN

* [install nvidiaDriver_cuda_cudnn](https://github.com/waallf/Install_AND_path/blob/master/install%20nvidiaDriver_cuda_cudnn.md)

* [最正确的姿势安装cudnn，网上大多数教程都太坑了](https://blog.csdn.net/lucifer_zzq/article/details/76675239)


### 6、查看版本

```
# cuda版本
cat /usr/local/cuda/version.txt

# cudnn版本
cat /usr/local/cuda/include/cudnn.h | grep CUDNN_MAJOR -A 2
```


### Reference

* [CUDA与cuDNN](https://www.jianshu.com/p/622f47f94784)



