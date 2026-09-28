#!/usr/bin/env bash
set -euo pipefail
make
./bin/batch_filter --images "${1:-256}" --width 1024 --height 768 --output proof/results.csv
