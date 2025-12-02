//LTeX: language=it
#import "pkg-preamble.typ": *

= Disomogeneità nell'universo
Fin'ora abbiamo trattato l'universo come omogeneo e questa approssimazione ci ha portato a dei buoni risultati, con predizioni teoriche che sono state verificate sperimentalmente.
Tuttavia per poter comprendere le strutture a larga scala dell'universo è necessario considerare delle disomogeneità.\
Dato che l'approssimazione omogenea è all'ordine zero corretta, possiamo procedere allo studio delle approssimazioni con la teoria perturbativa.

== Teoria perturbativa Newtoniana
Prima di iniziare fissiamo la notazione e ripassiamo alcuni concetti: indichiamo con $va(x)$ le coordinate comoventi e con $va(r)$ le coordinate fisiche, con $va(r) = a va(x)$.\
Quando facciamo derivate (gradienti e divergenze) se non viene riportato nessun pedice viene sottinteso che la derivazione è rispetto alle coordinate comoventi ($grad_x$), altrimenti verranno scritte come $grad_r$, e vale la relazione $grad_r = 1/a grad_x$.\
Ricordiamo infine che la velocità del fluido è data da
#aeq[$ va(u) = dot(va(r)) = dot(a) va(x) + va(v) = H va(r) + va(v) $]
con $H = dot(a)/a$ il fattore di Hubble e $va(v) = a dot(va(x))$ le velocità peculiari (che anch'esse sono non omogenee al primo ordine).

Possiamo ora iniziare facendo uno studio analogo a quello che abbiamo fatto all'inizio del corso, passando dalla trattazione fluidodinamica dell'universo.\
In questo caso però le nostre quantità (densità $rho$, pressione $p$ e potenziale gravitazionale $psi$) saranno scritte come la somma del loro valore medio più una perturbazione
$
rho (t, va(x)) &= overline(rho) (t) + delta rho (t, va(x))\
p (t, va(x)) &= overline(p) (t) + delta p (t, va(x))\
psi (t, va(x)) &= overline(psi) (t, va(x)) + delta psi (t, va(x))
$
dove notiamo che per il potenziale gravitazionale anche l'ordine zero dipenderà dalla posizione (altrimenti nell'equazione di Poisson il laplaciano sarebbe identicamente nullo).\
Guardiamo per prima l'equazione di Poisson
$ laplacian psi = 4 pi G a^2 rho $
#aeq[$ laplacian (cancel(overline(psi)) + delta psi) = 4 pi G a^2 (cancel(overline(rho)) + delta rho) $]
dove abbiamo cancellato i termini medi sfruttando il fatto che la relazione vale anche per il solo ordine zero
$ heq(laplacian delta psi = 4 pi G a^2 delta rho) $
Passiamo all'equazione di continuità
$ dot(rho)_m = -rho_m/a div va(u) $
#aeq[$ dv(,t) (overline(rho)_m + delta rho_m) = -(overline(rho)_m + delta rho_m)/a div (dot(a) va(x) + va(v)) $]
#aeq[$ cancel(dot(overline(rho)_m)) + dot(delta rho_m) = cancel(-overline(rho)_m dot(a)/a div va(x)) - delta rho_m dot(a)/a underbracket(div va(x), 3) -overline(rho)_m 1/a div va(v) -1/a underbracket(rho_m div va(v), Order(2))$]
$ heq( dot(delta rho_m) - 3 H delta rho_m = -overline(rho)_m 1/a div va(v) ) $
Questa equazione è corretta, tuttavia può essere scritta in un modo più utile introducendo una nuova quantità
#definizione[
  Si definisce *density contrast* $delta$ la quantità
  $ heq( delta(t, va(x)) = (rho (t, va(x)) - overline(rho)(t))/(overline(rho)(t)) ) quad = (delta rho(va(x), t))/(overline(rho)(t)) $
  Questa potrà assumere valori nell'intervallo $[-1, + infinity)$, poiché $rho$ non può essere negativa.
  Per poter applicare la teoria perturbativa è necessario che sia molto prossima a 0.
]
È necessario inoltre riscrivere la pressione in funzione della densità.
Ricordiamo che per fluidi barotropici avevamo
$ overline(p) = w overline(rho) = pdv(overline(p), overline(rho)) overline(rho) $
Possiamo estendere questa relazione:
$ heq( p = rho pdv(p, rho) = (overline(rho) + delta rho) pdv(,rho) [overline(p) + delta p] = w overline(rho) + c_s^2 delta rho ) $
dove $c_s$ è la velocità del suono
$ c_s = sqrt(pdv(p, rho)) $
Riprendendo l'equazione di continuità da cui siamo partiti
#aeq[$ dot(rho) = - rho/a div va(u) $]
#aeq[$ dv(,t)[(1 + delta) overline(rho)] = - ((1+delta) overline(rho))/a [div (dot(a) va(x) + va(v))] $]
#aeq[$ cancel((1 + delta) dot(overline(rho))) + dot(delta) thin overline(rho) = cancel(- 3 H (1+delta) overline(rho)) - 1/a overline(rho)(div va(v)) $]
$ heq( dot(delta) = - 1/a div va(v) ) $<eq:cont_contrast>

