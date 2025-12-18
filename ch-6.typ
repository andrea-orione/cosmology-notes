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

La componente $i i$ dà
$ heq(Phi'' + 1/3 laplacian (Psi - Phi) + cal(H) Psi' + 2 cal(H) Phi' + (2 cal(H)' + cal(H)^2) Psi = 4 pi G a^2 delta p) $

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
$ -k^2 Phi - 3 cal(H) (Phi' - cal(H) Psi) = - 4 pi G a^2 delta rho $
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

== Crescita delle strutture di materia
Vogliamo ora studiare la formazione delle strutture a grande scala.
Ricapitoliamo le equazioni che ci interessano.
$ cases(Phi'' + 1/3 laplacian (Psi - Phi) + cal(H) Psi' + 2 cal(H) Phi' + (2 cal(H)' + cal(H)^2) Psi = 4 pi G a^2 delta p,
Psi + Phi = - 8 pi G a^2 Pi,
 Phi' - cal(H) Psi = - 4 pi G a^2 (overline(rho) + overline(p)) v,
 laplacian Phi - 3 cal(H) (Phi' - cal(H) Psi) = - 4 pi G a^2 delta rho 
) $

Supporremo che queste evolvano in fasi a dominazione di una singola specie, quindi con $w approx c_s^2 approx "cost"$.
Iniziamo dalla prima equazione cercando di analizzare termine per termine.
Possiamo riscrivere il secondo membro sfruttando la quarta e l'equazione di stato
#aeq[$ 4pi G a^2 delta p = w 4 pi G a^2 c_s^2 delta rho = w laplacian Phi - 3 w cal(H) (Phi' - cal(H) Psi) $]
Valutiamo poi $cal(H)'$
#aeq[$ cal(H)' = (a'/a)' = a''/a - (a'/a)^2 $]
dove
#aeq[$ a''/a &= 1/a dv(,eta) (a dot(a)) = dv(,t)(a dot(a)) = dot(a)^2 + a^2/a dot.double(a)\
 &= cal(H)^2 - a^2 (4 pi G)/3 (overline(rho) + 3 overline(p)) = cal(H)^2 - underbrace((4 pi G)/3 overline(rho) a^2, cal(H)^2/2)(1 + 3w) = cal(H)^2/2 (1 - 3w)$]
#aeq[$ ==> quad cal(H)' = a''/a - (a'/a)^2 = cal(H)^2/2 (1 - 3w) - cal(H)^2 = -cal(H)^2/2(1 + 3w)$]
#aeq[$ ==> quad 2 cal(H)' + cal(H)^2 = -cal(H)^2(1 + 3w) + cal(H)^2 = -3w cal(H)^2 $]
Sostituendo ora nella prima equazione e sfurttando $Phi'' = - Psi''$ si ottiene
// FIXME: Controllare conti
$ heq(Psi'' + 3 Psi' cal(H)(1+ w) - w laplacian Psi = 0) $
Passiamo nello spazio di Fourier
$ Psi'' + 3 (1 + w) cal(H) Psi' + k^2 w Psi = 0 $
Possiamo ora risolverla nei due perio di dominazione

Durante la dominazione della materia ($w = 0$) vale
$ Psi'' + 3 cal(H) Psi' = 0 $
Inoltre in questo periodo vale
#aeq[$ cal(H)^2 = (8 pi G)/3 a^2 underbracket(overline(rho), prop a^(-3)) ~ a^(-1) quad ==> quad cal(H) ~ a^(-1/2) ~ 1/(2 eta) $]
quindi si ottiene che la soluzione _growing-mode_ è un andamento costante, mentre quella _decaying-mode_ è una decrescita con una potenza negativa di $eta$.
Dunque nell'universo che si espande il potenziale gravitazionale locale si congela.

Durante la dominazione della radiazione ($w = 1/3$) vale
$ Psi'' + 4 cal(H) Psi' + k^2/3 Psi = 0 $
In questo caso c'è una differenza di comportamento in base alla scala (se la perturbazione ha scala maggiore del raggio di Hubble $cal(H)^(-1)$)
- #[
Se $k << cal(H)$ (quindi $lambda >> cal(H)^(-1)$) posso trascurare il terzo termine.
Inoltre ho
#aeq[$ cal(H)^2 ~ a^(-2) quad => quad cal(H) ~ 1/eta $]
Dunque ho nuovamente che la _growing-mode_ è costante e la _decaying-mode_ è una decrescita a potenza negativa.\
Posso provare quindi a collegare il comportamento a queste scale tra i due periodi.
Per far ciò sfrutto un invariante di Gauge che avevo definito in precedenza:
$ zeta &= -T_(perp perp) + cal(H) (delta rho)/overline(rho)' = Psi + cal(H) (delta rho)/(- 3 cal(H) (overline(rho) + overline(p)))\
&= Psi + cal(H) 1/(- 3 cal(H) overline(rho) (1 + w)) (k^2 Psi - 3 cal(H) (Psi' + cal(H) Psi))/(4 pi G a^2) $
ma se $k << cal(H) => Psi = "cost"$ quindi
$ zeta = Psi + 2/3 Psi/(1 + w) = (5 + 3w)/(3 + 3w) Psi $
// TODO: Sono consapevole che è una gran cazzata questa, è un ragionamento circolare da manuale
Essendo $Psi$ costante, anche $zeta$ lo sarà quindi
$ zeta(a_"RD") = zeta(a_"MD") quad &==> quad 6/4 Psi(a_"RD") = 5/3 Psi(a_"MD") \ &==> quad heq( Psi(a_"MD") = 9/10 Psi(a_"RD") ) $
Quindi a grande scala il potenziale gravitazionale rimane costante, tranne nella transizione tra le due dominazionei dove scende (gradualmente) del 10%.
]
- #[
Se $k >> cal(H)$ (quindi $lambda << cal(H)^(-1)$) non posso trascurare più il terzo termine.
$ Psi'' + 4/eta Psi' + k^2/3 Psi = 0 $
moltiplicando tutto per $eta^2$ ottengo
#aeq[$ eta^2 Psi'' + 4 eta Psi' + eta^2 k^2/3 Psi = 0 $]
per risolvere questa equazione cambio variabile
#aeq[$ y = (k eta)/sqrt(3) wide "e" wide psi(y) =Psi/y $]
#aeq[$ y^2 dv(psi, y,2) + 2 y dv(psi, y) + (y^2 - 2) psi = 0 $]
Questa è l'equazione per le funzioni di Bessel di ordine 1 (l'ordine $l$ è determinato dal 2 nel terzo termine che corrisponde a $l(l+1)$).
$ psi (y) = C_1 j_1 (y) + C_2 n_1 (y) quad ==> quad Psi (k, eta) = A_(va(k)) (j_1 ((k eta)/sqrt(3)))/((k eta)/sqrt(3)) + B_(va(k)) (n_1 ((k eta)/sqrt(3)))/((k eta)/sqrt(3)) $
dove $j_1$ e $n_1$ sono le funzioni di Bessel
$ cases(
  j_1 (y) = sin(y)/y^2 - cos(y)/y,
  n_1 (y) = cos(y)/y^2 - sin(y)/y
) $
come si può notare $n_1$ diverge per $y-->0$ (quindi per $eta-->0$), dunque $Psi$ non può dipendere da $n_1$, quindi $B_va(k) = 0$.
$j_1$ invece per $y-->0$ va come $j_1 ~ y/3 + Order(3)$ e diverge per $eta --> infinity$.
$ Psi(k, eta) = A_va(k) [sin((k eta)/sqrt(3))/((k eta)/sqrt(3)) - cos((k eta)/sqrt(3))] $
]
Possiamo quindi graficare l'evoluzione di $Psi$ nel tempo, per diverse scale (per semplicità lo si rapporta al valore oggi)
#figure(
image("images/6-1_curvature_evolution.png", width: 80%)
)
Ricordiamo che $k$ sono numeri d'onda comoventi, quindi vengono stirati assieme alla 'griglia' e in questo sistema di coordinate rimangono uguali.
Invece $cal(H)^(-1)$ si allarga rispetto alla griglia al passare del tempo.
Se un modo di oscillazione entra nel raggio di Hubble prima di $eta_"eq"$ viene soprresso, mentre se entra dopo $eta_"eq"$ sopravvive solo ridotto del 10%.
// TODO: Mettere immagine

