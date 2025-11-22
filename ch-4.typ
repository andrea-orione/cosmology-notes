//LTeX: language=it
#import "pkg-preamble.typ": *

= Inflazione cosmologica
== Horizon problem e Flatness problem
Andiamo ora a trattare un aspetto problematico che ha il modello cosmologico descritto dal Big Bang e dalle equazioni di Friedmann (per il momento useremo Big Bang e singolarità in modo intercambiabile, scopriremo molto presto che questo non si può fare).
Il problema risiede nell'alto grado di omogeneità che osserviamo nell'universo.\
Abbiamo già visto come la CMB sia un corpo nero praticamente perfetto a una temperatura omogenea di $overline(T) = qty("2.73", "K")$ ovunque con piccolissime fluttuazioni.
Di queste fluttuazioni è possibile fare la trasformata in armoniche sferiche
#aeq[$
  T(vu(n)) = sum_(l=0)^infinity sum_(m=-l)^(+l) a_(l m) Y^m_l (vu(n))
  $]
con $expval(a_(l m)) = overline(T)$ e $expval(a_(l m) a^*_(l' m'))$ la covarianza (si prende il complesso coniugato perché $a_(l m)$ possono assumere valori complessi).\
Se le fluttuazioni fossero casuali (come rumore bianco) si avrebbe un andamento costante per i coefficienti della trasformata.
Quello che invece si osserva è una struttura complessa
#figure(
  image("images/4-0_momenti_cmb.jpg", width: 60%),
  caption: [Sviluppo in armoniche sferiche delle anisotropie della CMB.]
)
Questa struttura fa pensare a un collegamento causale tra tutte le zone osservate e questo non è quello che ci saremmo aspettati.

Dato un determinato punto dell'universo ad un tempo $t$, possiamo determinare qual è la distanza causalmente connessa a un tempo passato $t_i$ .
Per fare ciò ci basta calcolare la distanza percorsa dalla luce da $t_i$ a $t$, che corrisponde alla distanza radiale comovente che avevamo definito in precedenza.
#aeq[$
  chi (eta) = c (eta - eta_i)
  $]
dove abbiamo usato il tempo conforme $eta$ (con $a dd(eta) = dd(t)$) per semplicità.
// TODO: Sostituire immagine
#figure(
  image("images/4-1_orizzonte.png", width: 60%)
)
#let piede_bang = [È importante tenere a mente che il Big Bang è un punto nel tempo, non nello spazio, quindi può essere pensato come una 'ipersuperficie di tipo spazio']
Se prendiamo come tempo iniziale il Big Bang $t_i = 0$#footnote(piede_bang) questa distanza viene detta *orizzonte comovente* $d_h$ e rappresenta quale zona dell'universo al Big Bang è collegata ad un punto al tempo $t$, o se vogliamo possiamo pensarla come la distanza massima da cui possiamo ricevere luce emessa al Big Bang
$ d_h (eta) = c(eta - 0) &= c integral_(0)^(t) dd(t)/(a (t)) = c integral_0^a dv(t, a) dd(a)/a = c integral_0^a  dd(a)/(a dot(a))\
&= c integral_0^a dd(a)/(a^2 H(a)) = integral_0^(ln(a)) c dd(ln(a))/(cal(H) (ln(a))) $
dove $cal(H) = (a')/a = 1/a dv(a, eta) = cancel(a)/cancel(a) dv(a, t) = dot(a) = a H$ è il *fattore di Hubble conforme*.
$dd(N) = dd(ln(a))$ viene detto solitamente numero di '$e$-folds' (con $e$ numero di Nepero) e lo si può pensare come un analogo del tempo di dimezzamento dei decadimenti.\
Notiamo che questo integrale non è risolvibile analiticamente.\
$c cal(H)^(-1)$ viene detto *raggio di Hubble comovente*, banalmente perché se prendiamo la legge di Hubble $v = H_0 d$ e poniamo come velocità quella della luce otteniamo la distanza
#aeq[$ r_(H 0) = c/H_0 quad ==> quad r_H = c/H quad ==> quad r_H/a = c/cal(H)$]
Per specie ordinarie $cal(H)$ è una funzione decrescente, verifichiamolo:
- Radiation dominated: $rho ~ a^(-4)  ==>  H ~ sqrt(rho) ~ a^(-2)  ==>  cal(H) ~ a^(-1)$
- Matter dominated: $rho ~ a^(-3) ==> H ~ a^(-3/2)  ==>  cal(H) ~ a^(-1/2)$
Questo significa che $cal(H)^(-1)$ è crescente, dunque l'integrale per il tempo conforme è dominato dai contributi a tempi fisici più grandi.
Quindi il tempo conforme tra il Big Bang e ricombinazione sarà molto minore rispetto al tempo tra la ricombinazione e il presente.
// TODO: Sostituire immagine
#figure(
  image("images/4-2_ricombinazione_noi.png", width: 80%)
)
Ma questo significa che la maggior parte dei punti della CMB hanno coni luce passati che non si incrociano, quindi devono essere causalmente disconnessi.
Può essere utile pensare a cosa succederebbe se le cose fossero al contrario: se la ricombinazione fosse più vicina a noi che alla singolarità, la base del triangolo tratteggiato sarebbe più corta mentre i trinagoli grigi sarebbero più grandi e si sorvapporrebbero.