Passiamo infine all'equazione di Eulero
$ rho dot(va(u)) = - 1/a grad p - rho/a grad psi $
#aeq[$ (1+ delta) overline(rho) dv(,t) [dot(a) va(x) + va(v)] = - 1/a grad (w overline(rho) + c_s^2  delta rho) - ((1 + delta) overline(rho))/a grad (overline(psi) + delta psi) $]
#aeq[$ (1+ delta) cancel(overline(rho)) [dot.double(a) va(x) + H va(v) + dot(va(v))] = - (c_s^2 cancel(overline(rho)))/a grad delta - ((1 + delta) cancel(overline(rho)))/a grad (overline(psi) + delta psi) $]
Vogliamo ricollegarci all'equazione di Poisson, quindi prendiamo la divergenza
#aeq[$ div {(1+ delta) [dot.double(a) va(x) + H va(v) + dot(va(v))]} = - c_s^2/a laplacian delta - div {(1 + delta)/a grad (overline(psi) + delta psi)} $]
Ora possiamo notare che i termini $(1 + delta)$ stano moltiplicando termini già del primo ordine, qundi possiamo trascurare $delta$
#aeq[$ div [dot.double(a) va(x) + H va(v) + dot(va(v))] = - c_s^2/a laplacian delta - 1/a laplacian (overline(psi) + delta psi) $]
#aeq[$ cancel(3 dot.double(a)) + H div va(v) + div dot(va(v)) = - c_s^2/a laplacian delta cancel(- 4 pi G overline(rho)/a) - 1/a laplacian delta psi $]
dove abbiamo cancellato i due termini usando l'equazione di Friedmann per le quantità medie
$ heq(div dot(va(v)) + H div va(v) = - c_s^2/a laplacian delta - 1/a laplacian delta psi) $
Questa equazione vorremmo però riscriverla in funzione unicamente di $delta$ invece che di $va(v)$.
Per fare ciò basta sfruttare l'@eq:cont_contrast. Derivandola per il tempo ottengo
$ dot.double(delta) = - H/a div va(v) - 1/a div dot(va(v)) $
Sostituendo sopra
#aeq[$ - a dot.double(delta) + 2 H div va(v) = - c_s^2/a laplacian delta - 1/a laplacian delta psi $]
#aeq[$ dot.double(delta) + 2 H dot(delta) =  c_s^2 laplacian delta + laplacian delta psi $]
$ heq(dot.double(delta) + 2 H dot(delta) - c_s^2 laplacian delta - 4 pi G sum_i delta_i overline(rho)_i = 0) $
Nell'ultimo passaggio abbiamo sostituito l'equazione di Possion, ma abbiamo messo la sommatoria per sottolineare che l'interazione gravitazionale arriva da tutte le componenti insieme.
Quindi se volessimo studiare l'evoluzione delle disomogeneità di una singola specie, nel contributo gravitazionale dovremmo mettercele tutte.
Separando per specie avremo un sistema di equazioni accoppiate, dove il termine di accoppiamento deriva proprio da quella sommatoria.

