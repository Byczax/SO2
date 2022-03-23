#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 3
#
# Skrypt usuwa wszystkie pliki środowiska roboczego oraz ewentualne archiwa,
# pozostawiając jedynie oryginalne skrypty pomocnicze i rozwiązania zadań.
#
set -o errexit
set -o nounset
set -o pipefail


#
# Czyszczenie
#
rm -rf 'dane/' 'rozwiazania.tgz'
