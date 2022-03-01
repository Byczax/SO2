#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 5 – semestr letni 2020/2021
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
    ACTUAL=$("./${FILE}" | LC_ALL=C sort)

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
48
EOF

verify 'zad1.sh' "${EXPECTED}"


#
# Zadanie 2
#
read -r -d '' EXPECTED << EOF
git
root
sus-nologin
user1
user2
user3
EOF

verify 'zad2.sh' "${EXPECTED}"


#
# Zadanie 3
#
read -r -d '' EXPECTED << EOF
-- dobra robota, to jest poprawny tekst
alea iacta est;
i ty brutusie przeciwko mnie?!
veni, vidi, vici,
EOF

verify 'zad3.sh' "${EXPECTED}"


#
# Zadanie 4
#
read -r -d '' EXPECTED << EOF
avahi
daemon
nginx
postfix
postgres
root
systemd
user1
user2
user3
www-data
EOF

verify 'zad4.sh' "${EXPECTED}"


#
# Zadanie 5
#
read -r -d '' EXPECTED << EOF
514
601
6514
EOF

verify 'zad5.sh' "${EXPECTED}"


#
# Zadanie 6
#
read -r -d '' EXPECTED << EOF
15671
1765
3307
442
443
48249
49153
5353
5671
5678
68
80
8080
8081
8082
8083
8443
8888
9000
EOF

verify 'zad6.sh' "${EXPECTED}"


#
# Zadanie 7
#
read -r -d '' EXPECTED << EOF
11278 python3 obliczenia.py --device cpu --input dane.txt
EOF

verify 'zad7.sh' "${EXPECTED}"


#
# Zadanie 8
#
read -r -d '' EXPECTED << EOF
380
EOF

verify 'zad8.sh' "${EXPECTED}"


#
# Zadanie 9
#
read -r -d '' EXPECTED << EOF
local.mk
EOF

verify 'zad9.sh' "${EXPECTED}"


#
# Zadanie 10
#
read -r -d '' EXPECTED << EOF
123456@student.pwr.edu.pl
123457@student.pwr.edu.pl
123458@student.pwr.edu.pl
123459@student.pwr.edu.pl
123460@student.pwr.edu.pl
123461@student.pwr.edu.pl
123462@student.pwr.edu.pl
123463@student.pwr.edu.pl
123464@student.pwr.edu.pl
123465@student.pwr.edu.pl
123466@student.pwr.edu.pl
123467@student.pwr.edu.pl
123468@student.pwr.edu.pl
123469@student.pwr.edu.pl
123470@student.pwr.edu.pl
123471@student.pwr.edu.pl
123472@student.pwr.edu.pl
123473@student.pwr.edu.pl
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
