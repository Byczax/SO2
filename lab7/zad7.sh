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
# Zadanie 7.
# Przeanalizować zawartość pliku `dodatkowe/kant.txt` i wyodrębnić z niego
# możliwe dane kontaktowe – obecne tam adresy e-mail oraz numery telefonów.
# Numery telefonów mogą być rozdzielone pomocniczymi separatorami, dodanymi
# dla czytelności, a także być poprzedzone kodami kraju – należy je wtedy
# także wyodrębnić.
#

# grep -oP "[^ ]*@[^ ]*" dodatkowe/kant.txt | sed 's/[(),:]//g'
# grep -o -E "\+?\d{2,}[\s-]?\d{3,}[\s-]?\d{3,}[\s-]?\d{3,}" dodatkowe/kant.txt
# grep -oP '(\+?(\d\d)?\d\d)?[0-9-\s]{9,}' dodatkowe/kant.txt | sed 's/^\s//'
grep -oP '[^ ]*@[^ ]*|(\+?(\d{2})?\d{2})?[0-9-\s]{9,}' dodatkowe/kant.txt | sed 's/^\s//;s/[(),:]//g'