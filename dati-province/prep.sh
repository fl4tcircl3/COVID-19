#!/bin/bash
set -e

find . -maxdepth 1 -name dpc-covid19-ita-province-\*.csv \
  -exec sh -c 'sed -e "/In fase di definizione/d" -e "s/ï¿½/ì/g" {} > ./prepped/{}' \;
