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
# Zadanie 5.
# Plik `dodatkowe/nowomowa.txt` zawiera przykładowy tekst z generatora
# http://lipsum.pl/, pozbawiony polskich znaków (dla ułatwienia pracy).
# Proszę przygotować własną wariację narzędzia `wc`, czyli zliczyć
# przy pomocy programu awk ile jest znaków, słów i linii w podanym pliku
# wejściowym. Każdą wartość (tylko liczby!) wpisać w nowej linii.
# Uwaga! Proszę pamiętać o uwzględnieniu znaków końca linii w obliczeniach
# dotyczących liczby znaków!
#

awk '{lines++};{chars+=length($0)+1};{words+=NF};END{print(chars"\n"words"\n"lines)}' dodatkowe/nowomowa.txt