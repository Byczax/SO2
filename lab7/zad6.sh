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
# Zadanie 6.
# Z pliku `dodatkowe/slajdy.tex` wyodrębnić ścieżki do obrazów (czyli argument
# komendy \includegraphics – napis pomiędzy nawiasami klamrowymi {}), które
# zostaną wyświetlone w ramce (komenda \fbox; dla uproszczenia zakładamy,
# że jeśli już występuje, to zawsze w tej samej linii co \includegraphics).
# Proszę zwrócić uwagę, iż komendy w LaTeXu mogą przyjmować dodatkowe opcje,
# położone pomiędzy nazwą komendy a jej argumentami, zapisane wtedy wewnątrz
# nawiasów kwadartowych [].
# Jako wynik zwrócić same unikalne ścieżki, każdą w nowej linii.
#
grep "\fbox{" dodatkowe/slajdy.tex | awk '{split($0,tab,"{");print tab[3]}' | sed 's/}//g'
