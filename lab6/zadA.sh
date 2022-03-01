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
# Zadanie 10.
# Napis pozostawiony markerem w toalecie głosił: „dokument tajemnic został
# otwarty – strzeżcie się wrogowie dziedzica”. Uratuj świat, używając programu
# awk jako swojego zaklęcia Patronusa i przetwarzając zawartość dokumentu
# `dodatkowe/doc-tajemnic.txt` (źródło: http://tinyurl.com/doc-tajemnic).
#
# Proszę oszacować objętość zadań zgłoszonych dla każdego prowadzącego,
# rozmianą jako liczbę istotnych znaków (dla uproszczenia pomijamy znaki
# nowych linii) w wierszach pomiędzy wpisami określajacymi prowadzących.
# Przyjmujemy, że określenie prowadzącego następuje po znaku dwukropka
# w linii zawierającej frazę "Prowadzący:" oraz nie zastanawiamy się nad
# sensem tych określeć – czyli wpisy "Jarosław Rudy" i "Doktor Jarosław Rudy"
# traktujemy jako dwie różne osoby. Jako wynik działania programu proszę
# zwrócić liczby znaków i nazwy prowadzących – każda taka para w osobnej linii.
#
# Uwaga! Jeden prowadzący ma dodatkową spację na końcu linii określającej go
# i według przyjętej reguły – traktujemy ten wpis jak osobną osobę!
#

awk '
    {
        if($1 == "Prowadzący:"){
            $1="";
            gsub(/^[ \t]+/,"");
            prowadzacy=$0;
            next;
        }
        if (prowadzacy != ""){
            gsub(/\n/,"",$0);
            tab[prowadzacy] += length($0)
            print NR " " length($0)
            }
    }
    END {
        for (element in tab){
            # print tab[element]  "  " element
        }
    }' dodatkowe/doc-tajemnic.txt