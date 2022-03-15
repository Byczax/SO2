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
# Zadanie 10.
# Proszę opracować uproszczony konwerter plików z formatu JSON do formatu XML
# i przetworzyć nim plik `dodatkowe/simple.json`. Zakładamy, że wejście stanowi
# zawsze pojedyncza linia, klucze i wartości to proste łańcuchy znaków, złożone
# z liter lub cyfr, pomiędzy cudzysłowami, które są rozdzielone jednym znakiem
# dwukropka i co najmniej jedną spacją, a całe pary klucz-wartość są oddzielone
# od siebie jednym przecinkiem i co najmniej jedną spacją.
#
# Przykład przetworzenia: {"klucz": "wartość"} -> <klucz>wartość</klucz>.
#
# Proszę obsłużyć tworzenie samodomykającego się znacznika (<klucz />), kiedy
# wartość stanowi pusty łańcuch "", a także proszę obsłużyć zagnieżdżenie
# kolejnego zbioru kluczy i wartości.
#

# THA MONSTER
sed -r 's#\{(.*)}#\1#;s#"(\w+)":\s+\{([^}]*)\}#<\1>\2</\1>#;s#"(\w+)":\s+""#<\1 />#g;s#"(\w+)":\s+"([^"]*)"#<\1>\2</\1>#g;s#,\s*##g' dodatkowe/simple.json


if false;then

sed -r 's_\{(.*)}_\1_;' dodatkowe/simple.json | # remove curly braces on start and end
sed -r 's_"(\w+)":\s+\{([^}]*)\}_<\1>\2</\1>_' | # get first "deepnes" of THA tags
sed -r 's_"(\w+)":\s+""_<\1 />_g' | # yu got emptines from your hearth
sed -r 's_"(\w+)":\s+"([^"]*)"_<\1>\2</\1>_g' | #yHUhUHu got'em this TAGS
sed 's_,\s*__g' # pay for cleaning

fi

# awk '{
#     # start="";
#     # end="";
#     gsub(/[{}]/,"",$0);
#     for(i=1;i<NF;i++){
#         if($i ~ /"[^ ]*":/){
#             tag = $i;
#             gsub(/[:"]/,"",tag);
#             # tag = "<"tag">";
#             print tag;

#             start=start"<"tag;
#             print start;
#             # print $i;
#             j = i+1;
#             if($j ~ /""/){
#                 # print "\t"$j;
#                 start=start" />";
#             }
#             else {
#                 start=start">";
#                 end = tag + ">" + end;
#             }
#         }
#     }
#     # print $start
#     }' dodatkowe/simple.json