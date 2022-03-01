#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 4 – semestr letni 2020/2021
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
linux-5.11.13/kernel/locking/mutex.c
EOF

verify 'zad1.sh' "${EXPECTED}"


#
# Zadanie 2
#
read -r -d '' EXPECTED << EOF
linux-5.11.13/Documentation/Changes
linux-5.11.13/arch/arm/boot/dts/sun8i-a23-ippo-q8h-v1.2.dts
linux-5.11.13/arch/arm/boot/dts/sun8i-a23-ippo-q8h-v5.dts
linux-5.11.13/arch/arm/boot/dts/sun8i-a33-et-q8-v1.6.dts
linux-5.11.13/arch/arm/boot/dts/sun8i-a33-ippo-q8h-v1.2.dts
linux-5.11.13/arch/arm64/boot/dts/arm/vexpress-v2m-rs1.dtsi
linux-5.11.13/include/dt-bindings/clock/qcom,dispcc-sm8150.h
linux-5.11.13/include/dt-bindings/input/linux-event-codes.h
linux-5.11.13/scripts/dtc/include-prefixes/arc
linux-5.11.13/scripts/dtc/include-prefixes/arm
linux-5.11.13/scripts/dtc/include-prefixes/arm64
linux-5.11.13/scripts/dtc/include-prefixes/c6x
linux-5.11.13/scripts/dtc/include-prefixes/dt-bindings
linux-5.11.13/scripts/dtc/include-prefixes/h8300
linux-5.11.13/scripts/dtc/include-prefixes/microblaze
linux-5.11.13/scripts/dtc/include-prefixes/mips
linux-5.11.13/scripts/dtc/include-prefixes/nios2
linux-5.11.13/scripts/dtc/include-prefixes/openrisc
linux-5.11.13/scripts/dtc/include-prefixes/powerpc
linux-5.11.13/scripts/dtc/include-prefixes/sh
linux-5.11.13/scripts/dtc/include-prefixes/xtensa
linux-5.11.13/scripts/dummy-tools/nm
linux-5.11.13/scripts/dummy-tools/objcopy
linux-5.11.13/tools/testing/selftests/powerpc/copyloops/copy_mc_64.S
linux-5.11.13/tools/testing/selftests/powerpc/copyloops/copyuser_64.S
linux-5.11.13/tools/testing/selftests/powerpc/copyloops/copyuser_power7.S
linux-5.11.13/tools/testing/selftests/powerpc/copyloops/memcpy_64.S
linux-5.11.13/tools/testing/selftests/powerpc/copyloops/memcpy_power7.S
linux-5.11.13/tools/testing/selftests/powerpc/nx-gzip/include/vas-api.h
linux-5.11.13/tools/testing/selftests/powerpc/primitives/asm/asm-compat.h
linux-5.11.13/tools/testing/selftests/powerpc/primitives/asm/asm-const.h
linux-5.11.13/tools/testing/selftests/powerpc/primitives/asm/feature-fixups.h
linux-5.11.13/tools/testing/selftests/powerpc/primitives/asm/ppc_asm.h
linux-5.11.13/tools/testing/selftests/powerpc/primitives/word-at-a-time.h
linux-5.11.13/tools/testing/selftests/powerpc/stringloops/memcmp_32.S
linux-5.11.13/tools/testing/selftests/powerpc/stringloops/memcmp_64.S
linux-5.11.13/tools/testing/selftests/powerpc/stringloops/strlen_32.S
linux-5.11.13/tools/testing/selftests/powerpc/vphn/asm/lppaca.h
linux-5.11.13/tools/testing/selftests/powerpc/vphn/vphn.c
EOF

verify 'zad2.sh' "${EXPECTED}"


#
# Zadanie 3
#
read -r -d '' EXPECTED << EOF
71242
EOF

verify 'zad3.sh' "${EXPECTED}"


#
# Zadanie 4
#
read -r -d '' EXPECTED << EOF
457/610
EOF

verify 'zad4.sh' "${EXPECTED}"


#
# Zadanie 5
#
read -r -d '' EXPECTED << EOF
1484
EOF

verify 'zad5.sh' "${EXPECTED}"


#
# Zadanie 6
#
read -r -d '' EXPECTED << EOF
15068
EOF

verify 'zad6.sh' "${EXPECTED}"


#
# Zadanie 7
#
read -r -d '' EXPECTED << EOF
Core.py
SchedGui.py
TdcPlugin.py
TdcResults.py
Util.py
EOF

verify 'zad7.sh' "${EXPECTED}"


#
# Zadanie 8
#
read -r -d '' EXPECTED << EOF
autoconf.h
compress.h
hash.h
help-unknown-cmd.h
hrtimer.h
nmi.h
rwsem.h
EOF

verify 'zad8.sh' "${EXPECTED}"


#
# Zadanie 9
#
read -r -d '' EXPECTED << EOF
1080952 mcdi_pcol.h
1281718 testmgr.h
EOF

verify 'zad9.sh' "${EXPECTED}"


#
# Zadanie 10
#
read -r -d '' EXPECTED << EOF
linux-5.11.13/arch/csky/kernel/irq.c
linux-5.11.13/arch/m68k/kernel/irq.c
linux-5.11.13/arch/nds32/kernel/irq.c
linux-5.11.13/arch/openrisc/kernel/irq.c
linux-5.11.13/arch/riscv/kernel/irq.c
linux-5.11.13/arch/sh/boards/mach-lboxre2/irq.c
linux-5.11.13/arch/sh/boards/mach-sdk7786/irq.c
linux-5.11.13/arch/sh/boards/mach-se/7721/irq.c
linux-5.11.13/arch/sh/boards/mach-se/7751/irq.c
linux-5.11.13/arch/sh/boards/mach-sh7763rdp/irq.c
linux-5.11.13/net/bluetooth/hidp/core.c
linux-5.11.13/net/bluetooth/rfcomm/core.c
linux-5.11.13/tools/lib/perf/core.c
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
