//LTeX: language=it
#import "pkg-preamble.typ": *

= Trattazione in relatività generale
#let foot_rel = [
  Riportiamo di seguito una veloce e incompleta rassegna dei concetti più importanti di geometria differenziale e relatività generale.
  Tuttavia questa è carente di esempi e sottigliezze non ovvie.
  In caso di dubbi consultare un corso di Relatività Generale
]
== Ripasso di relatività generale
La relatività generale è miglior teoria che abbiamo della gravità.
Essa si basa sul principio che il campo gravitazionale non sia altro che una manifestazione della curvatura dello spazio tempo.#footnote(foot_rel)
Il linguaggio di questa teoria è quello della geometria differenziale, quindi tutte le equazioni dovranno essere scritte in forma *manifestamente covariante*.

Il concetto fondamentale della geometria differenziale è come trasformano le componenti degli oggetti sotto cambio di coordinate.
Supponiamo di avere due sistemi di coordinate $tensor(x,+mu)$ e $tensor(Tilde(x),+nu)$ e una mappa che li leghi $tensor(x,+mu) = tensor(x,+mu)(tensor(Tilde(x),+nu))$.
Sia inoltre $pdv(tensor(x,+mu), tensor(Tilde(x),+nu))$ lo Jacobiano del cambio di coordinate.

#definizione[
  Un tensore ha un indice *covariante* (indicato con un indice basso $tensor(U,-mu)$) se trasforma con lo Jacobiano
  $ tensor(Tilde(U), -mu) = tensor(U, -nu) pdv(tensor(x,+nu), tensor(Tilde(x),+mu)) $
  Un tensore ha un indice *controvariante* (indicato con un indice alto $tensor(V,+mu)$) se trasforma con lo Jacobiano inverso
  $ tensor(Tilde(V), +mu) = tensor(V, +nu) pdv(tensor(Tilde(x),+mu), tensor(x,+nu)) $
  Un generico tensore $(n,m)$ è un oggetto che trasforma con $n$ trasformazioni controvarianti e $m$ trasformazioni covarianti
  $
  tensor(Tilde(T), +mu_1, +dots, +mu_n, -nu_1, -dots, -nu_m) =
  tensor(T, +rho_1, +dots, +rho_n, -sigma_1, -dots, -sigma_m)
  pdv(tensor(Tilde(x),+mu_1), tensor(x,+rho_1)) dots pdv(tensor(Tilde(x),+mu_n), tensor(x,+rho_n))
  pdv(tensor(x,+sigma_1), tensor(Tilde(x),+nu_1)) dots pdv(tensor(x,+sigma_m), tensor(Tilde(x),+nu_m))
  $
  Uno *scalare* è un tensore $(0,0)$ che quindi è uguale in tutti i sistemi di riferimento.
  $ Tilde(phi.alt) = phi.alt $
  Tensori con un solo indice vengono anche detti *vettori controvarianti* e *vettori covarianti* (o *covettori*).
]

Un esempio di vettore controvariante è un normale vettore, infatti se immaginiamo di dimezzare la base, le componenti dovranno raddoppiarsi per lasciarlo invariato.
Un esempio di vettore covariante è il gradiente di un campo scalare.

Un tensore fondamentale nella teoria è il *tensore metrico* (o *metrica*), un tensore simmetrico che ci permette di definire le distanze:
$ dd(s)^2 = tensor(g, -mu, -nu) dd(x)^mu dd(x)^nu $
Con la metrica possiamo anche alzare e abbassare gli indici
$ tensor(T, -mu) = tensor(T, +nu) tensor(g, -mu, -nu) quad tensor(T, +mu) = tensor(T, -nu) tensor(g, +mu, +nu) $
dove $tensor(g, +mu, +nu)$ è la metrica inversa ($tensor(g, +mu, +nu)tensor(g, -nu, -rho) = tensor(delta, +mu, -rho)$).

Per fare fisica è necessario avere il concetto di derivazione anche di campi vettoriali.
Tuttavia questi non trasformano 'bene'. È quindi necessario definire il concetto di derivata covariante.
#definizione[
  La *derivata covariante* (di seguito indicata con $tensor(nabla, -mu)$ o $tensor(scr(D), -mu)$) di un campo scalare è definita con la normale derivata
  $ tensor(nabla, -mu)phi.alt = tensor(partial, -mu)phi.alt $
  La derivata covariante di un campo vettoriale è definita come
  $ tensor(nabla, -mu) tensor(V, +nu) = tensor(partial, -mu) tensor(V, +nu) + tensor(Gamma, +nu, -mu, -sigma) tensor(V, +sigma) $
  La derivata covariante di un campo vettoriale è definita come
  $ tensor(nabla, -mu) tensor(U, -nu) = tensor(partial, -mu) tensor(U, -nu) - tensor(Gamma, +sigma, -mu, -nu) tensor(U, -sigma) $
  La derivata covariante di un generico tensore è definita sommando alla derivata normale tante $Gamma$ per ogni indice controvariante e sottraendone tante per ogni indice covariante

  $tensor(Gamma, +mu, -nu, -sigma)$ è quella che si dice *connessione*: un oggetto che trasforma in modo da far trasformare bene la derivata.\
  In linea di principio questa è l'unica condizione da applicare alla connessione, però noi siamo interessati ad una particolare connessione detta *connessione di Levi-Civita*.
  Questa ha la proprietà di essere _metric-compatible_ (ovvero tale che la derivata covariante della metrica sia nulla) e _torsion-free_ (ovvero simmetrica rispetto ai due indici bassi).\
  Imponendo queste condizioni si ottiene una relazione tra la connessione di Levi-Civita e la metrica codificata nei *simboli di Christoffel*
  $ heq(
    tensor(Gamma, +mu, -nu, -rho) =
    1/2 tensor(g, +mu, +sigma) (partial_nu tensor(g, -rho, -sigma) + partial_rho tensor(g, -sigma, -nu) - partial_sigma tensor(g, -nu, -rho))
  ) $
]

Un'idea intuitiva di cosa sia la connessione la si può avere pensandola come quell'oggetto che 'connette' i piani tangenti su cui i vettori vivono.

