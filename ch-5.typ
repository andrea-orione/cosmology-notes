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
In questo caso però le nostre quantità (densità $rho$, pressione $p$ e potenziale gravitazionale $phi$) saranno scritte come la somma del loro valore medio più una perturbazione
$
rho (t, va(x)) &= overline(rho) (t) + delta rho (t, va(x))\
p (t, va(x)) &= overline(p) (t) + delta p (t, va(x))\
phi (t, va(x)) &= overline(phi) (t, va(x)) + delta phi (t, va(x))
$
dove notiamo che per il potenziale gravitazionale anche l'ordine zero dipenderà dalla posizione (altrimenti nell'equazione di Poisson il laplaciano sarebbe identicamente nullo).\
Guardiamo per prima l'equazione di Poisson
$ laplacian phi = 4 pi G a^2 rho $
#aeq[$ laplacian (cancel(overline(phi)) + delta phi) = 4 pi G a^2 (cancel(overline(rho)) + delta rho) $]
dove abbiamo cancellato i termini medi sfruttando il fatto che la relazione vale anche per il solo ordine zero
$ heq(laplacian delta phi = 4 pi G a^2 delta rho) $
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
$ rho dot(va(u)) = - 1/a grad p - rho/a grad phi $
#aeq[$ (1+ delta) overline(rho) dv(,t) [dot(a) va(x) + va(v)] = - 1/a grad (w overline(rho) + c_s^2  delta rho) - ((1 + delta) overline(rho))/a grad (overline(phi) + delta phi) $]
#aeq[$ (1+ delta) cancel(overline(rho)) [dot.double(a) va(x) + H va(v) + dot(va(v))] = - (c_s^2 cancel(overline(rho)))/a grad delta - ((1 + delta) cancel(overline(rho)))/a grad (overline(phi) + delta phi) $]
Vogliamo ricollegarci all'equazione di Poisson, quindi prendiamo la divergenza
#aeq[$ div {(1+ delta) [dot.double(a) va(x) + H va(v) + dot(va(v))]} = - c_s^2/a laplacian delta - div {(1 + delta)/a grad (overline(phi) + delta phi)} $]
Ora possiamo notare che i termini $(1 + delta)$ stano moltiplicando termini già del primo ordine, qundi possiamo trascurare $delta$
#aeq[$ div [dot.double(a) va(x) + H va(v) + dot(va(v))] = - c_s^2/a laplacian delta - 1/a laplacian (overline(phi) + delta phi) $]
#aeq[$ cancel(3 dot.double(a)) + H div va(v) + div dot(va(v)) = - c_s^2/a laplacian delta cancel(- 4 pi G overline(rho)/a) - 1/a laplacian delta phi $]
dove abbiamo cancellato i due termini usando l'equazione di Friedmann per le quantità medie
$ heq(div dot(va(v)) + H div va(v) = - c_s^2/a laplacian delta - 1/a laplacian delta phi) $
Questa equazione vorremmo però riscriverla in funzione unicamente di $delta$ invece che di $va(v)$.
Per fare ciò basta sfruttare l'@eq:cont_contrast. Derivandola per il tempo ottengo
$ dot.double(delta) = - H/a div va(v) - 1/a div dot(va(v)) $
Sostituendo sopra
#aeq[$ - a dot.double(delta) + 2 H div va(v) = - c_s^2/a laplacian delta - 1/a laplacian delta phi $]
#aeq[$ dot.double(delta) + 2 H dot(delta) =  c_s^2 laplacian delta + laplacian delta phi $]
$ heq(dot.double(delta) + 2 H dot(delta) - c_s^2 laplacian delta - 4 pi G sum_i delta_i overline(rho)_i = 0) $
Nell'ultimo passaggio abbiamo sostituito l'equazione di Possion, ma abbiamo messo la sommatoria per sottolineare che l'interazione gravitazionale arriva da tutte le componenti insieme.
Quindi se volessimo studiare l'evoluzione delle disomogeneità di una singola specie, nel contributo gravitazionale dovremmo mettercele tutte.
Separando per specie avremo un sistema di equazioni accoppiate, dove il termine di accoppiamento deriva proprio da quella sommatoria.

== Evoluzione delle perturbazioni
Vogliamo ora andare a studiare la funzione che abbiamo appena ottenuto, per sapere come evolvono le perturbazioni.
Tuttavia è più comodo lavorare nello spazio di Fourier, in questo modo metteremo in relazione l'evoluzione a $va(k)$ che è legata alla scala della perturbazione.\
Come notazione useremo
$
delta (va(k), t) = integral dd(x,3) delta (va(x), t) e^(-i va(k) dot va(x)) wide delta (va(x), t) = integral dd(x,3)/(2 pi)^3 delta (va(k), t) e^(+i va(k) dot va(x))
$
Trasformando l'equazione otteniamo
$ heq(dot.double(delta) + 2 H dot(delta) + c_s^2 k^2 delta - 4 pi G sum_i delta_i overline(rho)_i = 0) $
Prendiamo ad esempio una perturbazione nella densità di materia (assumendo che nell'universo ci sia solo materia e radiazione)
$ dot.double(delta)_m + 2 H dot(delta)_m + (c_s^2 k^2 - 4 pi G overline(rho)_m) delta_m  = 4 pi G overline(rho)_r delta_r $
Questa è l'espressione di un oscillatore armonico smorzato con forzante
