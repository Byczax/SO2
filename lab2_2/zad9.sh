#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 2
#
# Celem zajęć jest nabranie doświadczenia w podstawowej pracy z powłoką Bash,
# w szczególności w nawigowaniu po drzewie katalogów i sprawdzaniu uprawnień.
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
# Zadanie 9.
# Plik `dane/tajne` zawiera wpisy (po jednym w każdej linii), które mogą
# stanowić ścieżki do plików względem katalogu `dane/`. Proszę przetestować
# te wpisy i jako wynik działania skryptu wyświetlić te, które *NIE* wskazują
# żadnych istniejących plików.
#

while read -r line;do
    if ! [ -f dane/"$line" ];then
        echo "$line"
    fi
done < <(cat dane/tajne)

