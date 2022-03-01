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
# Zadanie 6.
# Przygotować narzędzie, które będzie naszym własnym wariantem programu `du`.
# Przy pomocy programu `find` odnaleźć wszystkie pliki w katalogu o nazwie
# `coreutils-8.32` i jako wynik zwrócić ich rozmiar w Bajtach. Następnie użyć
# mechanizmu łącz nienazwanych i przy pomocy programu awk, obliczyć całkowity
# rozmiar w Bajtach. Jako wynik zwrócić liczbę w MebiBajtach.
#

find coreutils-8.32 -printf "%s\n" | awk '{sum+=$0};END{print sum/1024^2}' 