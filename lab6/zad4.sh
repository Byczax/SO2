#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 6 – semestr letni 2020/2021
#
# Celem zajęć jest zapoznanie się z możliwościami narzędzia awk.
#
# Tradycyjnie nie przywiązujemy zbyt dużej wagi do środowiska roboczego.
# Zakładamy, że format i układ danych w podanych plikach nie ulega zmianie,
# ale same wartości, inne niż podane wprost w treści zadań, mogą ulec zmianie,
# a przygotowane zadania wciąż powinny działać poprawnie (robić to, co trzeba).
#
# Wszystkie chwyty dozwolone, ale w wyniku ma powstać tylko to, o czym jest
# mowa w treści zadania – nie generujemy żadnych dodatkowych plików pośrednich.
# Większość rozwiązań powinno sprowadzić się do jednego, zmyślnego wywołania
# programu `awk` z odpowiednimi argumentami.
# 
#

#
# Zadanie 4.
# Przeanalizować zawartość pliku `dodatkowe/ps-aux` i zliczyć sumaryczną
# procentowe użycie procesora oraz zajętość pamięci RAM. Odpowiednie dane
# znajdują się w trzeciej i czwartej kolumnie w pliku. Pamiętać o pominięciu
# nagłówka (pierwsza linia w pliku). Jako wynik zwrócić dwa napisy w osobnych
# liniach, a wartości liczbowe poprzedzić etykietą "CPU:" bądź "RAM:".
#

awk 'NR!=1{cpu+=$3;ram+=$4}; END{print "CPU: "cpu"\n" "RAM: "ram}' dodatkowe/ps-aux