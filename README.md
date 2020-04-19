# Mikolaj Baczynski  ELF

## Zadanie 1 - Rozgrzewka 
Celem zadania jest zaznajomienie sie z edycja/poruszaniem po pliku ELF za pomoca narzedzia hexedit, oraz readelf.
W folderze `/zad1` znajduje sie plik wykonywalny `zad1.a`. Plik ma bledy w naglowku ELF(pierwsze 16 bajtow).
a) Za pomoca narzedzia hexedit, nalezy "naprawic" naglowek, tak by program dalo sie uruchomic. Inormacje o naglowku wyswietlamy `readelf -h`
b) Znalezc adres sekcji .rodata za pomoca `readelf -S`. Odnalezc go w pliku `zad1` i podmienic output na swoje imie i nazwisko. 