Avendo definito la derivata covariante si può anche introdurre il concetto di trasporto parallelo di un tensore su una curva, imponendo che la derivata covariante del tensore lungo la curva sia nullo
$ dv(tensor(T, +mu_1, +dots, +mu_n, -nu_1, -dots, -nu_m), lambda, d:scr(D)) = dv(x^sigma, lambda) nabla_lambda tensor(T, +mu_1, +dots, +mu_n, -nu_1, -dots, -nu_m) = 0 $
Dove $lambda$ è un parametro _affine_ per parametrizzare la curva.\
Si può anche definire il concetto di geodetica come la curva che trasporta parallelamente il proprio vettore tangente (è l'analogo della retta in spazio piatto)
$ dv(, lambda, d:scr(D))(dv(x^mu, lambda)) = dv(x^mu, lambda, 2) + tensor(Gamma, +mu, -nu, -sigma) dv(x^nu, lambda) dv(x^sigma, lambda) = 0 $

Possiamo ora procedere a scrivere l'equazione che descrive come viene generata la curvatura.
Questa consisterà nella versione covariante dell'equazione di Poisson per la gravità
#aeq[$ laplacian psi = 4 pi G $]
Notiamo che il laplaciano ($laplacian = partial^i partial_i$) non è nient'altro che la traccia del *tensore mareale* ($partial_j partial_i$).
Questo contiene informazioni sulla curvatura (analogamente all'Hessiana per un campo scalare) ed è legato a quanto le geodetiche divergano o convergano.\
L'unico oggetto che trasformi tensorialmente e contenga informazioni sulle derivate seconde è il *tensore di Riemann*
$ heq(
  tensor(cal(R), +mu, -nu, -rho, -kappa) =
  partial_rho tensor(Gamma, +mu, -nu, -kappa) - partial_kappa tensor(Gamma, +mu, -nu, -rho) +
  tensor(Gamma, +lambda, -nu, -kappa) tensor(Gamma, +mu, -lambda, -rho) - tensor(Gamma, +lambda, -nu, -rho) tensor(Gamma, +mu, -lambda, -kappa)
) $
A noi interessa la traccia che è rappresentata dal *tensore di Ricci*
$ tensor(cal(R), -mu, -nu) = tensor(cal(R), +sigma, -mu, -sigma, -nu) $
Possiamo pensare che la traccia descrive come i volumi vengono contratti o dilatati, mentre la parte trace-less (detta _tensore di Weil_) descrive come vengono deformati.

Rimane un ultimo problema, ovvero che il tensore di Ricci non ha derivata covariante nulla, a differenza del tensore energia-impulso (nel secondo membro, che vedremo dopo) che rispetta una legge di continuità.
Questo problema viene risolto definendo il *tensore di Einstein* che ha derivata nulla
$ tensor(G, -mu, -nu) = tensor(cal(R), -mu, -nu) - 1/2 tensor(g, -mu, -nu) cal(R) $
dove $cal(R) = tensor(cal(R), -mu, -nu) tensor(g, +mu, +nu)$ è lo *scalare di Ricci*.\

=== Il tensore Energia-Impulso
Abbiamo visto il primo membro dell'equazione di Einstein $tensor(G, -mu, -nu) = tensor(cal(R), -mu, -nu) - 1/2 tensor(g, -mu, -nu) cal(R)$.
Passiamo ora al secondo.

Dobbiamo scrivere qualcosa di analogo al termine $4 pi G rho$ dell'equazione di Poisson, ma che abbia 2 indici simmetrici e derivata covariante nulla.
Sappiamo che la densità è legata alla massa, e questa la possiamo trovare nel quadrimomento $q^mu = m u^mu = gamma(E/c, m va(v))$ con $q^mu q^nu tensor(g, -mu, -nu) = -m^2$.\
La densità è una massa su volume e segue la relazione
#aeq[$ m = integral dd(V) rho$]
ma in relatività parlare di volumi non è banale, in quanto questi sono ipersuperfici tridimensionali dello spazio-tempo valutati a tempo costante.
Possiamo definire una relazione che sia più generale integrando una quantità su ipersuperfici 3D generiche (con una delle coordinate costanti) e imponendo che l'integrale sia uguale al quadrimomento.
$ q^alpha = 1/(3!) integral dd(x^lambda, x^mu, x^nu, p: and) tensor(epsilon.alt, -lambda, -mu, -nu, -beta) tensor(S, +alpha, +beta)  $
dove $1/(3!)$ è un fattore combinatorio per compensare le permutazioni dei differenziali (per coloro con una conoscenza di base di geometria differenziale stiamo facendo l'Hodge per ottenere un oggetto ad un indice da contrarre con un indice di $tensor(S, +alpha, +beta)$).
Per chi non dovesse essere familiare con questa notazione, basti sapere che ad esempio
#aeq[$1/(3!) integral dd(x^1, x^2, x^3, p: and) tensor(epsilon.alt, -1, -2, -3, -0) tensor(S, +alpha, +0) = integral dd(x^1, x^2, x^3) tensor(S, +alpha, +0) $]
dove gli indici $lambda$, $mu$, $nu$ e $beta$ devono essere obbligatoriamente diversi tra loro

Andiamo a studiare meglio le singole componenti per dare un senso fisico a $tensor(S, +alpha, +beta)$:
#aeq[$ q^0 = integral dd(x^1, x^2, x^3) tensor(S, +0, +0)
  + integral dd(x^0, x^2, x^3) tensor(S, +0, +1)
  + integral dd(x^0, x^1, x^3) tensor(S, +0, +2)
  + integral dd(x^0, x^1, x^2) tensor(S, +0, +3)$]
Il primo integrale è integrato su un volume e ci restituisce un'energia $E/c$, quindi il termine $tensor(S, +0, +0)$ sarà una densità di Energia.
Gli altri tre sono integrati su un'area e su un tempo, quindi $tensor(S, +0, +i)$ rappresenta una densità di corrente di energia (di qui in avanti la chiameremo solo corrente di energia) in analogia a quello che è $j^i$ per l'elettromagnetismo (che integrato su un area dà la corrente $I$, che a sua volta integrata sul tempo dà la variazione di carica).\
Passiamo ai termini spaziali
#aeq[$ q^i = integral dd(x^1, x^2, x^3) tensor(S, +i, +0)
  + integral dd(x^0, x^2, x^3) tensor(S, +i, +1)
  + integral dd(x^0, x^1, x^3) tensor(S, +i, +2)
  + integral dd(x^0, x^1, x^2) tensor(S, +i, +3)$]
Il primo integrale è integrato su un volume e ci restituisce un momento, quindi $tensor(S, +i, +0)$ sarà una densità di momento.
Gli altri tre sono integrati su un'area e su un tempo, quindi $tensor(S, +i, +j)$ rappresenta una densità di corrente di momento.
Questa non è nient'altro che una generalizzazione della pressione, infatti integrando la pressione su un'area otteniamo una forza, che integrata sul tempo dà un impulso.
Questo è quello che in meccanica solida viene detto 'tensore degli sforzi' con le componenti pressorie sulla diagonale e le componenti di taglio (sheer) fuori dalla diagonale.

#osservazione[
  Questa 'definizione' euristica del tensore $tensor(S, +alpha, +beta)$ l'abbiamo ottenuta da considerazioni fatte in relatività speciale, dove è sempre possibile definire ipersuperfici arbitrariamente grandi con una coordinata costante.
  In relatività generale ciò non è così semplice e necessita di una maggior cautela.
  Tuttavia noi ci faremo bastare l'intuizione che ci arriva dalla trattazione fatta sopra e non indagheremo oltre.
]

Possiamo a questo punto definire il *tensore energia-impulso*
$ tensor(T, +alpha, +beta) = c tensor(S, +alpha, +beta) $
che rispetterà la condizione di continuità come il tensore di Einstein
$ partial_beta tensor(T, +alpha, +beta) = 0 $
In linea di principio la densità di momento e la corrente di energia sono quantità diverse, ma noi sappiamo (a posteriori) dall'equazione di Einstein che $tensor(T, -alpha, -beta)$ è proporzionale a $tensor(G, -alpha, -beta)$ che è simmetrico.
Quindi a noi interesserà solo la parte simmetrica di $tensor(T, -alpha, -beta)$.

Possiamo quindi scrivere l'*equazione di Einstein* che descrive come l'energia genera la curvatura
$ heq(tensor(cal(R), -mu, -nu) - 1/2 tensor(g, -mu, -nu) cal(R) = (8 pi G)/c^4 tensor(T, -mu, -nu)) $
Il coefficiente di proporzionalità arriva da considerazioni dimensionali ($[laplacian(psi)] = T^(-2), [tensor(G, -mu, -nu)] = L^(-2), [rho] = M L^(-3), [tensor(T, -mu, -nu)] = M L^2 T^(-2) L^(-3) $) e imponendo che in approssimazione di campo debole l'equazione si riconduca a Poisson.


== Metrica per universo omogeneo e isotropo
Possiamo ora andare a risolvere l'equazione di Einstein per un universo omogeneo e isotropo.
Ciò consiste nel trovare l'espressione per il tensore metrico.\
Per prima cosa dobbiamo imporre le condizioni di omogeneità e isotropia.
Queste ci dicono che l'universo può essere rappresentato come una sequenza ordinata di sezioni spaziali ciascuna omogenea e isotropa, da cui la forma della metrica
$ dd(s)^2 = -c^2dd(t)^2 + a^2(t)dd(l)^2 $
dove $dd(l)^2$ rappresenta la distanza spaziale e $a$ non è nient'altro che il fattore di scala che abbiamo introdotto in precedenza.
Talvolta si usa ridefinire il tempo in modo tale da raccogliere $a$ anche per il primo termine
$ dd(s)^2 = a^2(eta)(-c^2dd(eta)^2 + dd(l)^2) $
$eta$ viene detto *tempo conforme*, ma lo riprenderemo solo in seguito.

