#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 2
#
# Skrypt tworzy środowisko robocze ze wszystkimi niezbędnymi plikami
# na potrzeby realizacji zadań z danego tematu zajęć laboratoryjnych.
#
# Uwaga! Istniejące pliki i katalogi środowiska zostaną usunięte!
#
# Analiza niniejszego pliku nie jest konieczna, a nawet jest niewskazana.
# Proszę oszczędzić sobie życia i skupić się wyłącznie na rozwiązaniach :-)
#
set -o errexit
set -o nounset
set -o pipefail

DIR='dane'


#
# Czyszczenie i podstawowa struktura
#
if [ -e "${DIR}" ]; then
    rm -rf "${DIR}"
fi

umask 022
mkdir "${DIR}"


#
# Zadanie 2 i 3
#
FILE="${DIR}/drugi"
touch "${FILE}"
chmod 754 "${FILE}"

FILE="${DIR}/trzeci"
echo 'Ala ma psa.' > "${FILE}"
chmod 444 "${FILE}"


#
# Zadanie 4 i 5
#
mkdir -p "${DIR}/icao"
mkdir -p "${DIR}/backup"
i=0

for str in alfa bravo charlie delta echo foxtrot golf hotel \
           india juliett kilo lima mike november oscar papa; do
    if (( ++i % 3 )); then
        CMD='cat'
    else
        CMD='rev'
    fi

    if (( (++i - 2) % 3 )); then
        CHMOD='444'
    else
        CHMOD='666'
    fi

    echo "${str}" | "${CMD}" > "${DIR}/icao/${str}"
    chmod "${CHMOD}" "${DIR}/icao/${str}"
done

for str in alfa bravo foxtrot golf india kilo mike papa; do
    cp "${DIR}/icao/${str}" "${DIR}/backup/${str}"
done


#
# Zadanie 6
#
cat > "${DIR}/Zahlen.txt" << 'EOF'
11074
32198
5016
25179
767
5153
1205
3686
30815
10953
EOF


#
# Zadanie 7
#
mkdir -p "${DIR}/kontrola"

echo '5423ab1c3e39d01bb1505cd3fc93534c' > 'dane/kontrola/Hydrogen'
echo '6622e97cc64d49da4ce03b3249529815' > 'dane/kontrola/Helium'
echo '742330d6617e449e7bb460e802d50701' > 'dane/kontrola/Lithium'
echo 'd2840cc81bc032bd1141b56687d0f93c' > 'dane/kontrola/Beryllium'
echo '7a7aa30d7ef0b9b8373def0e47b4d945' > 'dane/kontrola/Boron'
echo '6e97a95d0f46bbe52e3c52449e66640a' > 'dane/kontrola/Carbon'
echo '1369f42f43aaf960699497616bd7a479' > 'dane/kontrola/Nitrogen'
echo '9ffff5516d654e4feaf30abdadd5796b' > 'dane/kontrola/Oxygen'
echo 'dd412b24f03f21b85254f47ff8aa33ca' > 'dane/kontrola/Fluorine'
echo '5423c3e39d3fb150ab15cc901bd3534c' > 'dane/kontrola/Sodium'
echo '6622cc64d4244ce0e973b959da329815' > 'dane/kontrola/Helium'
echo '74236617e4807bb430d602d49ee50701' > 'dane/kontrola/Magnesium'
echo 'd28481bc036811410ccb57d2bd60f93c' > 'dane/kontrola/Aluminium'
echo '7a7ad7ef0be4373da30ef7b9b804d945' > 'dane/kontrola/Silicon'
echo '6e97d0f46b492e3ca9552e6be546640a' > 'dane/kontrola/Phosphorus'
echo '1369f43aaf166994f4297bd96067a479' > 'dane/kontrola/Sulfur'
echo '9fff16d654daeaf3f550adde4fb5796b' > 'dane/kontrola/Chlorine'
echo 'dd414f03f2ff52542b2f48a1b87a33ca' > 'dane/kontrola/Argon'
echo '550ab15cc901423c3e39d3fb1bd3534c' > 'dane/kontrola/Nickel Back'

echo '10705ee94d206d034bb7084e71663247' | rev > 'dane/poszukiwany'

chmod 'a-r' 'dane/kontrola/Boron'
chmod 'a-r' 'dane/kontrola/Fluorine'
chmod 'a-r' 'dane/kontrola/Oxygen'


#
# Zadanie 8
#
echo '#!/bin/bash jest nasz' > "${DIR}/skrypt.sh"
chmod +x "${DIR}/skrypt.sh"

chmod +x 'dane/kontrola/Helium'
chmod +x 'dane/kontrola/Carbon'
chmod +x 'dane/kontrola/Sodium'
chmod +x 'dane/kontrola/Magnesium'
chmod +x 'dane/kontrola/Silicon'
chmod +x 'dane/kontrola/Sulfur'

chmod +x 'dane/icao/charlie'
chmod +x 'dane/icao/golf'
chmod +x 'dane/icao/india'
chmod +x 'dane/icao/mike'

mkdir "${DIR}/moje dokumenty"
touch "${DIR}/moje dokumenty/passwords"
touch "${DIR}/moje dokumenty/.ukryty"
touch "${DIR}/moje dokumenty/--poufne"
touch "${DIR}/moje dokumenty/zażółć gęślą jaźń"
chmod +x "${DIR}/moje dokumenty/zażółć gęślą jaźń"


#
# Zadanie 9
#
touch "${DIR}/;"

cat > "${DIR}/tajne" << 'EOF'
Zahlen.txt
backup/bravo
backup/kilo
backup/mike
icao/brawo
icao/hotel
icao/lima
kontrola/Argon
kontrola/Carbon Dioxide
kontrola/Nitrogen
moje dokumenty/passwords
moje dokumenty/.hidden
moje dokumenty/.ukryty
--non-existing
*
~
;
EOF


#
# Zadanie A
#
SEED=42
function my_rand() {
    SEED=$(( (SEED * 7 + 11) % 128 ))
    echo "${SEED}"
}

EXT='cpp'
EXTENSIONS=("${EXT}" 'txt' 'rst' 'md' 'gif' 'jpg')
function next_ext() {
    EXT="${EXTENSIONS[0]}"
    EXTENSIONS=("${EXTENSIONS[@]:1}" "${EXT}")
}

mkdir -p "${DIR}/deep/Linux/distros/DEB/"{Debian,Mint,Ubuntu}
mkdir -p "${DIR}/deep/Linux/distros/RPM/"{CentOS,Fedora,RHEL}
mkdir -p "${DIR}/deep/Linux/distros/TAR/"{Arch,Manjaro}
mkdir -p "${DIR}/deep/minios/"{bin,dev,etc,home,lib,usr}"/"{.tmp,data}

while read -r katalog; do
    my_rand > /dev/null
    VALUE=$(( SEED % 6 + 1 ))

    for ((i=1; i <= VALUE; i++)); do
        next_ext > /dev/null
        touch "${katalog}/plik${i}.${EXT}"
    done
done < <( find "${DIR}/deep/" -type d | LC_ALL=C sort )

while read -r plik; do
    my_rand > /dev/null

    if [ "${SEED}" -lt 32 ]; then
        chmod 'a-r' "${plik}"
    fi
done < <( find "${DIR}/deep/" -type f | LC_ALL=C sort )
