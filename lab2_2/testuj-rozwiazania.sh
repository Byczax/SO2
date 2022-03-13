#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 2
#
# Skrypt weryfikuje działanie rozwiązań do zadań – sprawdzany jest
# wynik działania skryptów w porównaniu z wartością oczekiwaną.
#
# Uwaga! Plik ma charakter pomocniczy, ostateczna ocena należy do prowadzącego!
#
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

DETAILS=''

verify() {
    FILE="$1"
    EXPECTED="$2"
    ACTUAL=$(bash -o errexit -o nounset "${FILE}" | LC_ALL=C sort)

    echo -n "${FILE} -> "
    if [ "${ACTUAL}" = "${EXPECTED}" ]; then
        echo -e "${GREEN}OK${NC}"
    else
        echo -e "${RED}KO${NC}"

        DETAILS+="\n=======> ${FILE} <======="
        DETAILS+="\nExpected:\n"'```'"\n${EXPECTED}\n"'```'"\n"
        DETAILS+="\nGot:\n"'```'"\n${ACTUAL}\n"'```'"\n"
    fi
}


#
# Zadanie 1
#
read -r -d '' EXPECTED << EOF
Zaczynamy!
EOF

verify 'zad1.sh' "${EXPECTED}"


#
# Zadanie 2
#
read -r -d '' EXPECTED << EOF
jest
EOF

verify 'zad2.sh' "${EXPECTED}"


#
# Zadanie 3
#
read -r -d '' EXPECTED << EOF
nok
EOF

verify 'zad3.sh' "${EXPECTED}"


#
# Zadanie 4
#
read -r -d '' EXPECTED << EOF
charlie
foxtrot
india
letoh
lima
ohce
olik
oscar
ovarb
rebmevon
EOF

verify 'zad4.sh' "${EXPECTED}"


#
# Zadanie 5
#
read -r -d '' EXPECTED << EOF
charlie
delta
echo
hotel
juliett
lima
november
oscar
EOF

verify 'zad5.sh' "${EXPECTED}"


#
# Zadanie 6
#
read -r -d '' EXPECTED << EOF
126046
EOF

verify 'zad6.sh' "${EXPECTED}"


#
# Zadanie 7
#
read -r -d '' EXPECTED << EOF
Magnesium
EOF

verify 'zad7.sh' "${EXPECTED}"


#
# Zadanie 8
#
read -r -d '' EXPECTED << EOF
drugi
icao/charlie
icao/golf
icao/india
icao/mike
kontrola/Carbon
kontrola/Helium
kontrola/Magnesium
kontrola/Silicon
kontrola/Sodium
kontrola/Sulfur
moje dokumenty/zażółć gęślą jaźń
skrypt.sh
EOF

verify 'zad8.sh' "${EXPECTED}"


#
# Zadanie 9
#
read -r -d '' EXPECTED << EOF
*
--non-existing
icao/brawo
kontrola/Carbon Dioxide
moje dokumenty/.hidden
~
EOF

verify 'zad9.sh' "${EXPECTED}"


#
# Zadanie 10
#
read -r -d '' EXPECTED << EOF
deep/Linux/distros/DEB/Debian/plik3.rst
deep/Linux/distros/DEB/Mint/plik1.cpp
deep/Linux/distros/RPM/CentOS/plik4.md
deep/Linux/distros/RPM/Fedora/plik1.gif
deep/Linux/distros/RPM/RHEL/plik1.jpg
deep/Linux/distros/RPM/RHEL/plik3.txt
deep/Linux/distros/RPM/RHEL/plik4.rst
deep/Linux/distros/RPM/RHEL/plik5.md
deep/Linux/distros/TAR/Manjaro/plik1.gif
deep/Linux/distros/TAR/plik2.cpp
deep/minios/bin/.tmp/plik5.rst
deep/minios/bin/.tmp/plik6.md
deep/minios/bin/data/plik1.gif
deep/minios/bin/data/plik3.cpp
deep/minios/bin/data/plik4.txt
deep/minios/bin/data/plik5.rst
deep/minios/dev/plik1.md
deep/minios/etc/.tmp/plik3.jpg
deep/minios/home/plik3.cpp
deep/minios/home/plik4.txt
deep/minios/home/plik5.rst
deep/minios/lib/.tmp/plik1.rst
deep/minios/lib/.tmp/plik2.md
deep/minios/lib/.tmp/plik3.gif
deep/minios/plik2.rst
deep/minios/usr/data/plik1.rst
EOF

verify 'zadA.sh' "${EXPECTED}"


#
# Display details about the failures
#
if [ -n "${DETAILS}" ]; then
    if [ "$1" = '--verbose' ]; then
        echo -e "${DETAILS}"
    else
        echo -e "\nRun \`$0 --verbose\` to display details about the errors."
    fi
fi