Rimane ancora da capire come sia fatto $dd(l)^2$.
Questo, dovendo valere le due condizioni, dovrà essere massimamente simmetrico (ovvero con scalari di curvatura costanti ovunque).
Si dà il caso che ci siano solo 3 opzioni possibili:
// TODO: Mettere le 3 immagini
/ Spazio piatto: con curvatura $=0$ (come lo spazio euclideo $EE^3$). La sua metrica la conosciamo
$ dd(l)^2 = dd(x)^2 + dd(y)^2 + dd(z)^2 $
/ Spazio sferico: con curvatura $>0$ (come una sfera ma tridimensionale $SS^3$). La sua metrica la possiamo costruire con un immersione in $RR^4$ (la coordinata aggiuntiva la chiamiamo $u$)
$ cases(dd(l)^2 = dd(x)^2 + dd(y)^2 + dd(z)^2 + dd(u)^2, x^2 + y^2 + z^2 + u^2 = R^2) $
/ Spazio iperbolico: con curvatura $<0$ (indicato con $HH^3$). Esiste un teorema che ci dice che non possiamo immergerlo in $RR^4$, tuttavia lo si può immergere in $RR^(1,3)$ (spazio pseudoeuclideo con segnatura $(-,+) = (1,3)$)
$ cases(dd(l)^2 = dd(x)^2 + dd(y)^2 + dd(z)^2 - dd(u)^2, x^2 + y^2 + z^2 - u^2 = -R^2) $
Possiamo riassumere questi tre casi in una forma generica
$ cases(dd(l)^2 = dd(x)^2 + dd(y)^2 + dd(z)^2 + kappa dd(u)^2, u^2 = R^2 - kappa x^i x_i) $
Dove $kappa$ può assumere i valori 0 per spazio piatto, $+1$ per spazio sferico, $-1$ per spazio iperbolico.\
Differenziando la seconda otteniamo
#aeq[$ cancel(2) u dd(u) = - cancel(2) kappa x^i dd(x)_i $]
#aeq[$ dd(l)^2 = dd(x)^i dd(x)_i + kappa (kappa^2(x^i dd(x)_i)^2)/u^2 = dd(x)^i dd(x)_i + (kappa^3(x^i dd(x)_i)^2)/(R^2 - kappa x^i x_i) $]
Possiamo notare che per i valori accessibili $kappa^3 = kappa$ quindi
$ dd(l)^2 = dd(x)^i dd(x)_i + (kappa (x^i dd(x)_i)^2)/(R^2 - kappa x^i x_i) $
Passiamo ora in coordinate sferiche 3D $(r, theta, phi)$
#aeq[$ cases(x^i x_i = r^2, x^i dd(x)_i = r dd(r), dd(x)^i dd(x)_i = dd(r)^2 + r^2 dd(theta)^2 + r^2 sin(theta)^2 dd(phi)^2 = dd(r)^2 + r^2 dd(Omega)^2) $]
$ dd(l)^2 = dd(r)^2 + r^2 dd(Omega)^2 + kappa r^2/R^2 (dd(r)^2)/(1 - kappa r^2/R^2) = (dd(r)^2)/(1 - kappa r^2/R^2) + r^2 dd(Omega)^2 $
Rinominando $K := kappa/R^2$ otteniamo la *Metrica di Friedmann-Lemaitre-Robertson-Walker* (*FLRW*):
$ heq(dd(s)^2 = -c^2 dd(t)^2 + a^2(t)[(dd(r)^2)/(1 - K r^2) + r^2 dd(Omega)^2]) $
Notiamo un paio di cose:
- #[La metrica è invariante sotto un riscalamento del tipo
$ cases(a --> a lambda, r --> r/lambda, K --> K lambda) quad "per" forall lambda in RR $
(dove il riscalamento di $K$ corrisponde a fare $R --> R/lambda$).\
Questo significa che posso sfruttare questa libertà per fissare il valore del fattore di scala oggi $a_0 = a(t_0) equiv 1$.\
Quindi $K$ (dunque anche $R$) rappresenta il valore oggi.\
Un'interessante implicazione di ciò è che fino ad oggi $a$ è rimasto nell'intervallo $(0,1]$.
]
- La coordinata $r$ è rappresenta una coordinata comovente, e non un'osservabile fisica (che misurerei con degli ipotetici righelli).\
  La coordinata fisica sarà $r_p = r a(t)$ (come abbiamo definito precedentemente).
  Potremmo provare a scrivere la metrica in questo sistema di coordinate, ma risulterebbe molto più complicata e scomoda la trattazione.
  Conviene fare teoria in coordinate comoventi e fare la conversione in sede sperimentale.
Talvolta può essere comodo cambiare la coordinata radiale per semplificare ulteriormente la trattazione:
$ dd(chi)^2 = dd(r)^2/(1-K r) $
$ chi = integral dd(chi) = integral dd(r)/sqrt(1-K r^2) = 1/sqrt(K) arcsin(r sqrt(k)) $
$ r(chi) &= cases(
  1/sqrt(K)sin(chi sqrt(K)) & "per" K>0,
  chi & "per" K=0,
  1/sqrt(abs(K))sinh(chi sqrt(abs(K))) & "per" K<0
) quad
= quad cases(
  R sin(chi/R) & "per" kappa>0,
  chi & "per" kappa=0,
  R sinh(chi/R) & "per" kappa<0
) \
&= chi sinc(chi sqrt(K)) := S_K (chi) $
Quindi in queste coordinate la metrica diventa
$ heq(dd(s)^2 = -c^2 dd(t)^2 + a^2(t)[dd(chi)^2 + S_K^2 (chi) dd(Omega)^2]) $
Se la scriviamo con il tempo conforme
$ dd(s)^2 = a^2(eta)[-c^2 dd(eta)^2 + dd(chi)^2 + S_K^2 (chi) dd(Omega)^2] $

== Nozioni di distanza
Abbiamo già detto che la metrica che abbiamo scritto è in funzione di coordinate comoventi e ne abbiamo già viste due.
Studiamo quindi cosa queste coordinate rappresentano, come si legano a nozioni fisiche e quali sono le distanze che misuriamo.
=== Radial comoving distance
La coordinata $chi$ che abbiamo visto nella seconda espressione della metrica viene detta *radial comoving distance* (o *proper distance*).\
Consideriamo un fotone ($dd(s)^2 = 0$)
#aeq[$ c^2 dd(eta)^2 = dd(chi)^2 quad ==> quad dd(chi) = plus.minus c dd(eta) $]
Prendendo un fotone che viene verso di noi#h(1em) $heq(chi = (eta_0 - eta)c)$\

Se volessi scriverlo in funzione del tempo $t$ avrei
$ chi(t) = c integral^(t_0)_t 1/(a(t)) dd(t) = c integral^(a_0)_a dd(a)/(dot(a)a) = c integral^(cal(Z))_0 dd(cal(Z))/H(cal(Z)) $

=== Angular comoving distance
La coordinata $r = S_K (chi)$ viene detta *angular comoving distance* (o *transverse comoving distance* o *metric distance*).
Essa rappresenta la distanza comovente che lega le lunghezze d'arco a agli angoli sottesi.\
Per uno spazio piatto la distanza angolare e radiale coincidono, così non è per spazi curvi dove per 'appiattire' una delle due devo 'stirare' l'altra.\
La figura seguente cerca di dare un'intuizione di questo concetto.
// TODO: Mettere immagine vista da davanti e non da sopra
#subpar.grid(
  figure(
    image("images/2-1_parametrizzazione_sfera_a.pdf", width: 80%),
    caption: [Rappresentazione immersa]
  ),
  figure(
    image("images/2-1_parametrizzazione_sfera_b.pdf"),
    caption: [Parametrizzazione in $r$ e $Omega$]
  ),
  figure(
    image("images/2-1_parametrizzazione_sfera_c.pdf"),
    caption: [Paramterizzazione in $chi$ e $Omega$]
  ),
  columns: (1fr, 1fr, 1fr),
  caption: [Parametrizzazioni di uno spazio positivamente curvo.],
)

