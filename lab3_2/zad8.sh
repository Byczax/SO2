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
# Zadanie 8.
# Opracować narzędzie do niby-synchronizacji plików pomiędzy dwoma katalogami
# – `dane/elements/` (L) oraz `dane/pierwiastki/` (P). Każdy plik zwykły
# (pomijamy dowiązania miękkie) powinien mieć swój odpowiednik o tej samej
# nazwie w drugim katalogu (przy czym odpowiednik może być dowolnego typu,
# nie sprawdzamy również jego zawartości). Jako wynik działania skryptu proszę
# zwrócić informację o brakujących plikach w poszczególnych katalogach,
# podając nazwy plików, poprzedzone indeksem L lub P i znakiem dwukropka,
# każdy wpis w osobnej linii (na przykład: L:Oxygen – indeks mówi, w którym
# katalogu powinien znaleźć się dany plik).
#

for file in dane/elements/*;do 
    if [ ! -L "$file" ];then
        base=$(basename "$file")
        other="dane/pierwiastki/$base"
        if [ ! -L "$other" ] && [ ! -e "$other" ];then
            echo "P:$base"
        fi
    fi
done

for file in dane/pierwiastki/*;do
    if [ ! -L "$file" ];then
        base=$(basename "$file")
        other="dane/elements/$base"
        if [ ! -L "$other" ] && [ ! -e "$other" ];then
            echo "L:$base"
        fi
    fi
done