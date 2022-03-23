#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 3
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
# Czyszczenie
#
if [ -e "${DIR}" ]; then
    rm -rf "${DIR}"
fi


#
# Podstawowa struktura
#
umask 022
mkdir -p "${DIR}/elements"
mkdir -p "${DIR}/icao"

for str in alfa bravo charlie delta echo foxtrot golf hotel \
           india juliett kilo lima mike november oscar papa; do
    echo "${str}" > "${DIR}/icao/${str}"
done

echo '5423ab1c3e39d01bb1505cd3fc93534c' > "${DIR}/elements/Hydrogen"
echo '6622e97cc64d49da4ce03b3249529815' > "${DIR}/elements/Helium"
echo '742330d6617e449e7bb460e802d50701' > "${DIR}/elements/Lithium"
echo 'd2840cc81bc032bd1141b56687d0f93c' > "${DIR}/elements/Beryllium"
echo '7a7aa30d7ef0b9b8373def0e47b4d945' > "${DIR}/elements/Boron"
echo '6e97a95d0f46bbe52e3c52449e66640a' > "${DIR}/elements/Carbon"
echo '1369f42f43aaf960699497616bd7a479' > "${DIR}/elements/Nitrogen"
echo '9ffff5516d654e4feaf30abdadd5796b' > "${DIR}/elements/Oxygen"
echo 'dd412b24f03f21b85254f47ff8aa33ca' > "${DIR}/elements/Fluorine"
echo '5423c3e39d3fb150ab15cc901bd3534c' > "${DIR}/elements/Sodium"
echo '74236617e4807bb430d602d49ee50701' > "${DIR}/elements/Magnesium"
echo 'd28481bc036811410ccb57d2bd60f93c' > "${DIR}/elements/Aluminium"
echo '7a7ad7ef0be4373da30ef7b9b804d945' > "${DIR}/elements/Silicon"
echo '6e97d0f46b492e3ca9552e6be546640a' > "${DIR}/elements/Phosphorus"
echo '1369f43aaf166994f4297bd96067a479' > "${DIR}/elements/Sulfur"
echo '9fff16d654daeaf3f550adde4fb5796b' > "${DIR}/elements/Chlorine"
echo 'dd414f03f2ff52542b2f48a1b87a33ca' > "${DIR}/elements/Argon"
echo '550ab15cc901423c3e39d3fb1bd3534c' > "${DIR}/elements/Nickel Back"

mkdir "${DIR}/moje dokumenty"
touch "${DIR}/moje dokumenty/passwords"
touch "${DIR}/moje dokumenty/.ukryty"
touch "${DIR}/moje dokumenty/--poufne"
touch "${DIR}/moje dokumenty/zażółć gęślą jaźń"

echo '#!/usr/bin/env bash' > "${DIR}/skrypt.sh"
chmod +x "${DIR}/skrypt.sh"

echo 'Lorem ipsum dolor sit amet enim. Etiam ullamcorper.' > "${DIR}/latin"
echo 'sin² + cos² = 1' > "${DIR}/jedyneczka"
echo '1+2+3+4+... = -1/12' > "${DIR}/szereg"
echo '1-1+1-1+1-1+... = 1/2' > "${DIR}/sumowanie"


#
# Zadanie 1
#
ln -s './elements/Oxygen' "${DIR}/atom"


#
# Zadanie 2, 3, 4 i 6
#
mkdir "${DIR}/pierwiastki"

cp "${DIR}/elements/Boron" "${DIR}/pierwiastki/"
cp "${DIR}/elements/Carbon" "${DIR}/pierwiastki/"
cp "${DIR}/elements/Fluorine" "${DIR}/pierwiastki/"
cp "${DIR}/elements/Phosphorus" "${DIR}/pierwiastki/"
cp "${DIR}/elements/Sulfur" "${DIR}/pierwiastki/"

ln -s "../elements/Hydrogen" "${DIR}/pierwiastki/Hydrogen"
ln -s "./../elements/Lithium" "${DIR}/pierwiastki/Lithium"
ln -s ".././${DIR}/./elements/./Beryllium" "${DIR}/pierwiastki/Beryllium"
ln -s "../elements/Oxygen" "${DIR}/pierwiastki/Oxygen"
ln -s "/../${DIR}/elements/Sodium" "${DIR}/pierwiastki/Sodium"
ln -s "/elements/Magnesium" "${DIR}/pierwiastki/Magnesium"
ln -s "Silicon" "${DIR}/pierwiastki/Silicon"
ln -s "${DIR}/elements/Argon" "${DIR}/pierwiastki/Argon"
ln -s "././.././elements/Nickel Back" "${DIR}/pierwiastki/Nickel Back"

ln -s '/some/./non/../existing/path' "${DIR}/pierwiastki/Chlorine"
ln -s '/etc/hosts' "${DIR}/pierwiastki/Aluminium"


#
# Zadanie 5
#
ln "${DIR}/icao/delta" "${DIR}/twardziel"
ln -f "${DIR}/icao/delta" "${DIR}/icao/golf"
cp "${DIR}/icao/delta" "${DIR}/icao/kilo"


#
# Zadanie 7
#

cat > "${DIR}/links.txt" << 'EOF'
dane/atom
dane/passwords
dane/elements/Oxygen
dane/elements/Sodium
dane/moje dokumenty/cytat
dane/moje dokumenty/loop
dane/moje dokumenty/infinite
dane/pierwiastki/Oxygen
dane/pierwiastki/Silicon
dane/pierwiastki/Sodium
EOF

chmod +x "${DIR}/latin"
chmod +x "${DIR}/elements/Oxygen"
chmod +x "${DIR}/elements/Sodium"


#
# Zadanie 8
#
echo 'sus' > "${DIR}/pierwiastki/Potassium"
echo 'sus' > "${DIR}/pierwiastki/Calcium"
ln "${DIR}/pierwiastki/Calcium" "${DIR}/pierwiastki/Scandium"
ln "${DIR}/pierwiastki/Calcium" "${DIR}/pierwiastki/Titanium"
ln -s "Potassium" "${DIR}/pierwiastki/Vanadium"


#
# Zadanie 9
#
ln -s '../latin' "${DIR}/moje dokumenty/cytat"
ln -s 'szereg' "${DIR}/moje dokumenty/szereg"
ln -s './.././.././../twardziel' "${DIR}/moje dokumenty/twardziel"
ln -s '/icao/mike' "${DIR}/moje dokumenty/alfabet"
ln -s '/icao/juliett' "${DIR}/moje dokumenty/juliett"
ln -s 'Hel' "${DIR}/moje dokumenty/pierwiastek"
ln -s 'infinite' "${DIR}/moje dokumenty/cykl"
ln -s 'loop' "${DIR}/moje dokumenty/infinite"
ln -s 'cykl' "${DIR}/moje dokumenty/loop"
ln -s 'passwds' "${DIR}/passwords"


#
# Zadanie A
#
ln -f "${DIR}/icao/bravo" "${DIR}/icao/foxtrot"
ln -f "${DIR}/icao/bravo" "${DIR}/icao/hotel"
ln -f "${DIR}/icao/bravo" "${DIR}/icao/oscar"
ln -f "${DIR}/icao/india" "${DIR}/icao/juliett"
ln -f "${DIR}/icao/mike" "${DIR}/icao/november"
cp "${DIR}/icao/november" "${DIR}/icao/papa"
