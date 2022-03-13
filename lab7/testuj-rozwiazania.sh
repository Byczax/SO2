#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 7 – semestr letni 2020/2021
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
    ACTUAL=$("./${FILE}")

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

verify_sorted() {
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
read -r -d '' EXPECTED << 'EOF'
Aenean
Aliquam
Donec
In
Lorem
Maecenas
Mauris
Morbi
Nam
Nulla
Nullam
Nunc
Pellentesque
Phasellus
Praesent
Proin
Sed
Suspendisse
Vestibulum
Vivamus
EOF

verify_sorted 'zad1.sh' "${EXPECTED}"


#
# Zadanie 2
#
read -r -d '' EXPECTED << 'EOF'
file:///home/http/proxy/wikipedia-Floyd-Steinberg
ftp://ftp.pwr.wroc.pl/ubuntu/
http://pl.wikipedia.org/wiki/Rasteryzacja
https://eduinf.waw.pl/inf/utils/002_roz/2008_22.php
https://en.wikipedia.org/wiki/Bresenham's_line_algorithm
https://pl.wikipedia.org/wiki/Dithering_(grafika_komputerowa)
sftp://10.12.13.14/home/user/triangles.png
EOF

verify_sorted 'zad2.sh' "${EXPECTED}"


#
# Zadanie 3
#
read -r -d '' EXPECTED << 'EOF'
CppLint
    The tool performs checking for compatibility of code with Google’s style guide for C++ language, which ensures code to be clean from bad practices and more secure. It also checks for syntax errors and style consistency.
Installation
    CppLint is a Python script and can be easily installed in every environment that has also the Python's package manager (pip) installed. Use the following command to do so:
    pip install cpplint
Usage
    Basic run
    The basic usage of CppLint is very simple:
    cpplint [--exclude=&lt;paths&gt;] &lt;directory/file&gt;
    Where:
        &lt;paths&gt; - comma separated list of paths (files, directories) that should not be checked
    Examples
    cpplint ./code/*
    cpplint --exclude=./magic/ ./*
Warning
    CppLint bases on regular expressions and occasionally may report false-positive warnings; it is possible to suppress scanning in specific parts of code by adding the following comment at the end of each impacted line:
    // NOLINT
    It is possible (and better) to suppress warnings for a only one specific rule, using:
    // NOLINT(RULE)
EOF

verify 'zad3.sh' "${EXPECTED}"


#
# Zadanie 4
#
read -r -d '' EXPECTED << 'EOF'
511/627
EOF

verify 'zad4.sh' "${EXPECTED}"


#
# Zadanie 5
#
read -r -d '' EXPECTED << 'EOF'
__getattr__
__init__
__repr__
_create_service_ref
_get_manager
_update_service_ref
basic_config_check
create
kill
periodic_tasks
process_launcher
reset
serve
setup_profiler
start
stop
wait
EOF

verify_sorted 'zad5.sh' "${EXPECTED}"


#
# Zadanie 6
#
read -r -d '' EXPECTED << 'EOF'
images/interpolacja.jpg
images/scanlines.png
images/triangle-area.png
images/triangle-color.png
EOF

verify_sorted 'zad6.sh' "${EXPECTED}"


#
# Zadanie 7
#
read -r -d '' EXPECTED << 'EOF'
+46464646464
+48 545454545
+48324224224
+49 123-456-789
0044 888 888 888
0048-231-323-432
555-444-555
643 123 123
666777888
aleksy@to.pp
fryderyk@mail.dd
grupa@pwr.edu.pl
henryk.jkk@ww.com.pl
karol77@onet.ee
nasz-kontakt@saj8ens.cp
pytanie@mail.cc.kk
wodz1rej@sec.oo
EOF

verify_sorted 'zad7.sh' "${EXPECTED}"


#
# Zadanie 8
#
read -r -d '' EXPECTED << 'EOF'
dell_smm-virtual-0
Adapter: Virtual device
Processor Fan:    0 RPM
CPU:            +123.8°F  
Ambient:        +107.6°F  
SODIMM:         +91.4°F  
Other:          +93.2°F  

coretemp-isa-0000
Adapter: ISA adapter
Physical id 0:  +134.6°F  (high = +224.6°F, crit = +224.6°F)
Core 0:         +134.6°F  (high = +224.6°F, crit = +224.6°F)
Core 1:         +134.6°F  (high = +224.6°F, crit = +224.6°F)

acpitz-virtual-0
Adapter: Virtual device
temp1:        +78.8°F  (crit = +224.6°F)
temp2:        +81.5°F  (crit = +224.6°F)
temp3:        +85.1°F  (crit = +224.6°F)
EOF

verify 'zad8.sh' "${EXPECTED}"


#
# Zadanie 9
#
read -r -d '' EXPECTED << 'EOF'
#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 7 – semestr letni 2020/2021
#
# Celem zajęć jest zapoznanie się z&nbsp;wyrażeniami regularnymi, wykorzystując
# przy tym narzędzia awk i&nbsp;grep oraz wszystkie inne, poznane na zajęciach.
#
# Tradycyjnie nie przywiązujemy zbyt dużej wagi do środowiska roboczego.
# Zakładamy, że format i&nbsp;układ danych w&nbsp;podanych plikach nie ulega zmianie,
# ale same wartości, inne niż podane wprost w&nbsp;treści zadań, mogą ulec zmianie,
# a&nbsp;przygotowane zadania wciąż powinny działać poprawnie (robić to, co trzeba).
#
# Wszystkie chwyty dozwolone, ale w&nbsp;wyniku ma powstać tylko to, o&nbsp;czym jest
# mowa w&nbsp;treści zadania – nie generujemy żadnych dodatkowych plików pośrednich.
#
#
# Zadanie 9.
# Proszę wyświetlić komentarze z&nbsp;bieżącego pliku z&nbsp;zadaniami ($0), wstawiając
# znaki niełamliwej spacji języka HTML (&nbsp;) za wszystkimi pojedynczymi
# literami w&nbsp;tekście.
#
EOF

verify 'zad9.sh' "${EXPECTED}"


#
# Zadanie 10
#
read -r -d '' EXPECTED << 'EOF'
<klucz1>wartość</klucz1><klucz2><podklucz1>abcedfg</podklucz1><podklucz2>1234567</podklucz2></klucz2><klucz3 /><klucz4>koniec</klucz4>
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
