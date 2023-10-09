# Priority Semaphore

*Tekst nije dostupan pa je napisano u tezama i sa komentarima.*

* Potrebno je napraviti metodu koja će da promeni način funkcionisanja semafora, tako da se gleda prioritet prilikom oslobađanja niti na semaforu

* Prioritet je ID niti, s tim da je manji ID veći prioritet

* Može se izmeniti klasa semafora, ili sama lista 

## Test

Potrebno je napraviti 50 niti sa deljenim semaforom koji ima početnu vrednost 5, niti ciklično (3 puta) ulaze u deljenu sekciju zaštićenu deljenim semaforom koja se simulira uposlenim čekanjem (čekanje srazmerno ID-u niti). Prilikom ulaska i izlaska potrebno je ispisati odgovarajuće poruke za ulaz/izlaz. (test koji je napravljen ima dosta print iskaza kako bi se što bolje shvatio tok kojim niti ulaze/izlaze)
Takođe je potrebno dodadi dispatch unutar deljene sekcije kako bi test mogao da istinski proveri da li je implementacija dobra.