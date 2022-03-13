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
# Zadanie 3.
# Przeczytać zawartość pliku `dodatkowe/cpplint.txt` i usunąć z niego wszystkie
# znaczniki języka HTML – czyli ciągi znaków, rozpoczynające się od znaku <,
# aż do najbliższego znaku >. Jako wynik zwrócić pozostałą zawartość,
# pomijajac linie puste i takie, których jedyną zawartość stanowią spacje.
#
sed -r 's|<[^>]*>||g;s/^\s+$//;/^$/d' dodatkowe/cpplint.txt

# -r - extended regex
# 1st - remove all braces with content
# 2nd - remove white characters in empty lines
# 3rd - remove empty lines
