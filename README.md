# Mikolaj Baczynski - ELF

## Opis projektu 

Projekt dotyczy tematu **ELF - Executable and Linkable Format**. Czesc teoretyczna zostala omowiona na seminarium w formie [video-prezentacji](https://youtu.be/9prNMHos-yQ). Znajdziecie w niej wszystkie potrzebne informacje, by wykonac ponizsze zadania. W seminarium przedstawilem budowe pliku o formacie ELF zwroccie uwage :
* `12:00` - jak wyglada naglowek 
* `15:34` - jak poruszac sie po pliku binarnym, jak znalesc segment/sekcje
* `25:00` - jak podmienic output/zainicjowane zmienne

Do wykonania zadan moze sie przydac narzedzie `ltrace ./plik` ktore analizuje interakcje programu z uzywanymi przez niego bibliotekami dzielonymi (shared libraries).

By uruchomic srodowisko w ktorym sa zadania i potrzebne narzedzia musicie posiadac program `Docker`. Skrypt by uruchomic srodowisko znajduje sie w repo: `./run_baczynski_mikolaj.sh run`.


## Zadanie 1 - Rozgrzewka 
**Cel:** Zaznajomienie sie z edycja/poruszaniem po pliku ELF za pomoca narzedzia hexedit, oraz readelf.

W folderze `/zad1` znajduje sie plik wykonywalny `zad1`. Plik ma bledy w naglowku ELF(pierwsze 16 bajtow).

**a)** Za pomoca narzedzia hexedit, nalezy "naprawic" naglowek, tak by program dalo sie uruchomic. Inormacje o naglowku wyswietlamy `readelf -h`

**b)** Znalezc adres sekcji .rodata za pomoca `readelf -S`. Odnalezc go w pliku `zad1` i podmienic output na swoje imie i nazwisko. 

## Zadanie 2
**Cel:** Praktyczne uzycie narzedzi do analizy/edycji plikow ELF.

Zadanie zaczerpniete zostalo z ksiazki Practcal Binary Analysis, polega na odblokowywaniu poziomow. Klucze ukryte sa w plikach ELF. Do szukania kluczy bedziemy uzywac narzedzi: `ltrace`, `objdump`,`readelf`. Zadanie znajduje sie w `/zad2`. Znalezione klucze podajemy jako argumnet programu `oracle`. Gdy klucz bedzie poprawny pojawi sie plik(nastepny lvl), w ktorym bedziemy szukac kolejnych kluczy. Kazde roziwazanie mozna znalesc na kilka sposobow, roznymi narzedziami

**lvl1:** Uruchom plik `./oracle` z flaga (kluczem) `84b34c124b2ba5ca224af8e33b077e9e`. Nastepne klucze beda takiej samej dlugosci.

**lvl2:** Sprobuj kilka razy uruchomic program `./lvl2`. Zastanow sie jak wypisywane sa liczby. Zobacz jakie funkjce sa wywolywane `ltrace ./lvl2`. Sprobuj znalesc ta funkcje w kodzie assembly `objdump -dj .text lvl2`, a moze poszukac czym jest output.

**lvl3:** Uruchom `./lvl3`. Ten komunikat juz chyba znasz, no to wiesz co zrobic. Jak program uda sie odpalic, zobacz co on robi, deasemblujac sekjce z kodem programu. Sekcja .text jest typu NOBITS, czyli jakby jej nie było(jest niewidoczna),zmien ja na PROBITS(0100 0000). Moze sie przydac jak wyglada struktura opisujaca naglowek sekcji Elf64_Shdr, jest w `man elf 5`

**lvl4:** Ten level jest bardzo prosty, klucz dostajemy prawie odrazu.


## Link do Seminarium 

https://youtu.be/9prNMHos-yQ

## Prezentacja PDF + przyklady

Prezentacja:

https://github.com/Baczyn/ELF---Project/blob/master/Prezentacja_ELF.pdf

Przyklady:

https://github.com/Baczyn/ELF---Project/tree/master/Przyklady

## Środowisko pracy

Labolatoria realizowane sa za pomoca Docker'a. Skrypt `run_baczynski_mikolaj.sh run` uruchamia srodowisko. Są na nim narzedzia: `hexedit`, `gdb`, `binutils`, `ltrace`.

## Bibliografia

 - https://practicalbinaryanalysis.com/
 - http://index-of.es/Varios-2/Learning%20Linux%20Binary%20Analysis.pdf
 - http://man7.org/linux/man-pages/man5/elf.5.html
 - https://pl.wikipedia.org/wiki/Executable_and_Linkable_Format
