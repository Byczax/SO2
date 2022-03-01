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
# Zadanie 9.
# Znaleźć pliki zwykłe, które mają pomiędzy 1MiB a 10MiB oraz nie zawierają
# żadnych cyfr w nazwie pliku. Jako wynik proszę wyświetlić rozmiary tych
# plików (w Bajtach) i same ich nazwy, każdy plik jako wpis w osobnej linii,
# rozdzielone jedną spacją (<rozmiar> <nazwa>\n).
#
find linux-5.11.13 -size +1M -size -10M \! -name "*[0-9]*" | xargs du --bytes | sed 's|\t.*/| |'