Possiamo quindi passare al calcolo delle perturbazioni di massa
$ -k^2 Psi = 4 pi G a^2 overline(rho) Delta $
Quest'ultima equazione va valutata nei quattro casi (2 dominazioni per 2 scale)
- #[
Se $k >> cal(H)$ allora $Delta approx delta$ e abbiamo lo stesso andamento che avevamo visto nel caso newtoniano
$ Delta approx cases(ln(a) quad &"se rad. dom.", a quad &"se mat. dom") $
]
- #[
Se $k << cal(H)$ allora
$ -k^2 Psi = underbracket(4 pi G a^2 overline(rho), cal(H)^2) Delta $
ma dato che $Psi$ deve essere costante, avremo che $Delta prop cal(H)^(-2)$
$ Delta prop cases(a^2 quad &"se rad. dom.", a quad &"se mat. dom.") $
]
Quindi una volta entrati nell'era di dominazione della materia, le perturbazioni a tutte le scale evolvono linearmente.
Al contrario durante la dominazione della radiazione le piccole scale vengono soppresse con una crescita solo logaritmica in confronto a quella quadratica delle grandi scale.\
Possiamo poi fare una supposizione dicendo che la $Delta (k, a)$ sia scomponibile in fattori che evolvono in funzione dello spazio e del tempo separatamente
$ Delta (k, a) = G(a) + T(k) + Delta (k, a_i) $
dove $G$ viene detta *growth function* mentre $T$ viene detta *transfer function*.\
Questa approssimazione non è esatta, però descrive abbastanza bene l'andamento generale
// TODO: Inserire immagine
Cerchiamo a valutare $G$ e $T$ andando a studiare due casi particolari: il caso di un modo $k_1$ che entra nel raggio di Hubble dopo l'equivalenza e uno $k_2$ che ci entra prima.
Per semplicità possiamo definire indichiamo con $k_"eq" = cal(H)(a_"eq")$ e con $a_k$ il fattore di scala a cui vale $k = cal(H)(a_k)$.
Possiamo iniziare studiando il caso $k_1 < k_"eq"$.
Questo evolverà quadraticamente fino all'equivalena e poi linearmente
#aeq[$ (Delta_m (k_1, a))/(Delta_m (k_1, a_i)) = (Delta_m (k_1, a_"eq"))/(Delta_m (k_1, a_i))(Delta_m (k_1, a))/(Delta_m (k_1, a_"eq"))=
  a^2_"eq"/a^2_i a/a_"eq"$]
Vediamo che otteniamo una dipendenza solo da $a$ e non da $k$, quindi possiamo concludere
$ heq((G (a))/(G (a_i)) = a^2_"eq"/a^2_i a/a_"eq") wide "e" wide heq( T(k < k_"eq") = 1) $
Passiamo ora a $k_2 > k_"eq"$. Questo ha un'evoluzione quadratica fino al quando non entra all'interno del raggio di Hubble, dopo ha una crescita logaritmica fino all'equivalenza e infine anche questo ha crescita lineare.
Dobbiamo fare inoltre un'approssimazione forte: dato che la crescita logaritmica è molto più lenta delle altre due, la trascureremo approssimando che in quel tratto rimanga $Delta$ rimanga costante
#aeq[$ (Delta_m (k_2, a))/(Delta_m (k_2, a_i)) = (Delta_m (k_2, a_(k_2)))/(Delta_m (k_2, a_i)) underbracket((Delta_m (k_2, a_"eq"))/(Delta_m (k_2, a_(k_2))), approx 1) (Delta_m (k_2, a))/(Delta_m (k_2, a_"eq"))=
  a^2_(k_2)/a^2_i a/a_"eq" = (a_"eq"/a_i)^2 a/a_"eq" a^2_(k_2)/a^2_"eq"$]
