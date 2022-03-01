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
# Zadanie 2.
# Na podstawie pliku `dodatkowe/etc-passwd`, wypisać nazwy użytkowników
# na których można się potencjalnie zalogować – innymi słowy mają oni wpisane
# coś innego niż `/bin/nologin` i `/bin/false` jako powłokę (ostatnia kolumna
# / wartość w każdym wierszu). Każdą nazwę użytkownika wypisać w osobnej linii.
#
grep -v "/bin/false\|/bin/nologin" dodatkowe/etc-passwd | sed "s|:.*||"