=== Angular diameter distance
Passiamo ora alle distanze fisiche misurabili.\
Si dice *angular diameter distance* $d_A$ la distanza ottenuta confrontando la dimensione angolare di un oggetto con la sua reale dimensione fisica.
Questo ovviamente lo si può fare solo per oggetti di cui si conosce la dimensione reale, detti *righelli standard*.
Un esempio di righello standard sono le Barionic Acustic Oscilltions.\
Questa all'atto pratico si definisce come
$ d_A approx L/(delta theta) $
dove $L$ è la dimensione reale dell'oggetto, $delta theta$ la sua dimensione angolare e dove abbiamo fatto l'approssimazione di piccoli angoli (valida per osservazioni cosmologiche).\
Voglio ora legarmi ad una delle distanze comoventi (è ovvio che mi interessa quella angolare).
Per come l'ho definita e per come ho fissato il fattore di scala, so che la distanza comovente angolare $r$ corrisponde alla distanza radiale fisica oggi (perché $a_0=1$).
Ma l'osservazione che io sto facendo fa riferimento al tempo di emissione $t$, quindi
$ heq(d_A = r a = r/(1 + cal(Z))) $

=== Luminosity distance
Si dice *luminosity distance* $d_L$ la distanza ottenuta confrontando il flusso osservato a noi con la luminosità reale di un oggetto.
Gli oggetti con luminosità nota vengono detti *candele standard* (un esempio sono le supernove di tipo Ia).
Operativamente si definisce tale che
$ F_o = L_e/(4 pi d_L^2) $
Per collegarla alla distanza comovente (anche in questo caso mi interessa quella angolare), bisogna tenere conto di cosa succede ai fotoni nel viaggio fino a noi (possiamo ignorare l'azione diretta del fattore di scala su $r$ perché tanto l'osservazione è fatta oggi).
La luminosità è data da
#aeq[$ L = E_(gamma)/(Delta t) $]
dove $E_(gamma) = planck nu = planck c/lambda$ è l'energia dei singoli fotoni, mentre $Delta t$ è il tasso a cui vengono emessi.\
Ma la lunghezza d'onda dei fotoni viene stirata ($lambda_e = a lambda_o$) quindi perdono energia.
Inoltre il tasso di arrivo cambia, ciò che rimane costante è $Delta eta = a Delta t = Delta t_0$
Quindi la luminosità osservata sarà
#aeq[$ L_e = L_o/a^2 $]
Quindi avrò
#aeq[$ d_L^2 = r^2/a^2 $]
$ heq(d_L = r/a = (1 + cal(Z))r ) $

Possiamo poi scrivere una relazione tra le due distanze fisiche ottenendo la *relazione di Etherington sulla dualità delle distanze*
$ heq(d_L (cal(Z)) = (1 + cal(Z))^2 d_A (cal(Z))) $

== Tensore di Einstein per universo omogeneo e isotropo
Procediamo ora a calcolare il tensore di Einstein per la metrica FLRW.
Volendo semplificare i calcoli, scegliamo l'espressione nelle coordinate $x^mu = (c t, chi, theta, phi)$.\
In questa abbiamo
$ tensor(g, -0, -0) = -1 wide tensor(g, -1, -1) = a^2 wide tensor(g, -2, -2) = a^2 S_K^2 wide tensor(g, -3, -3) = a^2 S_K^2 sin^2(theta) $
Le funzioni metriche inverse sono
$ tensor(g, +0, +0) = -1 wide tensor(g, +1, +1) = 1/a^2 wide tensor(g, +2, +2) = 1/(a^2 S_K^2) wide tensor(g, +3, +3) = 1/(a^2 sin^2(theta) S_K^2) $
Di seguito indicheremo la metrica spaziale come $tensor(gamma, -i, -j)$, che non dipende dal tempo.\
Possiamo quindi calcolare i simboli di Christoffel
#aeq[$ tensor(Gamma, +mu, -nu, -rho) =
  1/2 tensor(g, +mu, +sigma) (partial_nu tensor(g, -rho, -sigma) + partial_rho tensor(g, -sigma, -nu) - partial_sigma tensor(g, -nu, -rho)) $]
Ricordando che la metrica è diagonale, ogni volta che uno dei due indici verrà fissato, potremo fissare anche l'altro.

#aeq[$ tensor(Gamma, +0, -0, -0) &=
  1/2 tensor(g, +0, +sigma) (cancel(partial_0 tensor(g, -0, -sigma)) + cancel(partial_0 tensor(g, -sigma, -0)) - cancel(partial_sigma tensor(g, -0, -0))) = 0 \

  tensor(Gamma, +i, -0, -0) &=
  1/2 tensor(g, +i, +sigma) (partial_0 tensor(g, -0, -sigma) + partial_0 tensor(g, -sigma, -0) - cancel(partial_sigma tensor(g, -0, -0))) =
  1/2 tensor(g, +i, +i)(2 partial_0 cancel(tensor(g, -0, -i))) = 0\

 tensor(Gamma, +0, -i, -0) &=
  1/2 tensor(g, +0, +sigma) (partial_i tensor(g, -0, -sigma) + partial_0 tensor(g, -sigma, -i) - partial_sigma cancel(tensor(g, -0, -i))) =
  1/2 tensor(g, +0, +0)(cancel(partial_i tensor(g, -0, -0)) + partial_0 cancel(tensor(g, -0, -i))) = 0 = tensor(Gamma, +0, -0, -i)\

 tensor(Gamma, +0, -i, -j) &=
  1/2 tensor(g, +0, +sigma) (partial_i tensor(g, -j, -sigma) + partial_j tensor(g, -sigma, -i) - partial_sigma tensor(g, -i, -j)) =
  1/2 tensor(g, +0, +0)(partial_i cancel(tensor(g, -j, -0)) + partial_j cancel(tensor(g, -0, -i)) - partial_0 tensor(g, -i, -j)) = \
  &= 1/2 (-1)( - partial_0 (a^2 tensor(gamma, -i, -j))) = (a dot(a))/c tensor(gamma, -i, -j) = 1/c dot(a)/a tensor(g, -i, -j)\

 tensor(Gamma, +i, -j, -0) &=
  1/2 tensor(g, +i, +sigma) (partial_j tensor(g, -0, -sigma) + partial_0 tensor(g, -sigma, -j) - partial_sigma cancel(tensor(g, -j, -0))) =
  1/2 tensor(g, +i, +i)(partial_j cancel(tensor(g, -0, -i)) + partial_0 tensor(g, -i, -j)) = \
  &= 1/2 (a^(-2) tensor(gamma, +i, +i))(partial_0 (a^2 tensor(gamma, -i, -j))) = 1/c (dot(a))/a tensor(delta, -i, -j)\

 tensor(Gamma, +i, -j, -k) &=
  1/2 tensor(g, +i, +sigma) (partial_j tensor(g, -k, -sigma) + partial_k tensor(g, -sigma, -j) - partial_sigma tensor(g, -j, -k)) = \
  &= 1/2 (tensor(gamma, +i, +m))(partial_j tensor(gamma, -k, -m) + partial_k tensor(gamma, -m, -j) - partial_m tensor(gamma, -j, -k))$]

Svolgendo i calcoli per le componenti spaziali riportiamo di seguito i termini non nulli
$
 tensor(Gamma, +0, -i, -j) &= (a dot(a))/c tensor(gamma, -i, -j) wide &
 tensor(Gamma, +i, -j, -0) &= 1/c (dot(a))/a tensor(delta, -i, -j) wide &
 tensor(Gamma, +1, -2, -2) &= -S_K S'_K wide &
 tensor(Gamma, +1, -3, -3) &= -S_K S'_K sin^2(theta)\
 tensor(Gamma, +2, -2, -1) &= S'_K/S_K wide &
 tensor(Gamma, +2, -3, -3) &= - sin(theta)cos(theta) wide &
 tensor(Gamma, +3, -3, -1) &= S'_K/S_K wide &
 tensor(Gamma, +3, -3, -2) &= cot(theta)\