possiamo poi sfruttare il fatto che nel periodo di dominazione della radiazione vale la relazione $cal(H)^2 ~ a^2 overline(rho) ~ a^(-2)$ per riscrivere $a^2_(k_2)/a_"eq"^2 = (k_"eq"/k_2)^2$ (da notare come $a_"eq"$ e $a_(k_2)$ sono costanti e non dipendono da $a$, bensì da $k$).
Quindi si ottiene
#aeq[$ (Delta_m (k_2, a))/(Delta_m (k_2, a_i)) =
  (a_"eq"/a_i)^2 a/a_"eq" (k_"eq"/k_2)^2$]
Riconosciamo il termine $(G (a))/(G (a_i))$ accompagnato da un nuovo termine dipendente solo da $k$
$ heq( T(k > k_"eq") = (k_"eq"/k)^2) $

== Spettro di potenza
Possiamo provare a fare della statistica per le fluttuazioni (che saranno le quantità che poi potremo misurare)
La media sarà nulla perché $rho$ deve essere centrata su $overline(rho)$
$ expval(Delta (a, va(k))) = 0 $
Per quanto riguarda la varianza la cosa si fa più interessante
#aeq[$ expval(Delta^2) - cancel(expval(Delta)^2) = integral dd(x,3) Delta^2 (x) $]
Tuttavia noi conosciamo $Delta (va(k))$, quindi dobbiamo scrivere $Delta (x)$ come l'antitrasformata (il quadrato in realtà è un modulo quadro, quindi avremo la trasformata per il complesso coniugato)
#aeq[$ expval(Delta^2)
  &= integral dd(x, 3) [integral dd(k, 3)/(2 pi)^3 e^(-i va(k) dot va(x)) Delta(va(k))][integral dd(k, 3)/(2 pi)^3 e^(-i va(k) dot va(x)) Delta(va(k))]^*\
  &= integral dd(x, 3) integral dd(k, 3)/(2 pi)^3 integral dd(k', 3)/(2 pi)^3 e^(-i (va(k) - va(k')) dot va(x)) Delta(va(k)) med Delta^*(va(k'))\
  &= integral dd(k, 3)/(2 pi)^3 integral dd(k', 3) delta_("D")(va(k) - va(k')) med Delta(va(k)) med Delta^*(va(k'))\
  &= integral dd(k, 3)/(2 pi)^3 abs(Delta(va(k)))^2
  $]
