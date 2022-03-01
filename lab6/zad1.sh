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
# Zadanie 1.
# Korzystając z programu awk, proszę wyświetlić co trzecią linię z pliku
# `dodatkowe/tadeusz.txt`, rozpoczynając od linii numer 2 – czyli wypisać
# linie 2, 5, 8, 11, itd.
#
# Podany plik zawiera początek naszej epopei narodowej
# (źródło: https://wolnelektury.pl/media/book/txt/pan-tadeusz.txt).
#

awk '(NR % 3)-2 == 0' dodatkowe/tadeusz.txt