$

Possiamo quindi calcolare il tersore di Ricci
#aeq[$ tensor(cal(R), -mu, -nu) = tensor(cal(R), +sigma, -mu, -sigma, -nu) =
  partial_sigma tensor(Gamma, +sigma, -mu, -nu) - partial_nu tensor(Gamma, +sigma, -mu, -sigma) +
  tensor(Gamma, +lambda, -mu, -nu) tensor(Gamma, +sigma, -lambda, -sigma) - tensor(Gamma, +lambda, -mu, -sigma) tensor(Gamma, +sigma, -lambda, -nu) $]
Svolgendo i conti ci si rende conto che anche il tensore di Ricci è diagonale (ci si può anche arrivare ricordando che l'universo è isotropo e se Ricci avesse componenti off-diagonal, questo definirebbe direzioni preferenziali).
Dunque mi basta calcolare 4 componenti (riportiamo di seguito solo i risultati):
#aeq[$
 tensor(cal(R), -0, -0) &= -3/c^2 dot.double(a)/a\
 tensor(cal(R), -1, -1) &= (a dot.double(a))/c^2 + 2 dot(a)^2/c^2 - 2S''_K/S_K = a^2/c^2[dot.double(a)/a + 2(dot(a)/a)^2 + 2(K c^2)/a^2]\
 tensor(cal(R), -2, -2) &= (a dot.double(a))/c^2 S^2_K + 2 dot(a)^2/c^2 S_K^2 - S_K S''_K + 1 -(S'_K)^2 = a^2/c^2 S_K^2[dot.double(a)/a + 2(dot(a)/a)^2 + 2(K c^2)/a^2]\
 tensor(cal(R), -3, -3) &= sin^2(theta)[(a dot.double(a))/c^2 S^2_K + 2 dot(a)^2/c^2 S_K^2 - S_K S''_K + 1 -(S'_K)^2] = a^2/c^2 S_K^2 sin^2(theta)[dot.double(a)/a + 2(dot(a)/a)^2 + 2(K c^2)/a^2]\
$]
Gli ultimi tre risultati possono essere riuniti assieme formando
$
 tensor(cal(R), -0, -0) &= -3/c^2 dot.double(a)/a\
 tensor(cal(R), -i, -j) &= 1/c^2[dot.double(a)/a + 2(dot(a)/a)^2 + 2(K c^2)/a^2] tensor(g, -i, -j)
$
Calcoliamo lo scalare di Ricci
$
cal(R) &= tensor(g, +mu, +nu) tensor(cal(R), -mu, -nu) = - tensor(cal(R), -0, -0) + tensor(g, +i, +j) tensor(cal(R), -i, -j)\
&= 3/c^2 dot.double(a)/a + 1/c^2 [dot.double(a)/a + 2(dot(a)/a)^2 + 2(K c^2)/a^2] underbracket(tensor(g, +i, +j) tensor(g, -i, -j), 3)\
&= 6/c^2[dot.double(a)/a + (dot(a)/a)^2 + (K c^2)/a^2]
$
Infine possiamo calcolare il tensore di Einstein $tensor(G, +mu, -nu) = tensor(G, -rho, -nu)tensor(g, +rho, +mu) = tensor(cal(R), +mu, -nu) - 1/2 tensor(delta, +mu, -nu) cal(R)$ (questo è quello con la forma più semplice)
$
 tensor(G, +0, -0) & = 3/c^2 dot.double(a)/a -3/c^2[dot.double(a)/a + (dot(a)/a)^2 + (K c^2)/a^2] = -3/c^2 [(dot(a)/a)^2 + (K c^2)/a^2]\
 tensor(G, +i, -j) &= 1/c^2[dot.double(a)/a + 2(dot(a)/a)^2 + 2(K c^2)/a^2] tensor(delta, +i, -j) -3/c^2[dot.double(a)/a + (dot(a)/a)^2 + (K c^2)/a^2] tensor(delta, +i, -j) \
 &= -1/c^2[2 dot.double(a)/a + (dot(a)/a)^2 + (K c^2)/a^2] tensor(delta, +i, -j)
$

== Tensore energia-impulso per un gas perfetto
Vogliamo ora calcolare il tensore energia-impulso nel nostro caso (ricordiamo che approssimiamo tutto ad un fluido).
Dato che stiamo considerando un universo omogeneo e isotropo non possiamo avere densità di momenti, correnti di energia o sforzi di taglio (altrimenti questi definirebbero una direzione preferenziale rompendo l'isotropia).
Inoltre, sempre per isotropia, ci mettiamo nel sistema di riferimento a riposo con il fluido.\
Dunque il tensore sarà diagonale
#aeq[$tensor(T, +mu, +nu) = mat(
  overline(rho)c^2, " " , va(0)^TT, " " ;
  " ", " ", " ", " ";
  va(0), " ", overline(p) bb(1)_3, " ";
  " ", " ", " ", " ";
augment: #(hline: 1, vline: 1))
 = mat(
  overline(rho)c^2 + overline(p), " " , va(0)^TT, " " ;
  " ", " ", " ", " ";
  va(0), " ", bb(0)_3, " ";
  " ", " ", " ", " ";
augment: #(hline: 1, vline: 1))
 + overline(p) mat(
  - 1, " " , va(0)^TT, " " ;
  " ", " ", " ", " ";
  va(0), " ", bb(1)_3, " ";
  " ", " ", " ", " ";
augment: #(hline: 1, vline: 1))
  $]
La prima matrice la possiamo ottenere sfruttando il fatto che, essendo comoventi con il fluido, $u^mu = (c, va(0))$ , mentre la seconda non è nient'altro che Minkowski, quindi otteniamo
$ tensor(T, +mu, +nu) = (overline(rho) + overline(p)/c^2)u^mu u^nu + overline(p)tensor(eta, +mu, +nu) $
passando in relatività generale
$ heq(tensor(T, +mu, +nu) = (overline(rho) + overline(p)/c^2)u^mu u^nu + overline(p)tensor(g, +mu, +nu)) $
quindi
#aeq[$tensor(T, +mu, +nu) = mat(
  overline(rho)c^2, " " , va(0)^TT, " " ;
  " ", " ", " ", " ";
  va(0), " ", overline(p) 1/a^2 tensor(gamma, +i, +j), " ";
  " ", " ", " ", " ";
augment: #(hline: 1, vline: 1))
  $]

Bisogna però fare attenzione che in relatività generale alzare e abbassare gli indici non è banale quanto cambiare dei segni.
Infatti si ottiene
#aeq[$tensor(T, +mu, -nu) = tensor(T, +mu, +rho) tensor(g, -nu, -rho)= mat(
  overline(rho)c^2, " " , va(0)^TT, " " ;
  " ", " ", " ", " ";
  va(0), " ", overline(p) tensor(delta, +i, -j), " ";
  " ", " ", " ", " ";
augment: #(hline: 1, vline: 1))
  wide
tensor(T, -mu, -nu) = tensor(T, +rho, -nu) tensor(g, -mu, -rho) = mat(
  overline(rho)c^2, " " , va(0)^TT, " " ;
  " ", " ", " ", " ";
  va(0), " ", overline(p) a^2 tensor(gamma, -i, -j), " ";
  " ", " ", " ", " ";
augment: #(hline: 1, vline: 1))

  $]

== Equazioni di Friedmann
Siamo pronti per mettere insieme tutti i risultati ottenuti finora.\
Iniziamo dall'equazione di continuità $tensor(nabla, -mu) tensor(T, +mu, -nu) = 0$ per la componente $nu = 0$:
#aeq[$
0 = tensor(nabla, -mu) tensor(T, +mu, -0)
  &= partial_mu tensor(T, +mu, -0) + tensor(Gamma, +mu, -rho, -mu)tensor(T, +rho, -0) - tensor(Gamma, +rho, -mu, -0)tensor(T, +mu, -rho)\
  &= partial_0 tensor(T, +0, -0) +partial_i cancel(tensor(T, +i, -0)) + cancel(tensor(Gamma, +0, -rho, -0))tensor(T, +rho, -0) + tensor(Gamma, +i, -rho, -i)tensor(T, +rho, -0) - cancel(tensor(Gamma, +rho, -0, -0))tensor(T, +0, -rho) - tensor(Gamma, +rho, -i, -0)tensor(T, +i, -rho)\
  &= partial_0 tensor(T, +0, -0) + tensor(Gamma, +i, -0, -i)tensor(T, +0, -0) + tensor(Gamma, +i, -j, -i)cancel(tensor(T, +j, -0)) - tensor(Gamma, +0, -i, -0)cancel(tensor(T, +i, -0)) - tensor(Gamma, +j, -i, -0)tensor(T, +i, -j)\
  &= dv(,t) (-overline(rho)c^2) + dot(a)/a underbracket(tensor(delta, +i, -i), 3)(-overline(rho)c^2) - dot(a)/a overline(p) underbracket(tensor(delta, +j, -i)tensor(delta, +i, -j), 3)
$]
$ heq(dot(overline(rho)) = -3 dot(a)/a (overline(rho) + overline(p)/c^2)) $
Abbiamo riottenuto l'equazione di continuità cosmologica.\
Non calcoliamo i termini $nu = 1$, in quanto danno tutti soluzioni triviali $0=0$ (sopravvivono solo le derivate spaziali di $T$ che sono nulle).

