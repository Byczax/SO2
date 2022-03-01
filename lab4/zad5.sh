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
# Zadanie 5.
# Policzyć ile jest plików źródłowych języka C (czyli mających rozszerzenie .c
# na końcu pełnej nazwy), których sama nazwa (pomijając rozszerzenie) zawiera
# dokładnie 3 dowolne znaki (czyli cała nazwa pliku ma dokładnie pięć znaków).
# Jako wynik zwrócić tylko i wyłącznie liczbę plików.
#
find -type f -name "*.c" | grep -P '/.....$' | wc -l

#find -type f -name "???.c" | wc -l <- better?

