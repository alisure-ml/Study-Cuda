NVCC = /usr/local/cuda/bin/nvcc
NVCC_FLAGS = -g -G -Xcompiler -Wall

main: main.cpp
	$(NVCC) $(NVCC_FLAGS) $< -o $@

