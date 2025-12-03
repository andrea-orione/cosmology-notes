//LTeX: language=it
#import "pkg-preamble.typ": *

= Teoria perturbativa relativistica
Possiamo ora passare a vedere la teoria perturbativa nel formalismo relativistico.
Questa è molto più complicata di quella Newtoniana, dunque non faremo tutti i conti bensì delineeremo solo il procedimento per ottenere i risultati.\
Partiamo dall'equazione di Einstein
#aeq[$ tensor(G, -mu, -nu) = (8 pi G)/c^4 tensor(T, -mu, -nu) $]
== Perturbazione della metrica
Iniziamo dal tensore di Einstein.
Questo dipende dalla metrica che possiamo perturbare
$ tensor(g, -mu, -nu) (t, va(x)) = tensor(overline(g), -mu, -nu) (t) + tensor(delta g, -mu, -nu) (t, va(x)) $
Per semplificare la trattazione consideriamo la metrica FRW piatta, inoltre la scriviamo in termini del tempo conforme per poter fattorizzare il fattore di scala.
Inoltre scomponiamo la perturbazione in una parte scalare $S$, una parte vettoriale $va(V)$ e una parte tensoriale $vt(T)$ (tutte nel senso tridimensionale, non nel senso covariante).
$
  a^(-2)(eta)[g(eta, va(x))] = 
  mat(
  - 1, " " , va(0)^TT, " " ;
  " ", " ", " ", " ";
  va(0), " ", bb(1)_3, " ";
  " ", " ", " ", " ";
augment: #(hline: 1, vline: 1))

 + mat(
  - 2 S, " " , va(V)^TT, " " ;
  " ", " ", " ", " ";
  va(V), " ", 2 vt(T), " ";
  " ", " ", " ", " ";
augment: #(hline: 1, vline: 1))
$
dove i fattori 2 sono solo delle convenzioni usate per semplicità.\
Abbiamo scomposto la perturbazione in questo modo perché esiste un teorema (che non dimostreremo) che ci dice che al primo ordine le perturbazioni $S$, $va(V)$ e $vt(T)$ evolvono indipendentemente le une dalle altre (possiamo aspettarcelo perché nel momento in cui moltiplichiamo una per l'altra, otteniamo qualcosa di secondo ordine che va trascurato).

Adesso vogliamo estrarre quantità scalari anche da $va(V)$ e $vt(T)$.
Per fare ciò scomponiamo il vettore in una parte _curl-free_ e una _divergence-free_ (che possiamo sempre fare per il teorema di Helmholtz)
$ va(V) = va(V)_parallel + va(V)_perp $
dove $va(V)_parallel$ è la parte _curl-free_ ($curl va(V)_parallel = 0$) mentre $va(V)_perp$ è la parte _divergence-free_ ($div va(V)_perp = 0$).
Possiamo poi sfruttare il fatto che un campo vettoriale con rotore nullo può essere espresso come gradiente di un campo scalare $va(V)_parallel = - grad V_parallel$
$ va(V) = grad V_parallel - va(V)_perp $
Notiamo che il numero di gradi di libertà è sempre 3: 1 per il campo scalare $V_parallel$, e 2 per il campo vettoriale $va(V)_perp$ in quanto una componente è fissata dalla condizione _divergence-free_.

Per il tensore ripetiamo il processo per ciascun indice
$ vt(T) = vt(T)_(parallel parallel) + vt(T)_(perp perp) + vt(T)_((parallel perp)) $
dove $vt(T)_((parallel perp))$ è stato simmetrizzato.\
- $vt(T)_(parallel parallel)$ posso scriverlo come doppio gradiente di un campo scalare #aeq[$vt(T)_(parallel parallel) = grad grad^TT T_(parallel parallel)$]
- $vt(T)_(parallel perp)$ posso scrivere la componente $parallel$ come gradiente #aeq[$vt(T)_(parallel perp) = - grad va(T)^TT_(parallel perp)$]
- $vt(T)_(perp perp)$ posso dividerlo nella traccia (scalare) $T_(perp perp)$ e nella parte _transverse-traceless_ $vt(T)_(perp perp)^"T.T."$ (l'analogo del tensore di Weil) che avrà due gradi di libertà (come le polarizzazioni delle onde gravitazionali) #aeq[$vt(T)_(perp perp) = T_(perp perp) + vt(T)^"T.T."_(perp perp)$]
Quindi posso scrivere
$ vt(T) = grad grad^TT T_(parallel parallel) - grad va(T)^TT_(parallel perp) + T_(perp perp) + vt(T)^"T.T."_(perp perp) $
Ricapitolando i gradi di libertà abbiamo:
- 4 scalari: $S$, $V_(parallel)$, $T_(parallel parallel)$ e $T_(perp perp)$
- 4 vettoriali: 2 da $va(V)_(perp)$ e 2 da $va(T)_(parallel perp)$
- 2 tensoriali da $vt(T)^"T.T."_(perp perp)$
che sommano a 10 come ci aspettiamo.\
Noi in realtà siamo interessati solo alle componenti scalari (intuitivamente perché la densità è uno scalare) e si può dimostrare che le componenti tensoriali sono legate alle onde gravitazionali, mentre le componenti vettoriali non vengono osservate (e dai calcoli si ottiene che se ci fossero state sarebbero decadute).

Possiamo scrivere ora la distanza infinitesima
$ dd(s)^2 = a^2 (eta) [-(1 + 2S)dd(eta)^2 + 2 V_i dd(x)^i dd(eta) + tensor(gamma, -i, -j) (1 + 2 T_(perp perp)) dd(x)^i dd(x)^j] $

A questo punto bisognerebbe calcolare $tensor(Gamma, +mu, -nu, -sigma)$, $tensor(cal(R), -mu, -nu)$ e $cal(R)$ da cui si ricava $tensor(G, -mu, -nu)$ che si può poi inserire nell'equazione 
$ cancel(tensor(overline(G), -mu, -nu)) + tensor(delta G, -mu, -nu) = cancel(8 pi G tensor(overline(T), -mu, -nu)) + 8 pi G tensor(delta T, -mu, -nu) $
Noi non faremo questi conti.

== Perturbazioni del tensore energia impulso
Dobbiamo ora calcolare $tensor(delta T, -mu, -nu)$.
In linea di principio si procede in mobo analogo a quanto abbiamo fatto per $tensor(delta g, -mu, -nu)$, è però importante concentrarsi anche sul significato fisico delle perturbazioni che otteniamo con questo metodo.\
Sappiamo che $tensor(T, -mu, -nu)$ rappresenta il flusso di quadrimomento attraverso una superficie dove viene fissata una coordinata.
Sappiamo inoltre che l'energia e l'impulso possono essere ricondotte alla funzione di distribuzione $f_s (va(q), va(x))$.
Quindi possiamo imporre la perturbazione su $f$
$ f_s (va(q), va(x)) = overline(f)_s (q) + delta f_s (va(q), va(x)) $
a questo punto possiamo vedere come si traduce in perturbazione del tensore energia impulso (studiamo la versione con un indice alto e uno basso per non doverci preoccupare dei fattori $a$).
Partiamo dalla versione di ordine 0
$
  tensor(overline(T), +mu, -nu) =
  mat(
  - overline(rho), " " , va(0)^TT, " " ;
  " ", " ", " ", " ";
  va(0), " ", overline(p) bb(1)_3, " ";
  " ", " ", " ", " ";
augment: #(hline: 1, vline: 1))
$
con
$ - tensor(overline(T), +0, -0) = overline(rho) = sum_s g_s integral dd(q, 3)/(2 pi)^3 overline(f)_s (q) E_s (q) $
quindi la versione perturbata sarà
$ - tensor(delta T, +0, -0) = sum_s g_s integral dd(q, 3)/(2 pi)^3 delta f_s (va(q), va(x)) E_s (q) = delta rho (t, va(x)) $
dove la dipendenza da $t$ è implicita dentro la dipendenza da $va(q)$.

Passiamo alla componente $tensor(T, +i, -0)$.
Sappiamo che all'ordine 0 è nullo perché altrimenti avremmo individuato una direzione preferenziale che avrebbe violato l'isotropia.
Facendo effettivamente i calcoli (che noi non vediamo) si ottiene
$ tensor(delta T, +i, -0) = - (overline(rho)+ overline(p)) v^i $
// TODO: Magari spiegare (se lo capisci) perché c'è anche p.
dove $v^i$ è la velocità peculiare del fluido in un determinato punto.

Infine consideriamo $tensor(T, +i, -j)$.
All'ordine 0 abbiamo
$ tensor(overline(T), +i, -j) = overline(p) tensor(delta, +i, -j) = sum_s g_s integral dd(q, 3)/(2 pi)^3 overline(f)_s (q) abs(va(q))^2/(3 E_s (q)) tensor(delta, +i, -j) $
Questo possiamo vederlo come l'ordine 0 di qualcosa di più generico dove abbiamo non solo una $f$ di ordine superiore, ma anche dove $abs(va(q))^2 tensor(delta, +i, -j)$ è un caso particolare di $tensor(q, +i) tensor(q, -j)$.
$ tensor(T, +i, -j) = sum_s g_s integral dd(q, 3)/(2 pi)^3 (overline(f)_s (q) + delta f_s (va(q), va(x))) (tensor(q, +i) tensor(q, -j))/(3 E_s (q)) $
possiamo espandere ricordando che $tensor(q, +i) tensor(q, -j)$ ha la traccia di ordine zero e la parte traceless di ordine 1.\
Si ottiene
$ tensor(delta T, +i, -j) =
  underbrace(sum_s g_s integral dd(q, 3)/(2 pi)^3 delta f_s (va(q), va(x)) abs(va(q))^2/(3 E_s (q)), delta p (t, va(x))) +
  underbrace(sum_s g_s integral dd(q, 3)/(2 pi)^3 overline(f)_s (q) (tensor(q, +i) tensor(q, -j))/(3 E_s (q)), tensor(Pi, +i, -j)) $
dove $delta p (t, va(x))$ è la perturbazione alla pressione, mentre $tensor(Pi, +i, -j)$ viene detto *anisotropic stress tensor* ed è automaticamente traceless (la traccia è finita nell'ordine 0).

Ricapitolando abbiamo
$ cases(
  tensor(delta T, +0, -0) = - delta rho,
  tensor(delta T, +i, -0) = - (overline(rho) + overline(p)) v^i,
  tensor(delta T, +i, -j) = delta p med tensor(delta, +i, -j) + tensor(Pi, +i, -j)
) $
Come avevamo fatto per la metrica, la parte vettoriale e tensoriale possono essere scomposte estraendo degli scalari.
In particolare
$ va(v) = - grad v + va(v)_perp wide "e" wide vt(Pi) = grad grad^TT Pi + grad va(Pi)^TT_(parallel perp) + vt(Pi)_(perp perp) $
quindi le perturbazioni scalari del tensore energia impulso saranno $delta rho$, $delta p$, $v$ e $Pi$.
Il nostro obiettivo sarà mettere in relazione queste grandezze scalari con quelle trovate per la metrica.

== Cambi di coordinate e gauge
Prima di andare avanti nella trattazione, soffermiamoci un attimo a studiare cosa succede alle perturbazioni sotto cambio di sistema di riferimento.
Consideriamo una trasformazione infinitesima
$ x^mu --> Tilde(x)^alpha = x^alpha + delta x^alpha (x^mu) $
Sappiamo che le funzioni scalari non cambiano $phi(x^mu) = Tilde(phi) (Tilde(x)^mu)$.
È importante tenere bene a mente che questa è un'affermazione che si riferisce alla funzione scalare completa (quindi per noi ordine 0 più ordine 1), non è detto che questo valga per i singoli ordini (per come lo abbiamo costruito sappiamo che vale anche per l'ordine 0 da solo).\
Possiamo sviluppare rispetto a $delta x$
$ phi (x^mu) = Tilde(phi) (Tilde(x)^mu + delta x^mu) approx Tilde(phi) (x^mu) + pdv(Tilde(phi), x^alpha) delta x^alpha $
Adesso scomponiamo entrambi i membri nell'ordine 0 e ordine 1
$ cancel(overline(phi) (x^0)) + delta phi (x^0, x^i) = cancel(overline(Tilde(phi)) (x^0)) + delta Tilde(phi) (x^0, x^i) + underbracket(pdv(overline(Tilde(phi)), x^alpha), = partial_0 overline(phi)) delta x^alpha + underbrace(pdv(Tilde(delta phi), x^mu) delta x^mu, Order(2)) $
$ heq( Tilde(delta phi) = delta phi - (partial_0 overline(phi)) delta x^0 ) $
Quindi vediamo che le perturbazioni di campi scalari non trasformano come semplici campi scalari.

Per i tensori la situazione sarà ancora più complicata.
Prendiamo ad esempio la metrica:
#aeq[$ tensor(Tilde(g), -mu, -nu) &= pdv(Tilde(x)^alpha, x^mu) pdv(Tilde(x)^beta, x^nu) tensor(g, -alpha, -beta)\
  &= partial_mu (x^alpha + delta x^alpha) partial_nu (x^beta + delta x^beta) (tensor(overline(g), -alpha, -beta) + tensor(delta g, -alpha, -beta))\
  &= (tensor(delta, +alpha, -mu) + partial_mu delta x^alpha) (tensor(delta, +beta, -nu) + partial_nu delta x^beta) (tensor(overline(g), -alpha, -beta) + tensor(delta g, -alpha, -beta))\
  &= underbrace(tensor(overline(g), -mu, -nu) + tensor(delta g, -mu, -nu), tensor(g, -mu, -nu)) + 2 (partial_mu delta x^alpha) tensor(overline(g), -nu, -alpha) + Order(2) $]
$ tensor(Tilde(g), -mu, -nu) (Tilde(x)^lambda) = tensor(g, -mu, -nu) (x^lambda) + 2 evaluated((partial_mu delta x^alpha))_(x^lambda) med tensor(overline(g), -nu, -alpha)(x^lambda) $
Queste vanno ancora sviluppate rispetto a $delta x$.
Facciamolo per una componente (le altre sono analoghe)
#aeq[$ tensor(Tilde(g), -0, -0) = tensor(g, -0, -0) + 2 (partial_0 delta x^alpha) tensor(overline(g), -0, -alpha) $]
#aeq[$ -Tilde(a)^2 (1 + 2 Tilde(S)) = -a^2 (1 + 2 S) + 2 delta eta' (-a^2) $]
Sviluppiamo $Tilde(a)^2 = a^2 = [a (eta + delta eta)]^2 approx [a + a' delta eta]^2 approx a^2 + 2 a a' delta eta$ (dove la prima uguaglianza arriva dal fatto che $a$ è un campo scalare) e otteniamo
#aeq[$ cancel(a^2) + a^2 2 Tilde(S) + 2 a a' delta eta = cancel(a^2) + a^2 2 S + 2 a^2 delta eta' $]
$ Tilde(S) = S - cal(H) delta eta + delta eta' $
Facendo lo stesso calcolo per tutte le componenti si ottengono le relazioni per le perturbazioni scalari sotto cambio di coordinate:
$ heq(cases(
  Tilde(S) = S - cal(H) delta eta + delta eta',
  Tilde(V)_parallel = V_parallel + delta eta,
  Tilde(T)_(perp perp) = T_(perp perp) - cal(H) delta eta,
  Tilde(T)_(parallel parallel) = T_(parallel parallel) + delta x_parallel
)) wide "e" wide heq(cases(
  Tilde(delta rho) = delta rho - overline(rho)' delta eta,
  Tilde(delta p) = delta p - overline(p)' delta eta,
  Tilde(v) = v - delta x'_parallel,
  Tilde(Pi) = Pi
)) $
dove $delta x_parallel$ arriva dalla solita decomposizione $delta x^i = delta va(x)_parallel + delta va(x)_perp = -grad delta x_parallel + delta va(x)_perp$.\
Queste espressioni ci dicono che possiamo cambiare le nostre perturbazioni scalari cambiando sistema di riferimento.
In particolare abbiamo 2 gradi di libertà ($delta x_parallel$ e $delta eta$) sulle perturbazioni scalari.
Questa caratteristica viene detta *invarianza di gauge*.\
Possiamo quindi scegliere dei gauge (dei sistemi di coordinate) in cui gli scalari hanno una forma semplice e che ci semplificano la vita.
Un'altra cosa che posso fare è costruire delle quantità che siano invarianti di gauge.

Alcuni gauge di particolare interesse sono
/ Newtonian gauge o longitudinal gauge: in cui si fissa $V_parallel = T_(parallel parallel) = 0$.\
  In questo modo la metrica diventa completamente diagonale (da cui il nome longitudinal)
  $ dd(s)^2 = a^2 [-(1+2S) dd(eta)^2 + (1 + T_(perp perp)) tensor(delta, -i, -j) dd(x)^i dd(x)^j] $
/ Spatially flat gauge: in cui si pone $T_(parallel parallel) = T_(perp perp) = 0$.\
  In questo modo le perturbazioni non coinvolgono la parte puramente spaziale della metrica.
/ Syncronous gauge: in cui si pone $S = V_parallel = 0$.\
  In questo modo le perturbazioni non coinvolgono le parti temporali, dunque gli orologi non vengono perturbati.\
  Questo gauge non è totalmente determinato perché ho dipendenza solo da $delta x'_parallel$ che è una derivata, quindi $delta x_parallel$ viene fissato a meno di una costante di integrazione.
/ Comoving-syncronous gauge: in cui si pone $V_parallel = v = 0$.\
  Questo corrisponde a sedersi sulla perturbazioni (mettersi in un sistema comovente con le velocità peculiari).

Due tra i più importanti invarianti di gauge vengono detti *potenziali di Bardeen*
$ heq(Psi &= S - cal(H) (V_parallel + T'_(parallel parallel)) - (V_parallel + T'_(parallel parallel))') $
$ heq(Phi &= T_(perp perp) - cal(H) (V_parallel + T'_(parallel parallel))) $
Se ci mettiamo nel gauge longitudinale possiamo riscrivere la metrica in funzione di questi
$ dd(s)^2 = a^2 [-(1 + 2 Psi) dd(eta)^2 + (1 + 2 Phi) tensor(delta, -i, -j) dd(x)^i dd(x)^j] $
in quanto $Psi$ e $Phi$ corrispondono rispettivamente a $S$ e $T_(perp perp)$.
Vedremo in oltre che in questo caso $Psi$ corrisponde al potenziale gravitazionale newtoniano $psi$ (da cui deriva il nome del gauge).\
Altri invarianti di gauge sono:
/ Comoving gauge density perturbation: $Delta$ definita in modo tale che 
  $ heq(overline(rho) Delta = delta rho - overline(rho)' (v - V_parallel)) $
  questo è l'analogo comovente al density contrast $delta = (delta rho)/overline(rho)$
/ Curvature perturbation:
  $ heq( cases(zeta = -T_(perp perp) + cal(H) (delta rho)/(overline(rho)'), cal(R) = - T_(perp perp) + cal(H) (v + V_parallel)) ) $

== Evoluzione delle perturbazioni
=== Conservazione del tensore energia-impulso
Possiamo ora esprimere le condizioni sull'evoluzione delle perturbazioni imponendo l'equazione di conservazione del tensore energia impulso, e l'equazione di Einstein.
Iniziamo dalla prima
#aeq[$ nabla_mu tensor(T, +mu, -nu) = 0 wide "con" wide tensor(T, +mu, -nu) = sum_s tensor(T,-(s), +mu, -nu) $]
Questo significa che è il tensore totale a conservarsi.
Quello delle singole componenti può invece variare
$ nabla_mu tensor(T,-(A), +mu, +nu) = tensor(Q, -(A), +nu) $
a patto che 
$ sum_s tensor(Q, -(s), +nu) = 0 $
Questo si ricondurrà a condizioni sulle funzioni di distribuzione $f$ da cui le $T$ sono dipendenti.
Se ci sono interazioni tra specie, le $f$ saranno regolate dall'equazione di Boltzmann collisionale, mentre se non ci sono interazioni saranno governate dall'equazione di Liouville.\
Nel 'late universe' (quello matter dominated, relativamente vicino a noi) durante il quale si sono formate le strutture, tutte le specie erano disaccoppiate, dunque la conservazione delle $T$ può essere fatta per le singole specie.
In linea di principio non sappiamo se questo vale anche per energia oscura e materia oscura, che potrebbero interagire tra loro anche in questo periodo (ovviamente se $Lambda$ è davvero una costante, non c'è di sicuro interazione).

Dobbiamo valutare la conservazione sulle perturbazioni che ricordiamo essere
#aeq[$ cases(
tensor(delta T, +0, -0) = - delta rho,
tensor(delta T, +i, -0) = - (overline(rho) + overline(p)) v^i,
tensor(delta T, +i, -j) = delta p tensor(delta, +i, -j) + tensor(Pi, +i, -j)
) $]
All'ordine 0 avevamo visto che l'unica componente non identicamente nulla era $nabla_mu tensor(overline(T), +mu, -0)$ che ci dava
$ dot(overline(rho)) = - 3 H (overline(rho) + overline(p)) wide "o" wide overline(rho)' = -3 cal(H) (overline(rho) + overline(p)) $
Per la perturbazione possiamo aspettarci che ci siano termini analoghi (dati dalla diluizione causata dall'espansione).
Ci sarà poi un termine legato alla divergenza delle velocità.
Per quanto riguarda la diluizione dobbiamo tenere conto che non abbiamo più solo il fattore di scala $a$, infatti mettendoci in longitudinal gauge
#aeq[$ dd(s)^2 = a^2 [-(1+2Psi) dd(eta)^2 + (1+2 Phi) tensor(delta, -i, -j) dd(x)^i dd(x)^j ] $]
quindi in ruolo giocato da $a$ viene adesso sostituito da $a sqrt(1 + 2 Phi) ~ a (1 + Phi)$.
#aeq[$ cal(H) = dv(ln(a), eta) --> dv(ln[a(1+Phi)], eta) = 1/(a (1+Phi)) [a' (1+Phi) + a Phi'] = cal(H) + Phi'/(1+ Phi) $]
svolgendo tutti i calcoli (non visti a lezione) si ottiene
$ heq( delta rho' = - 3 cal(H) (delta rho + delta p) - 3 Phi' (overline(rho) + overline(p)) - div va(v) (overline(rho) + overline(p))) $
dove prendendo solo la parte scalare di $va(v)$ la divergenza viene sostituita dal laplaciano #box[$div va(v) = - laplacian v$]

Possiamo passare alle altre componenti dell'equazione di conservazione, che imporranno condizioni su altre quantità.
Non siamo tanto interessati all'evoluzione di $delta p$, dato che questo è legato a $delta rho$ dall'equazione di stato (per mezzo di $c_s$).
Quello che più ci interessa è come evolve $v$.
Questo però non compare da solo in nessuna delle componenti di $delta T$.
Dobbiamo quindi vedere come evolve la densità di momento $va(v)(overline(rho) + overline(p))$.
Otterremo l'analogo dell'equazione di Eulero, che sarà legata al gradiente di pressione e al potenziale gravitazionale.
Ci sarà anche il termine dovuto alla diluzione che va con una potenza di $a$.
Ci aspettiamo che ci sia un contributo 3 dato che si tratta di una densità, e un contributo 1 dato dal legame tra momento fisico e momento comovente $va(q) = a^(-1) va(P)$.
Quindi davanti al termine di diluizione avremo un fattore $3+1 = 4$.\
Si ottiene
$ [(overline(rho) + overline(p)) va(v)]' = underbrace(- 4 cal(H) (overline(rho) + overline(p)) va(v), "espansione") thick underbrace(- grad p - grad^TT dot vt(Pi), "pressioni") thick underbrace(- (overline(rho) + overline(p)) grad Psi, "gravità") $
espandendo il primo membro si ottiene
$ [(overline(rho) + overline(p)) va(v)]'
&= (overline(rho) + overline(p))' va(v) + (overline(rho) + overline(p)) va(v)'\
&= [overline(rho) (1 + w)]' va(v) + overline(rho)(1 + w) va(v)'\
&= overline(rho)' (1 + w) va(v) + overline(rho) w' va(v) + overline(rho) (1 + w) va(v)'\
&= -3 cal(H) overline(rho) (1 + w)^2 va(v) + overline(rho) w' va(v) + overline(rho)(1 + w) va(v)'
$
Anche il secondo membro può essere scritto sfruttando l'equazione di stato
#aeq[$ -4 cal(H) overline(rho) (1 + w) va(v) - overline(rho) (1 + w) grad Psi - c_s^2 grad delta rho - grad^TT dot vt(Pi) $]
Possiamo mettere assieme e isolare $va(v)'$
$ heq( v_i' = -(c_s^2 partial_i delta rho + partial_j tensor(Pi, -i, +j))/(overline(rho) (1+w)) - partial_i Psi - w'/(1+w) v_i - cal(H) v_i (1-3w) ) $
il termine $w'/(1 + w)$ ci aspettiamo sia 0 per radiazione e materia.
Abbiamo già visto però che per l'inflatone $w$ dipende dal tempo e dunque può dare un termine non nullo.
Questo è valido in generale per dei campi scalari o non.

=== Equazione di Einstein
Passiamo ora all'equazione di Einstein
$ tensor(delta G, -mu, -nu) = 8 pi G tensor(delta T, -mu, -nu) $
Per l'universo omogeneo avevamo solo le componenti $00$ e $i i$, mentre per le perturbazioni avremo anche tutti i termini off diagonal.
Anche in questo caso riporteremo solo il risultato e ci concentreremo sul significato fisico di quest'ultimo.

// TODO: Controllare se effettivamente la vediamo (al massimo è l'equazione 6.122 a pagina 226 del Baumann)
La componente $i i$ dà la l'equazione per l'evoluzione di $Psi$ (la vedremo poi).

La componente $i j$ con $i != j$ avrà a secondo membro solo $tensor(Pi, -i, -j)$.
Quindi questa equazione ci dice di che cosa $Pi$ è sorgente.
Si ottiene
$ heq(Psi + Phi = - 8 pi G a^2 Pi) $
Dunque se non c'è stress anisotropo, si ha che $Psi$ e $Phi$ sono uguali.
Quindi $Pi$ è sorgente di discrepanza tra i due.
Questo crea un diversità nel modo in cui lo spazio e il tempo reagiscono a perturbazioni.\
È importante soffermarci sul significato fisico di $Pi$.
Sappiamo che $delta p med tensor(delta, +i, -j) + tensor(Pi, +i, -j) <--> (q^i q_j)/E_s$.
Noi vogliamo quindi estrarre la parte trace-less da $(q^i q_j)/E_s$.
Per fare ciò usiamo un proiettore 
$ tensor(cal(P), +i, -j) = vu(e)^i vu(e)_j - 1/3 tensor(delta, +i, -j) quad ==> quad tensor(cal(P), +i, -j) q^j q_i = (vu(e) dot va(q))^2 - 1/3 abs(va(q))^2 = abs(va(q))^2 (underbracket((vu(e) dot vu(q)), cos(theta))^2 - 1/3) $
dove $theta$ è l'angolo tra $va(q)$ e $vu(e)$.
Ma $cos^2(theta) - 1/3$ è legato a $scr(L)_2 (cos(theta))$ il polinomio di legendre di ordine 2 (quello che descrive la forma degli orbitali atomici).
Quindi la parte trace-less è data dall'integrale di $f$ pesata su $scr(L)$, dunque legata alla distribuzione di quadrupolo.\
Ciò che genera $Pi$ deve essere qualcosa fuori dall'equilibrio.
Inoltre, dato che dipende da $q^2/E$ non può essere una specie non relativistica (che tende a $q^2/m -> 0$).\
Possono essere fotoni o neutrini.
I fotoni però si sono disaccoppiati tardi, quindi sono molto poco fuori dall'equilibrio.
L'unica specie candidata rimanente sono i neutrini.
Facendo i conti per i neutrini si ottiene che questi generano una differenza tra $Phi$ e $Psi$ di qualche decimo di percento, che noi possiamo trascurare.
Dunque d'ora in avanti possiamo approssimare (solo nel gauge longitudinale) $Phi approx - Psi$.\
Possiamo inserire questa relazione nell'equazione che avevamo trovato per $delta rho'$
$ delta rho' = - 3 cal(H) (delta rho + delta p) underbracket(- 3 Phi', + 3 Psi') (overline(rho) + overline(p)) - div va(v) (overline(rho) + overline(p)) $
Questo ci dice che la perturbazione di densità aumenta se c'è una buca di potenziale.

Passiamo alla componente $i 0$.
Si ottiene
$ heq( Phi' - cal(H) Psi = - 4 pi G a^2 (overline(rho) + overline(p)) v ) $

Infine la componente $0 0$
$ heq( laplacian Phi - 3 cal(H) (Phi' - cal(H) Psi) = - 4 pi G a^2 delta rho ) $
Questa ricorda un po' l'equazione di Poisson per la gravità all'ordine 0 $laplacian Psi = 4 pi G a^2 overline(rho)$ (sfruttando il fatto che $Phi approx - Psi$).
C'è però un termine aggiuntivo.
Questo è un termine puramente relativistico.
Per vedere quando diventa importante possiamo trasformare con Fourier
$ -k^2 Phi - 3 cal(H) (Phi' - cal(H) Psi) = - 4 pi G a^2 delta rho ) $
Vediamo che il primo termine scala con $k^2$ mentre il secondo con $cal(H)^2$ (assumiamo che la derivata rispetto ad $eta$ sia anch'essa dell'ordine di $cal(H)$).
Ricordiamo che $cal(H)^(-1)$ è il raggio di Hubble che è un indicatore della scala di causalità.
- Se $k cal(H)^(-1) << 1 thick ==> thick lambda >> cal(H)^(-1)$ la dimensione scala della perturbazione è molto maggorie del raggio di Hubble (quindi siamo a scale cosmologiche).
  In questo caso il termine relativistico è dominante.
- Se $k cal(H)^(-1) >> 1 thick ==> thick lambda << cal(H)^(-1)$ la dimensione scala della perturbazione è molto minore del raggio di Hubble (quindi siamo nell'universo vicino).
  In questo caso il termine relativistico è trascurabile.
Queste caratteristiche possiamo vederle direttamente nello spettro di potenza della CMB: se guardiamo a bassi $l$ (quindi a grandi scale) dobbiamo per forza tenere in considerazione le correzioni relativistiche.
Se invece guardiamo ad alti $l$ abbiamo una buona descrizione anche tenendo conto solo dei termini Newtoniani.

Possiamo ora combinare l'equazione $0 i$ con la $0 0$ ottenendo
$ laplacian Phi = - 4 pi G a^2 delta rho - 3 cal(H) (-4 pi G a^2 (overline(rho) + overline(p)) v) $
ma $3 cal(H) (overline(rho)+ overline(p)) = -overline(rho)'$ quindi
$ heq( laplacian Phi = - 4 pi G a^2 (delta rho - overline(rho)' v) = - 4 pi G a^2 overline(rho) Delta ) $
Abbiamo ottenuto una relazione tra invarianti di gauge ($Phi$ e $Delta$), quindi sarà valida in tutti i gauge.
Tornando a vederla come equazione di Poisson possiamo vedere il termine aggiuntivo $overline(rho)' v$ come se la materia che esce non debba essere contata tra quella che genera la buca di potenziale.
