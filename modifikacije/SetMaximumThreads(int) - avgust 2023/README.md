# SetMaximumThreads(int num_of_threads)

* Implementirati sistemski poziv int `getThreadId()` koji dohvata jedinstveni identifikator niti koja se trenutno izvršava. **getThreadId() takođe treba da obavi promenu konteksta.**

Potrebno je proširiti usluge klase Thread tako da zadovoljava sledeće uslove
<br></br>
Dodati statičku metodu `SetMaximumThreads(int num_of_threads)` koju korisnik poziva na početku programa. Ova metoda postavlja ograničenje na maksimalan broj korisničkih niti. Ukoliko korisnik ništa ne unese, podrazumevana vrednost je 5.
Nakon postavljanja maksimalnog broja niti, moguce je kreirati dati broj niti, nakon toga sve novokreirane niti se blokiraju. Kada jedna od kreiranih korisničkih niti završi svoje izvršavanje ona odblokira jednu od prethodno blokiranih niti u redosledu kojem su blokirane.

## Test

Potrebno je staviti maksimalan broj niti na 3 i kreirati 20 niti. Svaka nit treba da ispiše `Thread id=*id*: Hello!` ciklično 5 puta. Nakog toga treba da simulira spavanje semaforom ili busy wait-om koji je u linearnoj korelaciji sa ID-om date niti.

## Implementacija

* Umesto reda za čekanje, mogao je da se iskoristi i semafor.