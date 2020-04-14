#!/bin/bash
set -e

find . -maxdepth 1 -name dpc-covid19-ita-regioni-\*.csv \
  -exec sh -c "awk 'BEGIN { FS = \",\" } ; { print \$1 \",\" \$4 \",\" \$9 }' {} > ./totale-ospedalizzati/{}" \;
