#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 3
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
9ffff5516d654e4feaf30abdadd5796b
EOF

verify 'zad1.sh' "${EXPECTED}"


#
# Zadanie 2
#
read -r -d '' EXPECTED << EOF
12
EOF

verify 'zad2.sh' "${EXPECTED}"


#
# Zadanie 3
#
read -r -d '' EXPECTED << EOF
Argon
Beryllium
Chlorine
Magnesium
Silicon
Sodium
EOF

verify 'zad3.sh' "${EXPECTED}"


#
# Zadanie 4
#
read -r -d '' EXPECTED << EOF
/etc/hosts
${PWD}/dane/elements/Hydrogen
${PWD}/dane/elements/Lithium
${PWD}/dane/elements/Nickel Back
${PWD}/dane/elements/Oxygen
${PWD}/dane/pierwiastki/Potassium
EOF

verify 'zad4.sh' "${EXPECTED}"


#
# Zadanie 5
#
read -r -d '' EXPECTED << EOF
delta
golf
EOF

verify 'zad5.sh' "${EXPECTED}"


#
# Zadanie 6
#
read -r -d '' EXPECTED << EOF
/dane/elements/Sodium
/elements/Magnesium
/etc/hosts
/some/existing/path
EOF

verify 'zad6.sh' "${EXPECTED}"


#
# Zadanie 7
#
read -r -d '' EXPECTED << EOF
dane/atom
dane/moje dokumenty/cytat
dane/pierwiastki/Oxygen
EOF

verify 'zad7.sh' "${EXPECTED}"


#
# Zadanie 8
#
read -r -d '' EXPECTED << EOF
L:Calcium
L:Potassium
L:Scandium
L:Titanium
P:Helium
P:Nitrogen
EOF

verify 'zad8.sh' "${EXPECTED}"


#
# Zadanie 9
#
read -r -d '' EXPECTED << EOF
Argon: ../elements/Argon
Beryllium: ../elements/Beryllium
Chlorine: ../elements/Chlorine
Magnesium: ../elements/Magnesium
Silicon: ../elements/Silicon
Sodium: ../elements/Sodium
juliett: ../icao/juliett
passwords: moje dokumenty/passwords
szereg: ../szereg
twardziel: ../twardziel
EOF

verify 'zad9.sh' "${EXPECTED}"


#
# Zadanie 10
#
read -r -d '' EXPECTED << EOF
10
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