Possiamo provare a quantificare il problema: calcolando il rapporto tra l'orizzonte comovente oggi e alla ricombinazione si ottiene che oggi è circa 50 volte quello alla ricombinazione.\
Un risultato più interessante è l'angolo sotteso dall'orizzonte alla ricombinazione, questo si ottiene facendo
$
theta = (2 chi ("sing"-"rec"))/(chi ("rec"-"oggi")) = (2 cancel(c) (eta_"rec" - 0))/(cancel(c) (eta_0 - eta_"rec")) approx 2°
$
Questo corrisponde a circa quattro volte la dimensione angolare del Sole o della Luna
#figure(
  image("images/4-3_orizzonte_cerchio.png", width: 60%)
)

Quindi da un lato ci aspettiamo di avere zone di omogeneità non più grandi di $2°$, dall'altra osserviamo la che la CMB è omogenea ovunque.
Si potrebbe pensare che i vari punti si siano evoluti separatamente tutti verso un equilibrio comune.
Tuttavia con questa spiegazione bisognerebbe avere che le perturbazioni all'omogeneità siano rumore bianco, mentre invece si osserva l'andamento mostrato prima.
Questo viene detto *Horizon problem*.

// TODO: Spiegare meglio
L'altro problema del modello cosmologico presentato fin'ora è quello che viene detto *Flatness problem* e consiste nel fatto che sia altamente improbabile che l'universo tra tutti i valori possibili di curvatura abbia esattamente 0, come si osserva.

== Inflazione
Per poter spiegare queste due osservazioni utilizzando il modello cosmologico visto fin'ora, servirebbe quindi che le condizioni iniziali fossero accuratamente _fine-tuned_ in modo tale da far raggiungere uno stato dove tutte le parti sembrano essere state causalmente connesse, anche senza mai esserlo state.
È inutile dire che questa spiegazione non è per nulla soddisfacente, e dunque se ne è cercata una alternativa.

Una possibile spiegazione alternativa è che prima del Big Bang caldo (anche detto *reheating*, che a questo punto non coincide più con la singolarità!) ci sia sia stato un periodo in cui l'omogeneità e la correlazione tra le fluttuazioni si sono generate.
In questo periodo è necessario che il raggio di Hubble si sia ristretto
$ dv(,t) cal(H)^(-1) < 0 $
Ma ricordando che $cal(H) = dot(a)$ si ottiene $dot.double(a) > 0$, quindi un'espansione accelerata.
Questo periodo di accelerazione viene detto *inflazione*.
// TODO: Sostituire immagine
#figure(
  image("images/4-4_inflazione.png", width: 80%)
)

