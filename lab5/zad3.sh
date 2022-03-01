#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 5 – semestr letni 2020/2021
#
# Celem zajęć jest nabranie doświadczenia w pracy z mechanizmem łącz
# nienazwanych, wykorzystując przy tym szereg podstawowych narzędzi
# do przetwarzania danych tekstowych.
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
# W pliku `dodatkowe/cezar` znajduje się treść zaszyfrowana szyfrem Cezara
# z kluczem k=3. Proszę odkryć zaszyfrowaną wiadomość, czyli zrealizować
# następujące przekształcenie: a->x, b->y, c->z, d->a, e->b, ..., z->w.
# Wiadomość ogranicza się wyłącznie do małych znaków alfabetu łacińskiego.
# Wyświetlić wyłącznie odszyfrowaną treść, nic poza tym.
#
tr '[a-z]' '[x-za-w]' < dodatkowe/cezar 