Passiamo ora all'equazione di Einstein $tensor(cal(R), -mu, -nu) - 1/2 tensor(g, -mu, -nu)cal(R) = (8 pi G)/c^4 tensor(T, -mu, -nu)$:
$ heq((dot(a)/a)^2 = (8 pi G)/3 overline(rho) - (K c^2)/a^2) $
$ heq(dot.double(a)/a = - (4 pi G)/3 (overline(rho) + 3 overline(p)/c^2)) $
Queste sono rispettivamente la prima e la seconda equazione di Friedmann. Notiamo che la prima è identica a quella già ottenuta in precedenza, solo che ora sappiamo il significato di $K$. La seconda invece ha un termine in più che nella trattazione classica ci siamo persi non avendo tenuto conto che anche la radiazione gravita.

== Evoluzione in presenza di curvatura
Oggi dalle misure sappiamo che $K$ è compatibile con $0$, tuttavia è interessante capire come sarebbe l'evoluzione dell'universo in presenza di curvatura.
In particolare abbiamo già visto che l'universo è stato inizialmente dominato dalla radiazione e ora è dominato dalla materia, e se ci fosse anche la curvatura (che si diluisce come $~a^(-2)$) questa dominerebbe in un futuro.
Abbiamo inoltre risolto le equazioni per universi a singola componente trovando
#aeq[$ a ~ t^(2/(3(1+w))) quad "con" quad overline(p) = w overline(rho) $]
Andiamo ora a studiare come evolve l'universo a due componenti materia e curvatura. Iniziamo dall'equazione con le abbondanze
#aeq[$(dot(a)/a)^2 = H^2_0 (Omega_(m 0) a^(-3) + Omega_(k 0) a^(-2))$]
#aeq[$dot(a)^2 = H^2_0 (Omega_(m 0) a^(-1) + Omega_(k 0))$]
Passiamo poi al tempo conforme $eta = t/a => dv(,t) = 1/a dv(,eta)$ (indichiamo $dot(Q) = dv(Q,t)$ e $Q' = dv(Q, eta)$)
#aeq[$
  (a')^2 &= H^2_0 (Omega_(m 0) a + Omega_(k 0) a ^2)\
  &= H^2_0 Omega_(m 0) a (1 + Omega_(k 0)/Omega_(m 0) a)\
  &= H^2_0 Omega_(m 0) a (1 - (-Omega_(k 0))/Omega_(m 0) a)
$]
Facciamo ora un cambio di variabile $y^2 = -Omega_(k 0)/Omega_(m 0) a => a = -Omega_(m 0)/Omega_(k 0) y^2 => a' = - Omega_(m 0)/Omega_(k 0) 2 y y' $.
Notiamo che $y$ può assumere anche valori immaginari (perché $Omega_(k 0)$ può essere positivo o negativo), ma questo non ci spaventa in quanto ci basta anteporre una $i$ a tutti i conti, e trasformare le funzioni trigonometriche in iperboliche.
#aeq[$cancel(Omega_(m 0)^2)/Omega_(k 0)^(cancel(2)) 4 cancel(y^2) (y')^2 = - H^2_0 cancel(Omega_(m 0)) cancel(Omega_(m 0))/cancel(Omega_(k 0)) cancel(y^2) (1 - y^2)$]
#aeq[$y' = dv(y, eta) = 1/2 H_0^2 sqrt(- Omega_(k 0))sqrt(1 - y^2)$]
#aeq[$integral dd(eta) = 2/(H_0^2 sqrt(- Omega_(k 0))) integral dd(y)/sqrt(1 - y^2)$]
#aeq[$eta = 2/(H_0^2 sqrt(- Omega_(k 0))) arcsin(y)$]
#aeq[$y = sin(1/2 underbrace(H_0 sqrt(-Omega_(k 0)) eta, theta)) = sin(theta/2)$]
#aeq[$a =  -Omega_(m 0)/Omega_(k 0) y^2 = -Omega_(m 0)/Omega_(k 0) sin^2(theta/2) = -Omega_(m 0)/Omega_(k 0) 1/2(1 - cos(theta)) $]
$ a = 1/2 Omega_(m 0)/Omega_(k 0) (cos(theta)- 1) $
Torniamo ora al tempo cosmologico $t$
#aeq[$t = integral dd(t) = integral a dd(eta) = 2/(H_0 sqrt(- Omega_(k 0))) integral dd(y)/sqrt(1 - y^2) [1/2 Omega_(m 0)/Omega_(k 0) (cos(theta) - 1)] $]
ma notiamo che
#aeq[$dd(y)/sqrt(1 - y^2) = dd(sin(theta/2))/sqrt(1 - sin^2(theta/2)) = 1/2 (cos(theta/2)dd(theta))/sqrt(cos^2(theta/2)) = 1/2 dd(theta)$]
quindi
$ t = 2/(H_0 sqrt(- Omega_(k 0))) integral 1/2 dd(theta) [1/2 Omega_(m 0)/Omega_(k 0) (cos(theta) - 1)] = 1/(2 H_0) Omega_(m 0)/(- Omega_(k 0))^(3/2)[theta - sin(theta)] $
mettendo assieme $a$ e $t$
$ cases(
t = 1/(2 H_0) Omega_(m 0)/(- Omega_(k 0))^(3/2)[theta - sin(theta)],
a = 1/2 Omega_(m 0)/(-Omega_(k 0)) (1 - cos(theta))
) $
Questa è la parametrizzazione di un cicloide.
- Se $K > 0 <=> Omega_(k 0) < 0$ ho effettivamente il cicloide.\
  All'inizio ho un _Big-Bang_ seguito da un'espanzione, poi una decelerazione che porta ad una contrazione e infine un _Big-Crunch_. Si parla di *universo chiuso*.\
  Se sviluppo attorno a 0 ottengo $t ~ a^(2/3)$ che effettivamente è il risultato che avevamo trovato per l'universo di sola materia.
- Se $K < 0 <=> Omega_(k 0) > 0$ le funzioni trigonometriche diventano iperboliche.\
  Questo significa che non ho mai la ricontrazione, qundi l'universo si espande per sempre. Si parla di *universo aperto*.
- Se $K = Omega_(k 0) = 0$ abbiamo il caso già visto in precedenza.
#figure(
  image("images/2-2_cicloide.pdf", width: 55%),
  caption: [Evoluzione del fattore di scala per universo dominato da materia e curvatura.]
)

== La costante cosmologica
Abbiamo già visto l'equazione
#aeq[$ 1 = Omega_(m 0) + Omega_(r 0) + Omega_(k 0) $]
e abbiamo visto che le misure odierne sono $Omega_(r 0) approx num("e-4")$, $Omega_(m 0) approx num("0.3")$ e $Omega_(k 0) approx 0$.
È evidente che queste non sommino a 1.
Dunque è necessario aggiungere qualcosa, quello che si fa è introdurre una nuova componente detta *costante cosmologica* $Omega_(Lambda)$.

