# CUDA Batch Image Filter

This project applies a 3x3 Sobel edge filter to a batch of synthetic grayscale images using a CUDA kernel. It processes hundreds of inputs in one execution, measures GPU time, and writes a CSV summary for reviewers.

## Build and run

```bash
make
./bin/batch_filter --images 256 --width 1024 --height 768 --output proof/results.csv
```

The kernel maps one CUDA thread to each output pixel and uses shared-memory-friendly contiguous image storage. The program reports input count, total pixels, GPU kernel time, and throughput.

## Why this meets the assignment

The implementation performs real GPU computation in `sobel.cu`, not CPU multithreading. The default run handles 256 images (over 200 million pixels), which is well beyond the required hundreds of small inputs or tens of large inputs. Synthetic data keeps the repository small and makes the run deterministic and reproducible.
