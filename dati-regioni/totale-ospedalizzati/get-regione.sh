#!/bin/bash
set -e

regione=$1
echo "data,denominazione_regione,totale_ospedalizzati" > dpc-covid19-ita-totale-ospedalizzati-${regione,,}.csv
grep -h ${regione} dpc-covid19-ita-regioni-2020*.csv >> dpc-covid19-ita-totale-ospedalizzati-${regione,,}.csv