dove $delta_"D"$ è la delta di Dirac (questa in realtà era una dimostrazione poco formale del teorema di Parseval che ci garantisce l'uguaglianza tra gli integrali nei due spazi).\
Ora possiamo imporre l'isotropia richiedendo che la varianza possa dipendere solo dal modulo di $k$.
In linea di principi $Delta$ può continuare a dipendere da $va(k)$, l'importante è che il suo quadrato dipenda solo dal modulo.
$ expval(Delta^2) = integral dd(k)/(2 pi^2) k^2 abs(Delta(va(k)))^2 = integral dd(ln(k)) k^3/(2 pi) abs(Delta)^2 $
abbiamo riscritto l'integrale passando al logaritmo perché come integrando troviamo una quantità molto importante (che arriva dal mondo del _signal processing_) detta *matter power spectrum* $cal(P)$
$ heq(cal(P)_(m)(k) = k^3/(2 pi) abs(Delta)^(2)(k)) $
Spesso si una la *matter power spectrum density* $P_m$ che a volte viene chiamata essa stessa power spectrum
$ heq(P_(m)(k) = (2 pi)/k^3 cal(P)_(m)(k) = abs(Delta)^(2)(k)) $

Le definizioni che abbiamo ottenuto fin'ora arrivano da una ragionamento che non è del tutto formalmente corretto.
Vogliamo ora riformularlo con una teoria un po' più solida.
Innanzitutto possiamo riflettere sul fatto che ha senso parlare di varianza se pensiamo alle fluttuazioni come a variabili stocastiche (considerazione sensata se pensiamo che arrivano da fluttuazioni quantistiche).
Quindi pensiamo a una perturbazione $f(va(x))$ come a un elemento estratto da una distribuzione di probabilità $PP[f]$.
Notiamo che questa non è una distribuzione di probabilità nel senso che siamo abituati a vedere, infatti si tratta di un funzionale che prende come argomento una funzione invece che un numero.
Dato che stiamo lavorando con funzionali, avremo due nozioni di media
$ overline(f) = 1/V integral_V dd(x,3) f(va(x)) wide "e" wide expval(f) = integral dd(f, d:cal(D)) med f med PP[f] $
La prima definizione è una media sul volume per una particolare realizzazione di $f$ (quella dell'universo in cui viviamo).
La seconda invece è una media di ensemble ossia una media su tutte le realizzazioni di $f$ pesate per la distribuzione di probabilità che ciascuna avvenga.
Purtroppo noi non siamo dotati di infiniti universi e quindi possima osservare una sola realizzazione di $f$.
Però possiamo fare l'ipotesi che essendo il volume dell'universo incredibilmente grande, i due valori medi tendano a coincidere.
Questa viene detta *ipotesi ergodica* (è come se facessi delle medie su sottovolumi più piccoli che rappresentano diverse realizzazioni di $f$).\
Torniamo a parlare di varianza $"Var"[Delta_m] = expval(Delta_m^2)$.
Dato che stiamo lavorando su volumi finiti dobbiamo utilizzare la serie di Fourier invece che la trasformata
#aeq[$
  1/V integral_V dd(x,3) [Delta_m (va(x))]^2 &= 1/V integral_V dd(x,3) [sum_(va(k)_1) Delta_m (va(k)_1) thin e^(i va(k)_1 dot va(x)) ][sum_(va(k)_2) Delta_m (va(k)_2) thin e^(i va(k)_2 dot va(x)) ]^*\
  &= sum_(va(k)_1) sum_(va(k)_2) Delta_m (va(k)_1) Delta_m^* (va(k)_2) integral_V dd(x,3)/V e^(i (va(k)_1 - va(k)_2) dot va(x))\
  &= sum_(va(k)_1) sum_(va(k)_2) Delta_m (va(k)_1) Delta_m^* (va(k)_2) delta_"K" (va(k)_1 - va(k)_2)\
  &= sum_(va(k)) abs(Delta_m (va(k)))^2
$]
La varianza però non è altro che un caso particolare della covarianza
$ expval(Delta_m (va(x)_1) Delta_m (va(x)_2)) = xi (va(x)_1,va(x)_2) = integral dd(Delta_m, d: cal(D)) PP[Delta_m] Delta_m (va(x)_1) Delta_m (va(x)_2) $
dove $xi$ viene detto *fattore di correlazione* (è quello che in teoria dei campi viene detto correlatore).
In linea di principio noi non sappiamo com'è fatta $PP$, però possiamo sfruttare il principio cosmologico per ottenere delle proprietà di $xi$
- Dato che deve esserci invarianza traslazionale, $xi$ può dipendere solo dalla distanza tra i due punti $va(s) = va(x)_1 - va(x)_2$
- Dato che deve esserci invarianza rotazionale, può dipendere solo dal modulo della distanza e non dalla direzione
Quindi $xi (va(x)_1,va(x)_2) = xi (s)$.
Questa condizione ha un'interessante conseguenza detta *integral constraint* sull'integrale di $xi$ rispetto a $s$
$ dd(s,3) xi(s) &= integral dd(s,3) 1/V integral dd(x,3) Delta_m (va(x)) Delta_m (va(x) + va(s))\ &= 1/V integral dd(x_1,3) integral dd(x_2,3) Delta_m (va(x)_1) Delta_m (va(x)_2)\ &= 1/V integral dd(x_1,3) Delta_m (va(x)_1) integral dd(x_2,3) Delta_m (va(x)_2) = 0 $
dove l'ultima uguaglianza arriva dal fatto che il valor medio della singola $Delta_m$ deve essere nullo.\
Questo risultato vuo dire che se la varianza (corrispondente a $xi(0)$) è positiva, allora alle distanze maggiori di zero ci aspettiamo ci sia anticorrelazione.
Ciò possiamo spiegarcelo pensando che attorno ad una sovradensità è più probabile che ci sia una sottodensità.

Possiamo adesso scrivere la covarianza in spazio di Fourier
$
expval(Delta_m (va(k)_1) Delta_m^* (va(k)_2))
&= expval( integral_(V_1) dd(x_1,3)/V e^(-i va(k)_1 dot va(x)_1) Delta_m (va(x)_1) integral_(V_2) dd(x_2,3)/V e^(+i va(k)_2 dot va(x)_2) Delta_m^* (va(x)_2))\
&= 1/(V_1 V_2) integral_(V_1) dd(x_1,3) integral_(V_2) dd(x_2,3) e^(-i va(k)_1 dot va(x)_1) e^(+i va(k)_2 dot va(x)_2) underbrace(expval( Delta_m (va(x)_1) Delta_m (va(x)_2)), xi(s))\
&= 1/(V_1 V_2) integral_(V_1) dd(s,3) integral_(V_2) dd(x_2,3) underbracket(e^(-i va(k)_1 dot (va(x)_2 + va(s))) e^(+i va(k)_2 dot va(x)_2),  e^(-i (va(k)_1 - va(k)_2) dot va(x)_2) e^(+i va(k)_1 dot va(s))) xi(s)\
&=delta_"K" (va(k)_1 - va(k)_2) 1/V integral_V dd(s,3) e^(-i va(k)_1 dot va(s)) xi(s)
$
Però noi sappiamo grazie all'integral constraint che $xi(s)$ è sommabile, quindi possiam far tendere il volume all'infinito, in modo tale che la delta di Kronecker diventi delta di Dirac e che l'integrale diventi la trasformata di Fourier
$ expval(Delta_m (va(k)_1) Delta_m^* (va(k)_2)) = delta_"D" (va(k)_1 - va(k)_2) scr(F) [xi] (va(k)) $
Il fatto che ci sia la delta di Dirac significa che sono presenti solo varianze (non ci sono i "termini off-diagonal" della matrice).
Quindi i vari modi $va(k)$ non si _parlano_ tra loro.\
Possiamo ora sfruttare il fatto che $xi$ dipende solo dal modulo di $s$.
Questo fa sì che la trasformata di Fourier assuma una forma particolare, detta trasformata di Hankel
$
scr(F) [xi] (va(k))
&= integral dd(s) e^(-i va(k) dot va(s)) xi(s)\
&= integral_0^(2 pi) dd(phi) integral_(-1)^(1) dd(cos(theta)) integral_0^(+ infinity) dd(s) s^2 e^(-i k s cos(theta)) xi(s)\
&= 2 pi integral_0^(+ infinity) dd(s) s^2 [(e^(-i k s cos(theta)))/(-i k s)]_(-1)^(+1) xi(s)\
&= 4 pi integral_0^(+ infinity) dd(s) s^2 (-e^(-i k s) + e^(+i k s))/(2 i) xi(s)/(k s)\
&= 4 pi integral_0^(+ infinity) dd(s) s^2 sin(k s)/(k s) xi(s) = scr(F)[xi] (k)
$
Vediamo quindi che anche la trasformata dipende solo dal modulo di $va(k)$ come ci aspettavamo.\
Possiamo analogamente calcolare l'antitrasformata
$ xi(s) = integral_0^(+ infinity) dd(k)/(2 pi^2) k^2 sin(k s)/(k s) scr(F)[xi](k) = scr(F)[xi] (k) $
Adesso abbiamo due formule per la varianaza che possiamo confrontare
#aeq[$ xi(0) = sum_(va(k)) abs(Delta_m (va(k)))^2 --> integral dd(k,3)/(2 pi)^3 abs(Delta_m (va(k)))^2 = integral dd(ln(k)) underbrace(k^3/(2 pi^2) abs(Delta_m (va(k)))^2, cal(P)_m (k))$]
e
#aeq[$ xi(0) = integral dd(k)/(2 pi^2) k^2 1 scr(F)[xi](k) $]
quindi
$ heq(scr(F)[xi](k) = (2 pi^2)/k^3 cal(P)_m (k) = P_m (k)) $

Rimane solo più un passaggio da fare:
queste informazioni le abbiamo scritte in funzione di $Delta$ che però cambia l'andamento in base a se ci troviamo prima o dopo l'equivalenza.
Vorremmo quindi riscrivere lo spettro di potenza in funzione di qualcosa che non cambi.
La soluzione è scriverlo in funzione della curvature perturbation $zeta$.
Per far ciò iniziamo dall'equazione di Poisson
#aeq[$ laplacian Psi = 4 pi G a^2 Delta_m overline(rho)$]
riscriviamo il secondo termine in funzione dell'evoluzione di $overline(rho) = overline(rho)_(m 0) a^(-3) = Omega rho_c a^(-3)$
#aeq[
  $4 pi G a^2 Delta_m (va(k), a) overline(rho)_m &= (G(a))/G(a_i) T(k) 4 pi G a^2 a^(-3) Omega_m rho_c Delta_m (va(k), a_i)\
&= (G(a)"/"a)/(G(a_i)"/"a_i) T(k) underbrace(4 pi G Omega_m rho_c Delta_m (va(k), a_i) a^(-1), laplacian Psi (k^2, a_i))
  $]
