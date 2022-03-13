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
# Zadanie 5.
# Odnaleźć w pliku `dodatkowe/service.py` nazwy zdefiniowanych funkcji i metod.
# Definicja rozpoczyna się od słowa kluczowego `def`, po którym następuje
# co najmniej jedna spacja, a następnie podana jest nazwa, złożona z małych
# liter i znaków podkreślenia. Za nazwą ewentualnie może wystąpić dowolna
# liczba spacji, a później pojawia się nawias otwierający i lista argumentów.
# Zwrócić same unikalne nazwy, bez nawiasów, każdą nazwę w nowej linii.
#
grep -o -P "(def ).*(\()" dodatkowe/service.py | sed 's/def //;s/(//' | sed -r 's/\s+//g' | sort -u
