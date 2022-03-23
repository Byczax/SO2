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
# Zadanie 5.
# Na podstawie pliku `dodatkowe/etc-services` określić jakie numery portów
# możemy standardowo skojarzyć z usługą syslog*. Interesują nas same numery
# portów, bez protokołów i bez powtórzeń, każdy wypisany w osobnej linii.
# (* – wyszukać wszystkie linie, rozpoczynające się od słowa 'syslog')
#
grep "syslog" dodatkowe/etc-services | sed 's|.* ||;s|/.*||' | sort -u