La constante cosmologica è stata inizialmente introdotta da Einstein, non soddisfatto del risultato di un universo che non fosse statico.\
Si rese conto che poteva ridefinire il tensore $tensor(G, -mu, -nu)$
$ tensor(G, -mu, -nu) -> tensor(G, -mu, -nu) + tensor(g, -mu, -nu) Lambda $
Questo tensore continua a rispettare la legge di continuità $tensor(nabla, -mu)tensor(G, +mu, -nu) = 0$ se $Lambda = "cost"$ (dato che $tensor(g, -mu, -nu)$ ha derivata covariante nulla).
Con questa modifica le equazioni di Friedmann diventano (questa è la versione finale che useremo)
$ heq((dot(a)/a)^2 = (8 pi G)/3 overline(rho) - (K c^2)/a^2 + Lambda/3) $
$ heq(dot.double(a)/a = - (4 pi G)/3 (overline(rho) + 3 overline(p)/c^2) + Lambda/3) $
Einstein voleva ottenere un universo statico ($dot.double(a) = dot(a) = 0$) e di sola materia ($overline(p) = 0$).
Imponendo queste condizioni si ottiene
$ Lambda_E = 4 pi G overline(rho)_m wide K_E = 4 pi G overline(rho)_m a^2/c^2 $
In seguito si osservò che l'universo si stava espandendo e questa idea venne accantonata (alcune fonti riportano che Einstein l'abbia definita l'errore più grande della sua vita) anche se in linea di principio questa non era da escludere.\
Un'ulteriore cosa da notare è che l'universo di Einstein era in un punto di equilibrio instabile (anche un solo elettrone in più avrebbe causato la contrazione o l'espansione).

L'idea venne ripresa in considerazione negli anni \'90 quando le osservazioni delle SNeIa misero in evidenza problemi nel modello.

=== Misura dell'espansione accelerata
La misura dell'espanzione accelerata viene fatta con la stessa tecnica con cui è stata scoperta la legge di Hubble: si osservano oggetti di cui si riesce a misurare sia un qualche tipo di distanza (tendenzialmente la distanza di luminosità $d_L$) sia il redshift.
L'unica differenza è che si osserva a distanze maggiori dove si riesce ad apprezzare un termine superiore dello sviluppo in serie che ha portato alla legge di Hubble.
Gli oggetti osservati a così grande distanza sono le SNeIa e le onde gravitazionali.

Andiamo a considerare un ordine superiore nello sviluppo in serie di $a$ nell'universo locale
#aeq[$a(t) = 1 + H_0(t-t_0) + 1/2 evaluated(dot.double(a))_(a=1) (t- t_0)^2$]
Definiamo il *parametro di decelerazione* (chiamato così per motivi storici)
$ heq(q = - dot.double(a)/(a H^2)) $
e otteniamo
#aeq[$a(t) = 1 + H_0(t-t_0) + 1/2 H_0^2 q_0 (t- t_0)^2$]
Quindi $q_0$ sarà il nuovo parametro che dovremo determinare con un fit sui dati.\
Andiamo dunque a sviluppare l'espressione per la distanza di luminosità
#aeq[$d_L (cal(Z)) = (1 + cal(Z)) r (cal(Z)) = (1 + cal(Z)) chi sinc(chi sqrt(K)) ~ (1 + cal(Z)) chi$]
Sviluppiamo $chi$
#aeq[$chi (cal(Z)) = integral_0^cal(Z) (c dd(cal(Z)'))/(H (cal(Z)')) = c integral_0^cal(Z) [1/H_0 + evaluated(dv(H, cal(Z)'))_(cal(Z) = 0) cal(Z)' + ...] dd(cal(Z)') = (c cal(Z))/H_0 - cal(Z)^2 c/(2 H_0^2) evaluated(dv(H, cal(Z)))_(cal(Z) = 0) + ... $]
Dobbiamo calcolare la derivata di $H = dot(a)/a$
#aeq[$dv(H, cal(Z)) = dv(H, t) dv(t, a) dv(a, cal(Z)) = (- dot(a)^2/a^2 + dot.double(a)/a ) 1/dot(a) (-a^2) = cancel(a^2)/cancel(dot(a)) dot(a)^(cancel(2))/cancel(a^2) (1 underbrace(- dot.double(a)/(a H^2) , -q)) = dot(a) (1+q)$]
Reinserendo nello sviluppo di $chi$
$ chi (cal(Z)) = c/H_0 (cal(Z) - cal(Z)^2(q_0 + 1)) + ... $
Quindi
$ d_L = (c cal(Z))/H_0 - 1/2 (c cal(Z)^2)/H_0 (1 + q_0) + (c cal(Z)^2)/H_0 + ... = (c cal(Z))/H_0 + (c cal(Z)^2)/(2 H_0) (1 - q_0) + ... $
Questa viene detta *espansione cosmografica* e ha la meravigliosa caratteristica di essere indipendente dal modello di universo scelto.\
Ad oggi tuttavia si tende a fare il fit direttamente con tutto il modello cosmologico per non perdere termini nello sviluppo in serie.

Quando negli anni \'90 si iniziò a fare misure a grandi distanza, si notò che il fit dava un'accelerazione invece che una decelerazione come atteso.
Le opzioni principali per spiegare questo andamento erano 2:
- Violare la *strong enery condition* (SEC)
  $ overline(rho) + 3 overline(p) > 0 $
  dove ricordiamo $overline(rho) = sum_s overline(rho)_s$ e $overline(p) = sum_s overline(p)$ con $s$ le specie (radiazione, materia, ecc...)
- Reinserire la costante cosmologica nelle equazioni di Einstein
Si scelse di preservare la SEC e dunque si reinserì la costante cosmologica

=== Costante cosmologica come forma di energia
Al giorno d'oggi, nelle equazioni di Einstein si tende a spostare $Lambda$ dall'altro lato (mettiamo $c = 1$)
$ tensor(cal(R), -mu, -nu) -1/2 tensor(g, -mu, -nu) cal(R) = (8 pi G)/c^4 (tensor(T, -mu, -nu) + tensor(T^(Lambda), -mu, -nu)) wide "con" wide
tensor(T^(Lambda), -mu, -nu) = - Lambda c^4/(8 pi G) tensor(g, -mu, -nu) $
Questo per due motivi principali:
- Operativamente risulta più semplice trattare $Lambda$ come tutte le altre sorgenti
- Non sapremmo il significato di un termine aggiuntivo alla curvatura

Andiamo a vedere le componenti del tensore energia-impulso di $Lambda$:
#aeq[$ tensor(T^(Lambda), -0, -0) = - Lambda c^4/(8 pi G)(-1) wide tensor(T^(Lambda), -i, -j) = -Lambda c^4/(8 pi G) a^2 tensor(gamma, -i, -j)$]
Interpretando i termini come densità e pressione ($ tensor(T, -0, -0) = rho c^2$ e $tensor(T, -i, -j) = p a^2 tensor(gamma, -i, -j)$) si ottiene
$ overline(rho)_Lambda = Lambda c^2/(8 pi G) wide overline(p)_Lambda = -Lambda c^4/(8 pi G) = -overline(rho)_Lambda c^2 $
Quindi abbiamo una nuova specie con $w_Lambda = -1$ (dove ricordiamo $overline(rho)_s = overline(p)_s w_s c^2$).\
Sottolineiamo inoltre che essendo $Lambda$ costante avremo $overline(rho) = "cost" != overline(rho)(t)$.

