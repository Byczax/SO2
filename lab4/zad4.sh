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
# Zadanie 4.
# Odszukać wykonywalne pliki zwykłe i policzyć ile ich jest. Następnie policzyć
# ile jest wykonywalnych skryptów powłoki pośród nich (plików z rozszerzeniem
# .sh na końcu nazwy). Jako wynik zwrócić ułamek w postaci X/Y i nic więcej.
#
executables=$(find linux-5.11.13 -type f -executable | wc -l)
bash=$(find linux-5.11.13 -type f -name "*.sh" -executable | wc -l)
 
echo $bash/$executables 