quindi 
$ Psi(va(k), a) = (G(a)"/"a)/(G(a_i)"/"a_i) Psi(va(k), a_i) T(k) $
Abbiamo quindi una scomposizione come avevamo per $Delta_m$, ma il growth rate viene riscalato per $a$.
Si definisce quindi il *growth suppression rate*
$ heq(g(a) prop G(a)/a) $
tornando allo spettro di potenza
$
cal(P)_m (k, a) &= k^3/(2 pi^2) abs(Delta_m (va(k),a))^2 = [(G(a))/(G(a_i))]^2 T^2 (k) k^3/(2 pi^2) abs(Delta_m (va(k), a))^2\
&= [(G(a))/(G(a_i))]^2 T^2 (k) k^3/(2 pi^2) (-3/2 Omega_m H_0^2 (k^(-2))/(a_i))^(-2) abs(Psi(va(k), a_i))^2\
$
a questo punto passiamo a $zeta = (5 +3w)/(3+3w) Psi$ con $w=0$
$
cal(P)_m (k, a) &= [(G(a))/(G(a_i)"/"a_i)]^2 T^2 (k) k^3/(2 pi^2) k^4/(Omega_m^2 H_0^4) 4/9 abs(3/5 zeta(va(k),a_i))^2\
&= [(G(a))/(G(a_i)"/"a_i)]^2 T^2 (k) k^4/(Omega_m^2 H_0^4) 4/25 underbrace(k^3/(2 pi^2) abs(zeta(va(k),a_i))^2, cal(P)_(zeta zeta) (k))
$
Ho quindi questo spettro di potenza che ora non varia l'evoluzione in base all'equivalenza
$ cal(P)_(zeta zeta) (k) = k^3/(2 pi^2) abs(zeta(va(k),a_i))^2 $
In linea di principio non sappiamo nulla su $cal(P)_(zeta zeta)$, ma possiamo fare un ansatz che abbia la forma di potenza
$ cal(P)_(zeta zeta) (k) = A (k/k_p)^(n - 1) $
questo viene detto *ansatz di Harrison-Zel'dovich*.
Dato che vediamo tante galassie che sono strutture a media scala, ci aspettiamo che la potenza cresca con potenza circa 0.
Se avesse una potenza più grande, sarebbe più alta a larga scala e quindi vedremmo molti più ammassi.
Se avesse una potenza più piccola, sarebbe più alta a piccola scala e quindi vedremmo molti più buchi neri.

== Formazione delle strutture
Siamo arrivati all'espressione per lo spettro di potenza
#aeq[$ cal(P)_m (k, a) = [(G(a))/(G(a_i)"/"a_i)]^2 T^2(k) k^4 4/(25 H_0^2 Omega_m^2) cal(P)_(zeta zeta) (k, a) $]
con
#aeq[$ T(k) = cases(1 wide &k<k_"eq", k^(-2) ln(k/k_"eq") &k>k_"eq") wide "e" wide cal(P)_(zeta zeta) = A_s (k/k_p)^(n_s - 1) $]
nell'approssimazione di Harrison-Zel'dovich. Possiamo riscrivere come
#aeq[$ cal(P)_m (k, a) prop D^2(a) T^2(k) k^(3+n_s) $]
Possiamo determinare le costanti $A_s$ e $n_s$ dalle osservazioni della CMB e delle Large Scale Structures ottenendo $A_s approx num("e-9")$ e $n_s approx 0.96$.\
Possiamo quindi fare i grafici dello spettro di potenza
\ #text(red)[mettere grafico]\
// TODO: Mettere grafico
Tendenzialmente però si tende ad utilizzare la densità $P$, perché è anche quella che si misura (basta moltiplicare $cal(P)$ per $k^3$).
\ #text(red)[mettere grafico]\
// TODO: Mettere grafico
Dal punto di inversione che osserviamo, possiamo ricavare informazioni sul punto di equivalenza.\
C'è però un problema: se andiamo a $k$ alti, ad un certo punto arriviamo alle scale delle singole galassie e delle singole stelle.
Queste strutture però sono soggette a fenomeni più complessi rispetto alla sola interazione gravitazionale, e questi effetti non possono essere catturati da un'approssimazione al primo ordine.
Dunque bisogna aggingere una correzione ad alti $k$ ottenuta tramite simulazioni.
\ #text(red)[mettere grafico]\
// TODO: Mettere grafico
Fin'ora infatti ci siamo concentrati sul caso in cui il density contrast $delta$ fosse molto minore di 1.
Adesso che andiamo a guardare la formazione delle strutture dobbiamo spingerci a $delta > 1$.

Per la formazione delle strutture esistono due possibili scenari:
/ Bottom-up: si formano prima le strutture piccole che poi si uniscono per formare quelle a scala maggiore
/ Top-down: si formano prima le strutture grandi che poi coagulano anche a piccola scala
Si può dimostrare che il modello Bottom-up è favorito nel caso di Cold Dark Matter (che correntemente è il modello più accreditato), mentre quello Top-down è favorito nel caso di Hot Dark Matter.
#digressione[
  Al momento ci sono due teorie maggiori su cosa costituisca la materia oscura
  / I MACHOs: (MAssive Compact Halo Objects) oggetti molto grandi e massivi che non sono visibili come i buchi neri
  / Le WIMPs: (Weakly Interactive Massive Particles) particelle molto massive che interagiscono solo tramite l'interazione debole
  Ad oggi sono favorite le WIMPs.
]