Questo ci porta ad aggiornare il grafico con le evoluzioni delle abbondanze al variare del fattore di scala (continuando a ignorare la curvatura)
#subpar.grid(
  figure(
    image("images/2-3_evoluzione_specie.pdf", width: 100%),
  ),
  figure(
    image("images/2-3_evoluzione_specie_b.png", width: 100%),
  ),
  columns: (1fr, 1fr),
  caption: [Evoluzione delle densità delle specie.]
)
Abbiamo ancora che per la maggior parte del tempo l'universo è descrivibile come epoche dominate da una singola componente, intervallate da epoche di equivalenza:
- L'*equivalenza materia-radiazione* che abbiamo già visto $overline(rho)_r (a_"eq") = overline(rho)_m (a_"eq")$
- L'*equivalenza $Lambda$-materia* dove $overline(rho)_m (a_"eq") = overline(rho)_Lambda$
Possiamo andare a calcolare il fattore di scala di quest'ultima dividendo per $rho_(c,0)$
#aeq[$(overline(rho)_(m,0) a^(-3)_Lambda)/rho_(c,0) = overline(rho)_Lambda/rho_(c,0)$]
#aeq[$Omega_(m,0) a^(-3)_Lambda = Omega_(Lambda, 0)$]
dove
$ Omega_(Lambda, 0) = Lambda/cancel(8 pi G) cancel(8 pi G)/(3 H_0^2) = Lambda/(3 H_0^2) $
Notiamo che è importante mettere il pedice 0, perché sebbene $Lambda$ sia costante, $rho_c$ non lo è, quindi ho un'evoluzione
#aeq[$Omega_Lambda (cal(Z)) = Omega_(Lambda, 0)/(H^2 (cal(Z)) \/ H^2_0)$]
Risolvendo per $a_Lambda$
#aeq[$a_Lambda = root(3, Omega_(m,0) / Omega_(Lambda, 0)) approx root(3, 0.3/0.7) approx 0.75 quad ==> quad cal(Z)_Lambda = 1/a_Lambda - 1 approx 0.33$]
Notiamo che questo è un valore abbastanza vicino.

Calcoliamo ora l'andamento temporale del fattore di scala nella dominazione della costante cosmologica
#aeq[$dot(a)^2/a^2 = Lambda/3 = (8 pi G)/3 overline(rho)_Lambda = H_0^2 Omega_(Lambda, 0)$]
#aeq[$dot(a) = H_0 a sqrt(Omega_(Lambda, 0))$]
$ heq(a ~ exp{sqrt(Omega_(Lambda, 0)) H_0 t}) $

Ricapitolando le epoche di dominazione abbiamo
/ Radiation dominated: con un andamento $a ~ t^(1/2)$
/ Matter dominated: con un andamento $a ~ t^(2/3)$ detto _universo di Einstein-De Sitter_
/ Curvature dominated: con un andamento $a ~ sqrt(-K) t$ detto _universo di Milne_.\
  Da notare come in questo caso sia concessa solo una curvatura positiva $K < 0$, quindi solo un universo chiuso
/ $Lambda$ dominated: con un andamento $a ~ exp{sqrt(Omega_(Lambda, 0))H_0 t}$ detto _universo di De Sitter_ che è l'universo in cui ci troviamo noi oggi

Possiamo anche aggiornare la nostra equazione delle abbondanze
$ heq( H^2 (cal(Z)) = H_0^2 [Omega_(r, 0) (1 + cal(Z))^4 + Omega_(m, 0) (1 + cal(Z))^3 + Omega_(K, 0) (1 + cal(Z))^2 + Omega_(Lambda, 0)] ) $

== Evoluzione delle disomogeneità e formazione delle galassie<sec:collasso_sferico>
Iniziamo ora un processo di rilassamento delle assunzioni che abbiamo fatto fin'ora.\
Consideriamo per semplicità un universo matter-dominated con delle fluttuazioni rispetto all'omogeneità
#aeq[$ rho = (1 + delta) overline(rho) $]
Consideriamo una regione sferica di raggio comovente $R$ in cui la densità sia $rho$ immersa in un universo di densità $overline(rho)$.
La massa all'interno della regione sarà
#aeq[$ M = 4/3 pi r^3 rho $]
dove $r$ è la dimensione fisica ($r = a R$).\
Un punto sulla superficie sferica sarà soggetta ad un'accelerazione gravitazionale
$ dot.double(r) = -G M/r^2 = -(4 pi G)/3 rho r $<eq:acc_grav>
moltiplicando entrambi i lati per $dot(r)$
#aeq[$ dot(r) dot.double(r) = -G M/r^2 dot(r) $]
scriviamo poi
#aeq[$ dot(r)dot.double(r) = dot(r)dv(dot(r), t) = 1/2 dv(dot(2)^2, t) wide 1/r^2 dv(r, t) = - dv(,t)(1/r) $]
Quindi possiamo integrare su $t$ per toglierlo
$ underbracket(1/2 dot(r)^2, E_K) = underbracket((G M)/r, -E_P) + underbracket(C, E_"tot") quad ==> quad 1/2 dot(r)^2 = (4 pi G)/3 rho r^2 + E_"tot" $<eq:energia>
dove tutte le energie sono per unità di massa.

Supponiamo ora che ad un tempo iniziale $t_i$ le fluttuazioni siano sufficientemente piccole in modo tale che tutto segua le equazioni di Friedmann
#aeq[$ r(t_i) = a(t_i) R quad ==> quad dot(r) (t_i) = dot(a) (t_i) R = H(t_i) r(t_i) $]
calcoliamo le energie da mettere nella formula ottenuta prima
#aeq[$ E_(K, i) &= 1/2 dot(r)_i^2 = 1/2 H_i^2 r^2_i \
  - E_(P, i) &= (G M)/r_i = (4 pi G)/3 r_i^2 rho_i = (4 pi G)/3 r_i^2 overline(rho)_i (1 + delta_i) = 1/2 H_i^2 r^2_i (1+ delta_i)$]
quindi
#aeq[$ -E_(P, i) = E_(K, i) (1 + delta_i) quad ==> quad E_"tot" = -E_(K, i) delta_i $]
ma $E_(K, i) > 0$ quindi se la fluttuazione è positiva (zona di sovradensità locale), allora $E_"tot" < 0$ quindi il sistema è legato.

Possiamo poi scrivere le equazioni che regolano l'evoluzione di questa sfera, usando l'@eq:acc_grav e l'@eq:energia
$$
$ cases(
  dot.double(r) = -(4 pi G)/3 rho r,
  dot(r)^2 = (8 pi G)/3 rho r^2 - 2 abs(E_"tot")
) quad ==> quad heq(cases(
  dot.double(r)/r = -(4 pi G)/3 rho ,
  dot(r)^2/ r^2 = (8 pi G)/3 rho - (2 abs(E_"tot"))/r^2
)) $
Ma queste non sono altro che equazioni di Friedmann dove invece dell'evoluzione del fattore di scala abbiamo l'evoluzione della sfera e dove $2 abs(E_"tot")$ gioca il ruolo di una curvatura positiva.\
Inoltre queste equazioni noi le abbiamo già risolte quando abbiamo considerato l'universo a doppia componente materia-curvatura, e sappiamo che la soluzione è un cicloide
$ heq(cases(
r = 1/2 (1- delta_i)/delta_i [1 - cos(theta)] = (G M)/(2 abs(E) r_i) [1 - cos(theta)],
t = 1/(2 H_i) (1- delta_i)/(delta_i)^(3/2) [theta - sin(theta)] = (G M)/(2 abs(E))^(3/2) [theta - sin(theta)]
)) $
Quello che fisicamente accade è che inizialmente la bolla sovradensa evolve espandendosi assieme all'universo circostante.
In seguito inizia a decelerare e contrarsi, disaccoppiandosi dal comportamento omogeno del flusso di Hubble che coinvolge tutto l'universo circostante.\
Questo possiamo intuire essere il modo in cui si sono formate le galassie, e il motivo per cui possiamo parlare di questi oggetti puntiformi in un universo a grande scala omogeneo.
Notiamo inoltre che tanto più è massiva una sovradensità, tanto più sarà grande e tanto più ci metterà a contrarsi.
#figure(
  image("images/2-4_evoluzione_sovradens.pdf", width: 55%),
  caption: [Evoluzione di una sovradensità.]
)
