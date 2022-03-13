#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 7 – semestr letni 2020/2021
#
# Celem zajęć jest zapoznanie się z wyrażeniami regularnymi, wykorzystując
# przy tym narzędzia awk i grep oraz wszystkie inne, poznane na zajęciach.
#
# Tradycyjnie nie przywiązujemy zbyt dużej wagi do środowiska roboczego.
# Zakładamy, że format i układ danych w podanych plikach nie ulega zmianie,
# ale same wartości, inne niż podane wprost w treści zadań, mogą ulec zmianie,
# a przygotowane zadania wciąż powinny działać poprawnie (robić to, co trzeba).
#
# Wszystkie chwyty dozwolone, ale w wyniku ma powstać tylko to, o czym jest
# mowa w treści zadania – nie generujemy żadnych dodatkowych plików pośrednich.
#

#
# Zadanie 4.
# Określić jaką cześć pliku `dodatkowe/slajdy.tex`, spośród wszystkich linii,
# stanowią linie z istotną treścią – czyli po prostu niepuste. Jako puste
# traktujemy również linie, których jedyną zawartością są białe znaki.
# Wynik wyświetlić jako ułamek w postaci X/Y.
#
grep -E '\S+' -c dodatkowe/slajdy.tex | tr '\n' '/'
wc -l < dodatkowe/slajdy.tex