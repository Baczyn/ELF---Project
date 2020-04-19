# Mikolaj Baczynski  ELF

## Zadanie 1 - Rozgrzewka 
**Cel:** Zaznajomienie sie z edycja/poruszaniem po pliku ELF za pomoca narzedzia hexedit, oraz readelf.

W folderze `/zad1` znajduje sie plik wykonywalny `zad1.out`. Plik ma bledy w naglowku ELF(pierwsze 16 bajtow).

**a)** Za pomoca narzedzia hexedit, nalezy "naprawic" naglowek, tak by program dalo sie uruchomic. Inormacje o naglowku wyswietlamy `readelf -h`

**b)** Znalezc adres sekcji .rodata za pomoca `readelf -S`. Odnalezc go w pliku `zad1.out` i podmienic output na swoje imie i nazwisko. 

## Zadanie 2
**Cel:** Praktyczne uzycie narzedzi do analizy/edycji plikow ELF.

Zadanie zaczerpniete zostalo z ksiazki Practcal Binary Analysis, polega na odblokowywaniu poziomow. Klucze ukryte sa w plikach ELF. Do szukania kluczy bedziemy uzywac narzedzi: `ltrace`, `objdump`,`readelf`. Zadanie znajduje sie w `/zad2`. Znalezione klucze podajemy jako argumnet programu `oracle`. Gdy klucz bedzie poprawny pojawi sie plik(nastepny lvl), w ktorym bedziemy szukac kolejnych kluczy. Kazde roziwazanie mozna znalesc na kilka sposobow, roznymi narzedziami

**lvl1:** Uruchom plik `./oracle` z flaga (kluczem) `84b34c124b2ba5ca224af8e33b077e9e`. Nastepne klucze beda takiej samej dlugosci.

**lvl2:** Sprobuj kilka razy uruchomic program `./lvl2`. Zastanow sie jak wypisywane sa liczby. Zobacz jakie funkjce sa wywolywane `ltrace ./lvl2`. Sprobuj znalesc ta funkcje w kodzie assembly `objdump -dj .text lvl2`, a moze poszukac czym jest output.

**lvl3:** Uruchom `./lvl3`. Ten komunikat juz chyba znasz, no to wiesz co zrobic. Jak program uda sie odpalic, zobacz co on robi, deasemblujac sekjce z kodem programu. Sekcja .text jest typu NOBITS, czyli jakby jej nie było(jest niewidoczna),zmien ja na PROBITS(0100 0000). Moze sie przydac jak wyglada struktura opisujaca naglowek sekcji Elf64_Shdr, jest w `man elf 5`

**lvl4:** Ten level jest bardzo prosty, klucz dostajemy prawie odrazu.

**lvl5:** 

## Link do Seminarium 

https://youtu.be/9prNMHos-yQ

## Prezentacja PDF