== Evoluzione delle perturbazioni
Vogliamo ora andare a studiare la funzione che abbiamo appena ottenuto, per sapere come evolvono le perturbazioni.
Tuttavia è più comodo lavorare nello spazio di Fourier, in questo modo metteremo in relazione l'evoluzione a $va(k)$ che è legata alla scala della perturbazione.\
Come notazione useremo $delta$ sia per la funzione nello spazio delle $x$ che in quello delle $k$ (le si distingue vedendo quali variabili compaiono nell'equazione)
$
delta (va(k), t) = integral dd(x,3) delta (va(x), t) e^(-i va(k) dot va(x)) wide delta (va(x), t) = integral dd(x,3)/(2 pi)^3 delta (va(k), t) e^(+i va(k) dot va(x))
$
Trasformando l'equazione otteniamo
$ heq(dot.double(delta) + 2 H dot(delta) + c_s^2 k^2 delta - 4 pi G sum_i delta_i overline(rho)_i = 0) $
Questa equazione è valida per tutte le specie.
Noi ora la studieremo per perturbazioni di materia, ma il risultato per la radiazione sarà del tutto analogo.\
#let pie_pert_lam = [Esistono nuove teorie che considerano perturbazioni anche sulla costante cosmologica, ma sono ancora poco accreditate e molto complicate, dunque non le studieremo]
Per quanto riguarda i termini nella sommatoria avremo solo radiazione e materia, poiché $Lambda$ essendo costante non ha perturbazioni#footnote(pie_pert_lam).
$ dot.double(delta)_m + 2 H dot(delta)_m + (c_s^2 k^2 - 4 pi G overline(rho)_m) delta_m  = 4 pi G overline(rho)_r delta_r $
Questa è l'espressione di un oscillatore armonico smorzato con forzante.\
La soluzione completa è difficile da ottenere, e non ne vale la pena in una trattazione Newtoniana che poi andrà rivista.
Quindi la studieremo solo in alcuni casi particolari.

=== Universo statico
Il primo caso che consideriamo è un universo senza espansione ($H = 0$).\
In questo caso le densità medie non variano nel tempo e se c'è una componente dominante, questa continuerà a dominare per sempre
/ Caso radiation-dominated: #[\
  Avremo $overline(rho)_r >> overline(rho)_m$ quindi possiamo trascurare $delta_m overline(rho)_m$
  $ dot.double(delta)_m + c_s^2 k^2 delta_m = 4 pi G overline(rho)_r delta_r $
  Questa è l'equazione di un oscillatore armonico con forzante.
  #let pie_laplace = [Un modo forse più formale consiste nel trasformare con Laplace rispetto al tempo.
    In questo modo l'approssimazione della mediazione su lunghi tempi delle oscillazioni della radiazione corrisponde a dire che nello spazio delle $omega$ le $delta_r$ tendono a 0 per alte pulsazioni.]
  La forzante $prop overline(rho)_r delta_r$ in linea di principio è variabile nel tempo e rispetta un'equazione differenziale analoga (effettivamente si ottiene che segue un oscillatore armonico semplice), tuttavia possiamo mediare su tempi abbastanza lunghi e rendere quel termine costante#footnote(pie_laplace).
  Dunque ottenamo oscillazioni con pulsazione $omega = c_s k$ attorno ad un valore $4 pi G overline(rho)_r delta_r$.
]
/ Caso matter-dominated: #[\
  Abbiamo $overline(rho)_r << overline(rho)_m$ quindi possiamo trascurare $delta_r overline(rho)_r$
  $ dot.double(delta)_m + (c_s^2 k^2 - 4 pi G overline(rho)_m) delta_m = 0 $
  Abbiamo un oscillatore armonico semplice con
  $ omega^2 = c_s^2 k^2 - 4 pi G overline(rho)_m $
  Notiamo che questo valore può diventare negativo, rendendo la pulsazione immaginaria e quindi l'oscillazione instabile.
  Ciò avviene se la $k$ scende sotto il valore
  $ k < sqrt(4 pi G overline(rho)_m)/c_s $
  Si definisce dunque la *lunghezza d'onda di Jeans*
  $ heq(lambda_J = (2 pi)/k = c_s sqrt(pi/(G overline(rho)_m))) $
  Sotto questa lunghezza scala si hanno oscillazioni stabili con pulsazione determinata dalla velocità del suono nel plasma.\
  Sopra questa lunghezza scala si ha un collasso esponenziale (analogo all'instabilità di Jeans trattata nei corsi di Astrofisica).
]

