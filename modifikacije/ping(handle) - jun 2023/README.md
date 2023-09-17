# ping(thread_t handle)

* Implementirati sistemski poziv `ping(thread_t handle)` koji jedna nit treba da izvrši nad drugom (ili nad sobom) i kada prvi put ta nit koja je pingovana izgubi kernel, ispisuje se u konzoli koliko je blokova ta nit alocirala pre nego što je izgubila kontekst.
  *Dodato je da se ispisuje i vreme koje je nit radila.*

## Test

* Tri niti, A, B i C, ispisuju broj iteracije od 0 do 10, gde nit C kada stigne do 5. iteracije, pinguje nit A.
