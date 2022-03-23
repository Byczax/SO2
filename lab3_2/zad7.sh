#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 3
#
# Celem zajęć jest pogłębienie wiedzy na temat struktury systemu plików,
# poruszania się po katalogach i kontroli uprawnień w skryptach powłoki.
# Proszę unikać wykorzystywania narzędzia `find` w ramach bieżących zajęć.
#
# Nie przywiązujemy wagi do środowiska roboczego – zakładamy, że jego pliki,
# inne niż te podane wprost w treści zadań, mogą ulec zmianie, a przygotowane
# rozwiązania nadal powinny działać poprawnie (robić to, o czym zadanie mówi).
#
# Wszystkie chwyty dozwolone, ale ostatecznie w wyniku ma powstać tylko to,
# o czym mowa w treści zadania – tworzone samodzielnie ewentualne tymczasowe
# pliki pomocnicze należy usunąć.
#

#
# Zadanie 7.
# Plik `links.txt` z katalogu `dane/` zawiera listę ścieżek. Proszę określić
# które z tych ścieżek to dowiązania do istniejących plików wykonywalnych.
# Jako wynik wyświetlić pasujace wpisy z pliku (ścieżki do dowiązań).
#

while read -r line;do
    path=$(realpath -m "$line")
    if [ -L "$line" ] && [ -x "$path" ];then
        echo "$line"
    fi
done < <(cat dane/links.txt)
