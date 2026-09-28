NVCC ?= nvcc
all: bin/batch_filter
bin/batch_filter: src/sobel.cu
	@mkdir -p bin
	$(NVCC) -O2 -std=c++17 $< -o $@