// TODO: Spostare questa parte sotto
Possimo provare a valutare quanto deve essere stata grande questa espansione.
Se consideriamo un universo radiation-dominate abbiamo $cal(H)^(-1) ~ a ~ T^(-1)$, quindi calcoliamo il rapporto tra il raggio di Hubble conforme oggi e alla fine dell'inflazione (che corrisponde al Big Bang caldo).
Alla fine dell'inflazione abbiamo la temperatura di reheating $T approx qty("e15", "GeV")$ (temperatura a cui tutte le interazioni iniziano ad avvenire con tasso maggiore all'espanisione dell'universo, vedi @eq:limite_temp della @sec:eq_chimico).
$ (cal(H)^(-1))_"reheating"/(cal(H)^(-1))_"oggi" = T_"oggi"/T_"reheating" = qty("2.73", "K")/qty("e15", "GeV") approx num("e-28") approx e^(-65) $
Quindi tra il reheating e noi ci sono state 65 $e$-folds, e se vogliamo avere la causalità è necessario che ce ne siano state altrettante durante l'inflazione prima del reheating.
Ma noi sappiamo che il reheating è avvenuto dopo $qty("e-30", "s")$.
Dunque nei primi $qty("e-30", "s")$ l'universo si è espanso di 28 ordini di grandezza con espansione accelerata.\
Questo se ci pensiamo risolve anche il flatness problem.
Infatti qualsiasi valore di curvatura avesse l'universo all'inizio, la grande espansione che ha subìto ha fatto sì che la piccola parte di universo oggi osservabile ci sembri piatta (analogamente a come la piccola parte di Terra visibile entro l'orizzonte ci sembra piatta).

== Fisica dell'inflazione
Andiamo ora alcune condizioni sui processi fisici che devono aver causato l'inflazione.
Innanzitutto vogliamo che
$ dv(cal(H)^(-1), ln(a)) < 0 $
$ dv(cal(H)^1, ln(a)) &= - a/cal(H)^2 dv(cal(H), a) = - cancel(a)/(a^cancel(2) H) dv((a H), a) = - 1/(dot(a) a H^2) dv((a H), t)\
&= - 1/(a^2 H^3) (dot(a) H + a dot(H)) = - 1/(a H) (dot(a)/a H/H^2 + a/a dot(H)/H^2)\
&= - (1 + dot(H)/H^2)/(a H) = - (1 - epsilon_H)/(a H) $
dove abbiamo introdotto lo *slow-roll parameter* $epsilon_H = - dot(H)/H^2$.\
Per avere $dv(cal(H)^(-1), ln(a)) < 0$ serve avere $epsilon_H < 1$, ma $epsilon$ può essere riscritto usando le equazioni di Friedmann:
$ epsilon_H = - dot(H)/H^2 = - 1/H^2 [dot.double(a)/a - (dot(a)/a)^2] = 1 - 1/H^2 dot.double(a)/a = 1 + 1/(2 overline(rho)) (overline(rho) + 3 overline(p)) = 3/2(1 + overline(p)/overline(rho)) $
Ma allora imporre $epsilon_H < 1$ equivale a $overline(rho) + 3 overline(p) < 0$ che corrispondere a rompere la strong energy condition ($w > -1/3$).\
Quindi vogliamo qualcosa che si comporti in modo simile alla costante cosmologica.

=== Inflatone
Il modello più semplice prevede l'esistenza di un campo scalare $phi.alt (va(x), t)$ detto *inflatone*.
In un universo omogeneo e isotropo potremo scriverlo come la somma di un valore medio più piccole fluttuazioni
$ phi.alt (va(x), t) = overline(phi.alt) (t) + delta phi.alt (va(x), t) $
Per il momento concentriamoci sulla parte omogenea e consideriamo una teoria non interagente.
La densità di lagrangiana sarà
$ cal(L)_phi.alt = - 1/2 thin partial_mu phi.alt thin partial^mu phi.alt - V (phi.alt) $
Questa però è valida in uno spazio di Minkowski, se consideriamo l'universo in espansione avremo (stiamo banalmente mettendo la forma volume)
#aeq[$ integral dd(t) dd(x, 3) cal(L) --> integral dd(t) dd(x_c, 3) a^3 cal(L) $]
quindi la lagrangiana diventa (considerando già che le derivate non temporali sono nulle perché siamo omogenei)
$ cal(L)_overline(phi.alt) = (1/2 dot(overline(phi.alt))^2 - V (overline(phi.alt))) a^3 $
Possiamo risolvere l'equazione di Eulero-Lagrange
$ partial_mu (pdv(cal(L), (partial_mu overline(phi.alt)))) = pdv(cal(L), overline(phi.alt)) $
dove
#aeq[$ pdv(cal(L), overline(phi.alt)) = a^3 dv(V, overline(phi.alt)) $]
#aeq[$ partial_mu (pdv(cal(L), (partial_mu overline(phi.alt)))) = - dv(,t) pdv(cal(L), dot(overline(phi.alt))) = - dv(,t) (dot(overline(phi.alt)) a^3)
  = - dot.double(overline(phi.alt)) a^3 - dot(overline(phi.alt)) a^2 3 dot(a) $]