=== Universo in espansione
Passiamo ora alla versione più completa con $H > 0$.
Anche in questo caso tratteremo solo le epoche di dominazione di una sola specie.
Vedremo che in tutti i risultati avremo una combinazione di due soluzioni entrambe instabili, una detta *decaying mode* e una detta *growing mode*
/ Caso radiation-dominated: #[\
  $ dot.double(delta)_m + 2 H dot(delta)_m + c_s^2 k^2 delta_m approx 0 $
  dove abbiamo messo il termine noto a zero mediando su tempi sufficientemente lunghi (in realtà darebbe un valore costante non nullo che però traslerebbe solo la soluzione).\
  Possiamo poi sfruttare l'approssimazione di plasma non compresso secondo cui $c_s^2 approx w$ che per la materia è 0.
  $ dot.double(delta)_m + 2 H dot(delta)_m = 0 $
  Questa è un'equazione differenziale di secondo ordine a coefficienti non costanti.
  Le due soluzioni sono
  $
    cases(delta_m = "cost", a^2 dot(delta)_m = "cost")
  $
  dove la seconda è stata ottenuta notando che l'equazione può essere riscritta come
  #aeq[$ a^(-2) dv(,t)[a^2 dot(delta)_m] = 0 $]
  La seconda va ancora risolta separando le variabili $dd(delta_m) prop a^(-2) dd(t)$.
  Ma ricordiamo che in un universo radiation-dominated si ha $a prop t^(1/2)$, dunque $dd(delta_m) prop dd(t)/t$ che dà
  $ cases(
    delta_m ~ ln(a) quad &"growing mode",
    delta_m ~ "cost" quad &"decaying mode"
  ) $
  Vediamo quindi che in questo periodo di dominazione le fluttuazioni crescono molto lentamente (dovuto al fatto che $a$ cresce molto lentamente con $t$).
]
/ Caso matter-dominated: #[\
  $ dot.double(delta)_m + 2 H dot(delta)_m - underbracket(4 pi G overline(rho)_m, 3/2 H^2) delta_m = 0 $
  dove abbiamo nuovamente posto $c_s = 0$.
  Questo può anche essere pensato come se stessimo trascurando tutto ciò che ha una scala minore a $lambda_J$.\
  In un universo matter-dominated vale $a ~ t^(2/3) => dot(a) ~ 2/3 t^(-1/3) => H = 2/(3 t)$
  $ dot.double(delta)_m + 4/(3 t) dot(delta)_m - 2/(3 t^2) delta_m = 0 $
  Per risolvere questa equazione differenziale facciamo l'ansatz che la soluzione sia del tipo $delta_m ~ t^alpha$ ottenendo
  #aeq[$ alpha (alpha - 1) t^(alpha - 2) + 4/(3 t) alpha t^(alpha - 1) - 2/(3 t^2) t^alpha = 0 $]
  #aeq[$ 3 alpha (alpha - 1) + 4 alpha - 2 = 0 $]
  #aeq[$ 3 alpha^2 + alpha - 2 = 0 $]
  $ alpha = (-1 plus.minus sqrt(1+24))/6 = cases(2/3, -1) $
  $ cases(
    delta_m ~ t^(2/3) ~ a quad &"growing mode",
    delta_m ~ t^(-1) quad &"decaying mode"
  ) $
  Quindi le zone sovradense continuano ad aumentare di densità con $t^(2/3)$ svuotando le zone sottodense circostanti che continuano a perdere materia.
]
/ Caso $Lambda$-dominated: #[\
  $ dot.double(delta)_m + 2 H dot(delta)_m = 0 $
  Anche in questo caso le due soluzioni sono
  $ cases(delta_m = "cost", a^2 dot(delta)_m = "cost") $
  In questo caso però ho crescita esponenziale $a ~ exp{sqrt(Omega_(Lambda 0)) H_0 t}$ che mi dà
  $ cases(
    delta_m ~ "cost" quad &"growing mode",
    delta_m ~ e^(-2t) quad &"decaying mode"
  ) $
  Dunque le regioni sottodense vengono stirate rendendo ancora più estrema la loro sottodensità, mentre le regioni sovradense è come se si disaccoppiassero e smettessero di crescere.
]
