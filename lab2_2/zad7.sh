#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 2
#
# Celem zajęć jest nabranie doświadczenia w podstawowej pracy z powłoką Bash,
# w szczególności w nawigowaniu po drzewie katalogów i sprawdzaniu uprawnień.
# Proszę unikać wykorzystywania narzędzia `find` w ramach bieżących zajęć.
#
# Nie przywiązujemy wagi do środowiska roboczego – zakładamy, że jego pliki,
# inne niż te podane wprost w treści zadań, mogą ulec zmianie, a przygotowane
# rozwiązania nadal powinny działać poprawnie (robić to, o czym zadanie mówi).
#
# Wszystkie chwyty dozwolone, ale ostatecznie w wyniku ma powstać tylko to,
# o czym mowa w treści zadania – tworzone samodzielnie ewentualne tymczasowe
# pliki pomocnicze należy usunąć.
#

#
# Zadanie 7.
# Odnaleźć plik w katalogu `dane/kontrola/`, którego zawartość pokrywa się
# z wnętrzem pliku `dane/poszukiwany`. Jako wynik, wyświetlić wyłącznie nazwę
# pasującego pliku. Jeśli takiego pliku nie ma, nie wyświetlać zupełnie nic.
# Proszę pamiętać o każdorazowym upewnieniu się, że zawartość pliku możemy
# przeczytać (mamy prawo do odczytu – aby uniknąć błędów).
#
baza=$(<dane/poszukiwany)

for kontrola in dane/kontrola/*;do
    if test -r "$kontrola";then
        text=$(<"$kontrola")
        if [ $text == $baza ];then
            echo "$kontrola" | sed -e 's|.*/||'
        fi
    fi
done
