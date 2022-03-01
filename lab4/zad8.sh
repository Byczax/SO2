#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 4 – semestr letni 2020/2021
#
# Celem zajęć jest nabranie doświadczenia w pracy z programem `find`,
# wykorzystując przy tym wiedzę na temat struktury systemu plików itd.
# Większość rozwiązań powinno sprowadzić się do jednego, zmyślnego
# wywołania programu `find` z odpowiednimi argumentami.
#
# Nie przywiązujemy wagi do środowiska roboczego – zakładamy, że jego pliki,
# inne niż te podane wprost w treści zadań, mogą ulec zmianie, a przygotowane
# rozwiązania nadal powinny działać poprawnie.
#
# Wszystkie chwyty dozwolone, ale ostatecznie w wyniku ma powstać tylko to,
# o czym mowa w treści zadania – tworzone samodzielnie ewentualne tymczasowe
# pliki pomocnicze należy usunąć.
#
# Punkt startowy powinien stanowić katalog ze źródłami: linux-5.11.13/
#

#
# Zadanie 8.
# Odnaleźć wszystkie puste pliki nagłówkowe języka C (rozszerzenie .h na końcu
# nazwy pliku), ale niezawierające się w katalogu `testing` ani żadnych jego
# podkatalogach. Jako wynik proszę wyświetlić same nazwy pasujących plików
# (każda nazwa w nowej linii).
#
find linux-5.11.13 -type f , -path "*testing*" -prune , -name "*.h" -size 0 | sed 's|.*/||'
