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
# Zadanie 2.
# Z pliku `dodatkowe/slajdy.tex` wyodrębnić wszystkie potencjalne odnośniki,
# czyli łańcuchy znaków, rozpoczynające się od napisu, określającego protokół,
# za nim ciąg ://, a następnie podnana jest lokalizacja jakiegoś zasobu.
# Warto wiedzieć, iż poprawny odnośnik nie może zawierać niektórych znaków
# specjalnych, takich jak nawiasy klamrowe oraz oczywiście spacje.
# Każdy znaleziony unikalny odnośnik wypisać w nowej linii.
#

grep -o '[^ ]*://[^ ]*' dodatkowe/slajdy.tex | sed 's|\\url{||;s|}||'