=== Modello di collasso sferico
Per studiare come si formano le strutture iniziamo da un caso semplificato: il modello a collasso sferico.
Questo l'avevamo già visto nella @sec:collasso_sferico, notando che l'evoluzione di una sovradensità a simmetria sferica era identica all'evoluzione di un universo dominto da materia e curvatura.
Ricordiamo che una particolarità di questo caso era il completo disaccoppiamento della perturbazione dall'universo circostante, che ci permetterà di semplificare molto la trattazione.
Avevamo ottenuto la parametrizzazione
$ cases(r = (G M)/(2 abs(E)) (1 - cos(theta)), t = (G M)/(2 abs(E))^(3/2) (theta - sin(theta))) $
dove $theta = 2 abs(E) eta$ è il parametro e $E$ è l'energia interna del sistema.\
Possiamo aspettarci che nel primo periodo, le perturbazioni fossero molto piccole.
Quindi possiamo sviluppare in attorno a $theta = 0$
$ cases(r = (G M)/(2 abs(E)) theta^2/2, t = (G M)/(2 abs(E))^(3/2) theta^3/6) $
ottenendo
$ r(t) prop t^(2/3) $
che è esattamente quello che avevamo già ottenuto in precedenza per perturbazioni in un universo matter dominated.\
Vogliamo ora scrivere $delta$, per fare ciò ci servono $rho$ e $overline(rho)$.
$rho$ è facile ottenerlo perché essendo la struttura disaccoppiata la massa è sempre la stessa, quindi la densità sarà data semplicemente dalla massa sul volume.
#aeq[$ rho = M/V = (3M)/(4 pi r^2(theta))$]
Per $overline(rho)$ possiamo usare l'equazione di Friedman
#aeq[$ overline(rho) = (3 H^2)/(8 pi G) $]
usando il fatto che in dominazione della materia vale $H = 2/(3t)$ otteniamo
#aeq[$ overline(rho) = 1/(6 pi G t^2(theta)) $]
possiamo quindi scrivere l'espressione per $delta$
$ rho/overline(rho) = 1 - delta = (18 M pi G t^2)/(4 pi r^3) = 9/2 (theta - sin(theta))^2/(1- cos(theta))^3 $
possiamo graficare questo risultato confrontandolo con l'approssimazione lineare
\ #text(red)[mettere grafico]\
// TODO: Mettere grafico
Se però guardiamo i risultati delle simulazioni osserviamo un risultato differente da entrambi.
Questo sempre perché il processo di formazione delle galassie coinvolge processi non solo gravitazionali
\ #text(red)[mettere grafico]\
// TODO: Mettere grafico
Infatti quello che si ottiene che a $theta = 2 pi$ si ha la formazione di un alone di materia oscura.

All'atto pratico quando si vogliono poi fare simulazioni a grande scala dell'universo non si possono tenere conto di tutti questi processi e allora si segue l'approssimazione solo gravitazionale fino ad un certo punto e dopo si sostituisce il valore con il risultato della formazione dell'alone.
Tendenzialmente il limite prima di sostituire è $delta_"linear"(theta = 2 pi) = 1.69$.\
Per capire quale valore sostituirci bisogna andare a guardare i processi che effettivamente avvengono.
Il processo principale è quello di *virializzazione*.
Il teorema del viriale ci dice se il sistema è virializzato
$ T_"vir" = -1/2 V_"vir" $
con $T$ l'energia cinetica e $V$ la potenziale.
Possiamo riscriverlo in funzione dell'energia totale
#aeq[$E_"vir" = T_"vir" + V_"vir" = 1/2 V_"vir"$]
Dato che l'energia si conserva, questa sarà uguale al punto di inversione (dove $E = V_"turn-around"$ perché l'energia cinetica è nulla).
Quindi si ha
$ 1/2 V_"vir" = V_"turn-around" $
ora possiamo sfruttare il fatto che il potenziale segue $V prop 1/r$ ottenendo
$ r_"vir" = 1/2 r_"turn-around" => rho_"vir" = 8 rho_"turn-around" $
mentre per $overline(rho)$ si sfrutta il fatto che il $theta$ a cui avviene la virializzazione e il doppio di quello a cui c'è il turn around
$ overline(rho)_"vir" = overline(rho)_"turn-around"/4 $
quindi il density contrast diventa
$ 1 + delta_"vir" = rho_"vir"/overline(rho)_"vir" = (8 rho_"turn-around")/(overline(rho)_"turn-around""/"4) = 32 (1+delta_"turn-around") approx 178 $
dove nell'ultimo passaggio abbiamo usato il valore ottenuto prima (dato che al turn around gli altri processi sono ancora trascurabili).\
Per ricapitolare in una simulazione a grande scala possiamo usare sempre il modello lineare, però quando in una zona viene raggiunto un valore $delta_"lin" = 1.69$ lo si sostituisce (dopo un tempo prefissato) con il valore $delta approx 178$.

=== Teoria di Press-Schechter
Abbiamo appena viesto che quando viene raggiunta una perturbazione che in teoria lineare eccede $delta_"lin" = 1.69$, si forma un alone virializzato con $delta_"vir" = 178 $.
Questo fatto è stato sfruttato da Press e Shechter per formulare una teoria che descrivesse la statistica di comparizione degli aloni di materia oscura.
Questa viene chiamata *teoria di Press-Schechter*.

