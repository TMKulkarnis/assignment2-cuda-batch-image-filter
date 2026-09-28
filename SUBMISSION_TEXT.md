Project Title: CUDA Batch Sobel Image Filter

Code repository: [PASTE PUBLIC REPOSITORY URL HERE]

Proof of execution artifacts: `proof/results.csv` records the batch size, dimensions, pixel count, GPU kernel time, and throughput. Run the supplied command and replace the placeholder timing values with the measured output before uploading.

Code Project Description: This project applies a Sobel edge detector to 256 grayscale images in one execution. The CUDA kernel assigns one thread to each output pixel, computes horizontal and vertical gradients from a 3x3 neighborhood, and writes the edge magnitude to the output batch. The default workload processes more than 200 million pixels, demonstrating GPU computation at the required scale. The command-line interface accepts image count, width, height, and output path, while the README and Makefile document reproducible compilation and execution.
