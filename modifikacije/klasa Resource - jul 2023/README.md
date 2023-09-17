# Implementacija klase Resource

*Tekst nije dostupan pa je napisano u tezama i sa komentarima.*
<br></br>
* Implementirati dati potpis klase Resource koji glasi:
```
class Resource {
public:
    Resource(int N);
    void take(int num_of_instances);
    int give_back(int num_of_instances);
}
```

* Klasa `Resource` se može proširiti

* Sve radi u korisničkom režimu i **nije** potrebno dodavati sistemske pozive ili menjati postojeće

* Resurs se stvara sa brojem primeraka koji postoje

* Jedna nit može da zatraži num_of_instances primeraka blokirajuće funkcije `take`

* Nit mora da dobije sve primerke od jednom, ukoliko nema dovoljno primeraka nit se blokira

* Nit pozivom `give_back` vraća prosleđeni broj primeraka

* *Bio je dat format u kome treba da se ispiše kada nit uzme resurse, kada vrati i slično. Ovde je to proizvoljan format.*

## Test

* *Bio je dat konkretan test koji treba napisati, ali nije poznat. Napisan je test koji je dole prokomentarisan.*

## Implementacija

* Sve radi u korisničkom režimu i **nije** potrebno dodavati sistemske pozive ili menjati postojeće

Ova teza je ignorisana i dodati su sistemski pozivi. Razlog je to što je klasa `Resource` korisnička klasa, i nije dozvoljeno da ona ima mogućnost pristupu `TCB` klasi, njenim metodama, statičkim poljima i slično. Klasa `TCB` je deo "kernel koda", i kao takva ne sme se joj se direktno pristupati iz "korisničke" klase. Ovaj pristup `TCB` klasi je napravljen kako bi se proverilo koliko konkrenta nit zapravo ima primeraka resursa kod sebe, pa se ne dozvoljava da vrati više nego što je zapravo uzela.
<br></br>
Ova provera je mogla da se napravi tako što se čuva struktura u klasi `Resource` koja vodi računa o tome, i onda sistemski pozivi nisu potrebni.
<br></br>
Naravno, u implementaciji metoda klase `Resource` je moguće napisati direktan pristup metodama `TCB` klase, ali nije poznato da li je to bilo dozvoljeno, da li je uopšte bilo neophodno da se vrši ovakva vrsta provere, da li su "pravili problem" ukoliko se pristupa direktno i slično. Taj deo je napisan više da bi se provežbalo i objasnio princip pristupa klasi `TCB`.

### Polja klase `Resource`

Klasi su dodata dva semafora, `mutex` i `sem`. Semafor `mutex` štiti celokupno metode `take` i `give_back` tako da se samo jedna nit može naći unutar neke od ovih metoda i izvršava njihov kod. Ovaj semafor je nepotreban jer se ne može dogoditi kod sinhrone promene ništa "neprevidivo", nema asinhrone promene konteksta i neće se dogoditi neregularna situacija, pa u tom slučaju on nije neophodan.
<br></br>
Semafor `sem` je semafor na kome niti čekaju ukoliko nije dostupno dovoljno primeraka resursa koje nit traži. Ovaj semafor, kao i naš red spremnih niti u klasi `Scheduler` radi na principu FIFO, pa se ta činjenica koristi da bi se izbeglo izgladnjivanje neke niti. 
<br></br>
Naime, kada se nit blokira na semaforu `sem`, ona će biti prva u semaforskom redu. Ukoliko se nađe više niti koje čekaju, one će tim redom kako su pristizale i da budu smeštene u semaforu. Ideja metode `give_back` jeste da vrati primerke i da probudi sve koji su čekali na semaforu, tim redom kojim su i zahtevali primerke. Niti se tada tim redom i smeštaju u red spremnih, pa će nit koja je čekala na resurse prva, prva i izvršiti ponovnu proveru da li sada može da uzme zahtevane resurse.
<br></br>
"Problem" koji ovde nastaje jeste da kada nit vrati primerke, ukoliko ima dovoljno primeraka za prvu nit koja je čekala na njih, ona se smešta u red spremnih gde je moguće da postoje druge niti pre nje u redu spremnih koje će uzeti primerke i onda ponovo neće biti dovoljno za nit koja je čekala na njih. Time je održan FIFO redosled ali samo kod niti koje su se blokirale jer nije bilo dovoljno primeraka, pa se može shvatiti kao neka vrsta "izgladnjivanja". *Nije poznato da li su tražili da se niti koje su čekale odmah odblokiraju i prve provere da li ima dovoljno primeraka, ili je bilo dovoljno da se samo stave u red spremnih.*