Il primo passo consiste nell'introduzione di un filtro (il termine inglese _smoothing_ rende bene l'idea) della densità evoluta linearmente.
Questo fa sì che vengano rimossi i contributi sotto una scala $R$.
Per fare ciò si considera la massa contenuta all'interno di una distanza $R$ da un punto $va(x)$
#aeq[$ M(va(x), <R) &= integral_(V_R) dd(y,3) med rho(y) = integral dd(y,3) med rho(va(y)) med Theta(1- abs(va(x)- va(y))/R)\
&= integral dd(y,3) med (overline(rho) + delta rho(va(y))) thick Theta(1- abs(va(x)- va(y))/R)\
&= (4 pi)/3 overline(rho) R^3 + (4 pi)/3 R^3 integral dd(y,3) med  delta rho(va(y))thick underbrace(Theta(dots)/((4 pi)/3 R^3), W_"TH") $]
dove $W_"TH"$ viene detta *funzione top-hat* (per via della sua forma) che sarà
$ W_"TH" (abs(va(x) - va(y)), R) = cases(3/(4 pi R^3) quad &"se" abs(va(x) - va(y)) < R, 0 & "se" abs(va(x) - va(y)) > R) $
quindi indicando con $expval(M)_R$ la massa media (ottenuta come densità media per volume)
$ M(va(x), <R) = expval(M)_R + expval(M)_R underbrace(1/rho integral dd(y,3) med delta rho(va(y)) thick W_"TH" (abs(va(x) - va(y)), R), delta_M) = expval(M)_R [1 + delta_M] $
dove
// TODO: Considerare di chiamarla delta_R
$ heq(delta_M (va(x)) = 1/rho integral dd(y,3) med delta rho(va(y)) thick W_"TH" (abs(va(x) - va(y)), R)) $
Notiamo che questo calcolo non sta aggiungengo informazione 'fisica', dunque la statistica di $delta_M$ sarà la stessa di $delta$.
Possiamo pensarlo come il processo analogo al _blurring_ (sfocamento) che si può fare nelle immagini, dove ogni pixel viene sostituito con la media pesata dei vicini.
In questo caso $W_"TH"$ rappresenta il peso.
In termini tecnici stiamo facendo la convoluzione di $delta$ con $W_"TH"$.\
Possiamo adesso passare nello spazio di Fourier, dove la convoluzione diventa un prodotto
$ delta_M (va(k)) = delta(va(k)) med W_"TH" (va(k), R) $
è necessario fare la trasformata di Fourier di $W_"TH"$ che si può dimostrare essere
$ W_"TH" (va(k), R) &= integral dd(y, 3) med e^(-i va(k) dot va(y)) med W_"TH" (abs(va(y)), R)\ &= 3/(k R)^3 [sin(k R) - k R cos(k R)] = W_"TH" (k, R) $
Notiamo che anche la trasformata dipende solo dal modulo di $va(k)$ come ci saremmo potuti aspettare.
Notiamo inoltre che $W_"TH"$ è una funzione monotona decrescente di $k$.

Possiamo adesso passare a fare statistica.
Vogliamo chiederci quale sia la probabilità di incontrare un alone di massa $M$.
Per fare questo ci serve sapere quale sia la densità di probabilità, che in linea di principio non sappiamo, ma che possiamo decidere di assumere come gaussiana
$ PP(delta_M) = 1/(sqrt(2 pi) sigma_M) exp{ - delta_M^2/(2 sigma_M^2)} $
dove $sigma_M^2$ è la varianza che sarà data da
$ sigma_M^2 = integral dd(ln(k)) med cal(P)_m (k) med abs(W_"TH" (k, R))^2 $
che arriva dalla $xi(0)$ pesato per il filtro.
Notiamo che questo integrale converge perchè $W_"TH"$ scende con $(k R)^(-3)$
#osservazione[
  $PP[delta_M]$ è una funzione della posizione.
  Si può pensarla nel seguente modo: prendiamo un punto $va(x)$, in quel punto la $delta_M$ avrà valori distribuiti secondo una gaussiana.
]
#osservazione[
  In realtà $PP[delta_M]$ non può essere gaussiana perché è limitata nei valori che può assumere $delta_M in [-1, +infinity)$.
  Si può dimostrare che una migliore approssimazione è la distribuzione log-normale (ovvero è la quantità $ln(1 + delta_M)$ a essere gaussiana).
  Poi per alcune varie e magiche proprietà delle gaussiane, possiamo fare la trattazione con $delta_M$ gaussiano e non ci perdiamo troppo.
]

Noi vogliamo calcolare la probabilità che si formi un alone, questo corrisponde alla probabilità che $delta_M$ superi il valore critico $delta_c approx 1.69$.
Quindi avremo
$ PP[delta_M >= delta_c]  integral_(delta_c)^(+ infinity) dd(delta_M, d: cal(D)) PP[delta_M] = 1/2 op("erfc") [delta_c/(sqrt(2) sigma_M)] $<eq:prob_alone>
dove $op("erfc")$ è la _complementary error function_ $op("erfc") (x) = 1-erf(x)$
// TODO: Mettere immagine
\ #text(red)[mettere immagine]\
di solito si usa definire la *peak height*
$ heq(nu_c = delta_c/sigma_M) $
Sappiamo che la varianza $sigma_M$ dipende dalla $R$ su cui facciamo lo _smoothing_.
Dato che $W ~ (k R)^(-3)$, più $R$ sarà grande, più la varianza sarà piccola.
Ma allora più mi metto a grande scala, minore sarà la varianza e minore sarà dunque la probabilità di formare un alone.\
Quindi questo suggerisce un modello bottom-up, che effettivamente è quello che si osserva.
Infatti ad alti $cal(Z)$ non si osservano strutture a grande scala come gli ammassi di galassie.

Avevamo detto precedentemente che l'andamento bottom-up suggerisce un modello a materia oscura fredda.
Questo è per materia oscura calda (come ad esempio i neutrini che sono relativistici) la velocità è talmente alta da 'lavar via' le fluttuazioni a piccola scala.
Si può definire una lunghezza *free-streaming* $k_"fs"$ che rappresenta la scala a cui le fluttuazioni vengono eliminate dall'alta velocità ($v_1 > v_2 <==> k_"fs" (v_1) < k_"fs" (v_2)$).
Oltre questo $k_"fs"$ (quindi a scale più piccole) non si hanno fluttuazioni e quindi non si formano strutture.
Questo è il motivo per cui la materia favorisce un modello top-down, infatti una volta che si sono formate strutture a grande scala, il sistema si è 'raffreddato' si iniziano a formarsi 'grumi' anche a scale più piccole.