quindi
$ a^3 dot.double(overline(phi.alt)) + 3 a^3 H dot(overline(phi.alt)) + a^3 dv(V, overline(phi.alt)) = 0
quad ==> wide heq(dot.double(overline(phi.alt)) + 3 H dot(overline(phi.alt)) + dv(V, overline(phi.alt)) = 0)
$
Questa è una sorta di equazione di Klein-Gordon con un termine di viscosità in più, anche detta *Hubble friction*.

Supponiamo ora che l'inflatone domini l'universo subito dopo la singolarità.
Vogliamo scrivere densità di energia e pressione per questa specie.
Data la forma della lagrangiana, avremo che la densità di energia non sarà nient'altro che la densità di Hamiltoniana
$
heq(overline(rho)_(phi.alt) = 1/2 dot(overline(phi.alt))^2 + V(phi.alt))
$
Per la pressione possiamo derivare l'espressione sopra
#aeq[$
  dot(overline(rho))_(phi.alt) = (dot(overline(phi.alt)) dot.double(overline(phi.alt)) + dv(V, t))
  = dot(overline(phi.alt)) (dot.double(overline(phi.alt)) + dv(V, overline(phi.alt))) = - dot(overline(phi.alt)) 3 H dot(overline(phi.alt))
  $]
dove nell'ultima uguaglianza abbiamo utilizzato l'equazione di Eulero-Lagrange.
A questo punto basta usare la legge di continuità $dot(overline(rho)) = - 3 H (overline(rho) + overline(p))$ ottenendo
#aeq[$
cancel(- 3 H) dot(overline(phi.alt))^2 = cancel(- 3 H)( 1/2 dot(overline(phi.alt))^2 + V + overline(p)_phi.alt)
$]
$
heq(overline(p)_(phi.alt) = 1/2 dot(overline(phi.alt))^2 - V(phi.alt))
$
Con queste due è possibile calcolare l'accelerazione $dot.double(a) prop -(overline(rho)_phi.alt + 3 overline(p)_phi.alt)$.\
Possiamo notare che il rapporto tra densità e pressione non è costante come le altre specie
$
w_phi.alt = overline(p)_phi.alt/overline(rho)_phi.alt = (1/2 dot(overline(phi.alt))^2 - V(phi.alt))/(1/2 dot(overline(phi.alt))^2 + V(phi.alt))
$
Tuttavia se l'energia cinetica è trascurabile si ottiene un rapporto $w_phi.alt -> -1$ come per la costante cosmologica, che come abbiamo già visto dà un universo di De Sitter con un'espansione esponenziale.

Quindi è necessario che inizialmente il potenziale sia alto e vari poco (si parla di *potenziale slow-roll*)
#figure(
  image("images/4-5_slow_roll.png", width: 60%),
  caption: [Esempio di potenziale slow-roll.\ L'inflazione avviene nella zona evidenziata in grigio.]
)
// TODO: Cambiare sta parte appena ci capisci di più
Poi man mano che aumenta l'energia cinetica, l'inflazione finisce.
In questo periodo c'è stato un 'super raffreddamento'.
Una volta che si arriva al minimo, il campo inizia ad oscillare rilasciando energia e decadendo in tutte le particelle del modello standard.

Vediamo cosa succede al problema dell'orizzonte
Abbiamo che $dot(overline(rho)) = -3 H overline(rho) (1 + w) => overline(rho) ~ a^(-3(1+w))$ quindi
$
eta(a) = integral dd(a)/(a^2 H) prop integral dd(a)/(a^(1/2(1- 3w))) = 2/(1+3w) a^(1/2(1+3w))
$
Senza inflazione alla singolarità ($a->0$) avremmo ottenuto $eta->0$.
Con l'inflazione per $a->0$ si ottiene $eta -> -infinity$.\
Quindi tra la singolarità e l'inflazione c'è un'infinità di tempo conforme, il che rende tutti i punti dell'universo causalmente connessi