Tornando alla probabilità, noi ci aspettiamo che più aumenta la varianza più la probabilità sarà alta e per $sigma_M --> infinity$ ci aspetteremmo di avere la certezza di formare l'alone.
Tuttavia abbiamo che $nu_c --> 0 ==> op("erfc") --> 1 ==> PP --> 1/2$ che è metà di quanto vorremmo.
L'idea (un po' naive) di Press e Schechter fu di moltiplicare per 2 la probabiltà nell'integrale dell'@eq:prob_alone (quindi mandando $PP --> 2 PP$).\
Quest'idea è stata poi studiata da Bond, Cole, Efstathiou e Kaiser che sono riusciti a darne una spiegazione.
Innanzitutto notano che l'idea che le sovradensità sferiche si disaccoppino dall'universo circostante non può essere del tutto corretta, in quanto se c'è della materia che fluisce dentro queste sovradensità allora la zona circostante deve perdere materia.
Dunque la $delta_M$ va trattata in modo diverso.
Loro proposero di assumere che $delta_M$ segua un random walk centrato in 0 con varianza $sigma_M$.
La probabilità gaussiana la si ottiene come la 'proiezione integrata nel tempo
// TODO: Mettere immagine
\ #text(red)[mettere immagine]\
Il problema è che in questo modello ci sono anche dei casi in cui $delta_M$ supera $delta_c$ e poi torna indietro.
Ma noi sappiamo che una volta superato $delta_c$ si forma l'alone.
Dunque alla gaussiana devo togliere i contributi di tutti questi eventi.
Si può dimostrare che questo corrisponde a togliere un'altra gaussiana centrata in $2 delta_c$.
// TODO: Mettere immagine
\ #text(red)[mettere immagine]\
$ PP[delta_M >= delta_c] = integral_(delta_c)^(+ infinity) dd(delta_M, d:cal(D)) (e^(-(delta^2_M)/(2 sigma_M^2)) - e^(-(delta_M - 2 delta_c)^2/(2 sigma_M^2)))/(sqrt(2 pi) sigma_M) = op("erfc") [nu_c/sqrt(2)] = PP_(>= delta_c) (M) $
Molto bene. Adesso però vogliamo la probabilità di formare un alone di una specifica massa, mentre quella calcolata fin'ora era per una qualsiasi massa più piccola.
$ PP("alone di massa" M) &= [PP_(>= delta_c) (M) - PP_(>= delta_c) (M + dd(M))]dd(M) = -dv(PP_(>= delta_c), M) dd(M)\
&= -dv(PP_(>= delta_c), nu_c) dv(nu_c, sigma_M) dv(sigma_M, M) dd(M)\
&= - (- sqrt(2/pi) e^(- nu_c^2/2)) (-nu_c/sigma_M) dv(sigma_M, M) dd(M) $
Possiamo ottenere a questo punto l'abbondanza di questi aloni moltiplicando la probabiltà di ottenerne uno per il numero massimo che si può creare.
Quest'ultimo viene calcolato come la densità media nella zona diviso la massa dell'alone considerata.
Questa abbondanza viene detta *halo mass function* $n_h (M)$
$ n_h (M) = -overline(rho)/M dv(PP, M) = - sqrt(2/pi) e^(- nu_c^2/2) nu_c/sigma_M overline(rho)/M dv(sigma_M, M) = - sqrt(2/pi) e^(- nu_c^2/2) nu_c overline(rho)/sigma_M^2 dv(ln(sigma_M), ln(M)) $
// TODO: Mettere immagine
\ #text(red)[mettere immagine]\
Ma questa è la stessa forma della funzione di Schechter vista nel corso di Galassie.

=== Peak background splitting
Facciamo un'ultima considerazione.
Definiamo un density contrast per gli aloni
$ delta_h (va(x)) = (n_h (va(x)) - overline(n)_h)/overline(n)_h $
a questo punto possiamo dividere il contributo in _long-wavelength_ (scale cosmologiche) e _short-wavelenght_ (scale galattiche)
$ delta = delta_s + delta_l $
// TODO: Mettere immagine
\ #text(red)[mettere immagine]\
Gli aloni possiamo pensarli come dei campionamenti di questo density contrast.
Ovviamente però per come abbiamo splittato, sarà più facile che gli aloni si formino sulle creste di $delta_l$.
Possiamo quindi riscalare $delta_c$ perché sia un threshold solo su $delta_s$
$ cases(Tilde(delta)_c = delta_c - delta_l, Tilde(overline(rho)) = overline(rho) (1 + delta_l)) $
A questo punto sviluppiamo al primo ordine in $delta_l$
#aeq[$ n_h &= overline(n)_h + evaluated(dv(n, delta_l))_(delta_l = 0) delta_l + Order(delta_l^2)\
&=overline(n)_h + delta_l [(dv(Tilde(delta)_c, delta_l) pdv(, Tilde(delta)_c) + dv(Tilde(overline(rho)), delta_l) pdv(ln, Tilde(overline(rho)))) n_h]_(delta_l = 0)\
&=overline(n)_h {1 + delta_l [(underbracket(dv(Tilde(delta)_c, delta_l), -1) pdv(ln, Tilde(delta)_c) + underbracket(dv(Tilde(overline(rho)), delta_l),overline(rho)) pdv(ln, Tilde(overline(rho)))) n_h]_(delta_l = 0)} $]
ma
#aeq[$ pdv(ln(n_h), Tilde(overline(rho))) = overline(rho)/Tilde(overline(rho)) wide "e" wide pdv(ln(n_h), Tilde(delta)_l) = 1/(delta_c - delta_l) - 2 (delta_c - delta_l)/sigma_M^2 $]
quindi
#aeq[$ n_h = overline(n)_h [1 + delta_l (1 - 1/delta_c + delta_c/sigma_M^2)] $]
rimettendo dentro l'halo density contrast
$ delta_h (va(x)) = (n_h - overline(n)_h)/overline(n)_h = b_1 (M) med delta_l (va(x)) $
dove $b_1$ è il *linear bias*
$ heq(b_1 (M) = 1 - 1/delta_c + delta_c/sigma_M^2 = 1 + (nu_c^2 - 1)/delta_c) $
quindi $delta_h$ è un campionamento di $delta_l$ pesati con un bias dipendente solo da $M$
