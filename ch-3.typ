//LTeX: language=it
#import "pkg-preamble.typ": *

= Modello a Big Bang Caldo
Abbiamo studiato fin'ora quello che succede a scale macroscopiche, vedendo l'evoluzione del fattore di scala.
Passiamo adesso a studiare le scale microscopiche delle particelle fondamentali, per vedere come queste si comportano all'interno di un universo che si evolve e come contribuiscono all'evoluzione dell'universo stesso.\
In questo capitolo, verranno utilizzate le unità naturali $c = planck = k_B = 1 $.

== Ripasso modello standard
Prima di iniziare facciamo ripasso del modello standard.
Questo è in modello che raggruppa le particelle fondamentali conosciute e descrive le interazioni tra loro.
Facciamo un breve elenco della classificazione delle particelle e delle loro masse:
/ Fermioni: sono particelle a spin semi-intero e sono i costituenti della materia.\ Si dividono a loro volta in
 - Quark: che sentono interazione elettromagnetica, forte e debole.\ Sono divisi in tre generazioni:
  - Quark up '$u$' ($m = qty("1.9", "MeV")$) e quark down '$d$' ($m = qty("1.4", "MeV")$)
  - Quark charm '$c$' ($m = qty("1.32", "GeV")$) e quark strange '$s$' ($m = qty("0.087", "GeV")$)
  - Quark top '$t$' ($m = qty("171", "GeV")$) e quark bottom '$b$' ($m = qty("4.2", "GeV")$)
 - Leptoni: che sentono interazione elettromagnetica debole.\ Anch'essi sono divisi in tre generazioni:
  - Elettrone '$e$' ($m = qty("0.5", "MeV")$) e neutrino elettronico '$nu_e$' ($m < qty("0.08e-6", "MeV")$)
  - Muone '$mu$' ($m = qty("106", "MeV")$) e neutrino muonico '$nu_mu$' ($m < qty("0.017", "MeV")$)
  - Tauone '$tau$' ($m = qty("1.78", "GeV")$) e neutrino tauonico '$nu_tau$' ($m < qty("18.2", "GeV")$)
/ Bosoni: sono particelle a spin intero e sono i portatori delle interazioni.\ Si dividono in
 - Bosoni vettori: a spin 1
  - Fotone '$gamma$' ($m = 0$) portatore dell'interazione elettromagnetica
  - Bosoni '$W^(plus.minus)$' ($m = qty("80", "GeV")$) e '$Z^0$' ($m = qty("91", "GeV")$) portatori dell'interazione debole
  - Gluoni '$g_(1, ..., 8)$' ($m = 0$) portatore dell'interazione forte
 - Bosoni scalari: a spin 0
  - Bosone di Higgs '$H$' ($m = qty("125", "GeV")$) responsabile del meccanismo che fornisce la massa
#figure(
  image("images/3-0_modello_standard.svg", width: 40%)
)

== Evoluzione del quadri-momento con l'espansione dell'universo
Sappiamo che le particelle possono essere più o meno relativistiche in base alla loro velocità (quindi al rapporto energia-massa $E^2 = m^2 + abs(va(q))^2$), fino ai due limiti estremi:
- Limite non relativistico: $E approx m$ che in precedenza abbiamo chiamato materia
- Limite ultra-relativistico: $E approx abs(va(q))$ che in precedenza abbiamo chiamato radiazione
Vediamo ora come evolve il momento. Partiamo dall'equazione delle geodetiche
#aeq[$ dv(x^alpha, lambda, 2) + tensor(Gamma, +alpha, -beta, -gamma) dv(x^beta, lambda) dv(x^gamma, lambda) = 0 $]
ma $u^alpha = dv(x^alpha, lambda)$ e $P^alpha = m u^alpha$, quindi moltiplicando per $m^2$ otteniamo
#aeq[$ m dv(P^alpha, lambda) + tensor(Gamma, +alpha, -beta, -gamma) P^beta P^gamma = 0 $]
inoltre $dv(,lambda) = dv(x^0, lambda)dv(,x^0) = u^0 dv(,t)$
$ heq(P^0 dot(P)^alpha + tensor(Gamma, +alpha, -beta, -gamma) P^beta P^gamma = 0 ) $

Studiamo la componente $alpha = 0$ per il caso _mass-less_:
#aeq[$
  P^0 dot(P)^0 &= - tensor(Gamma, 0, -beta, -gamma) P^beta P^gamma = - tensor(Gamma, 0, -i, -j) P^i P^j\
  &= -dot(a)a tensor(gamma, -i, -j) P^i P^j =  -dot(a)a 1/a^2 tensor(g, -i, -j)P^i P^j \
  &= - dot(a)/a (-tensor(g, -0, -0) P^0 P^0)\
$]
#aeq[$
  cancel(E) dot(E) = - dot(a)/a cancel(E) E quad ==> quad dot(E)/E = -dot(a)/a quad ==> quad E prop a^(-1)
$]
Fancendo i calcoli per particelle massive (per cui $P^mu P_mu = -m^2$) si ottiene
$ heq(abs(va(q)) prop a^(-1)) wide "con" quad va(q) = a P^i vu(e)_i $
Questo significa che il momento delle particelle (e di conseguenza la parte cinetica dell'energia) viene diluito con l'espansione dell'universo.
Avevamo già visto euristicamente questo concetto quando abbiamo notato che la lunghezza d'onda dei fotoni si dilata (perdendo momento).\
Tra l'altro, questo è il motivo per cui $rho_r prop a^(-4)$, infatti si ha una perdita di densità con $a^(-3)$ dovuta all'aumento del volume e una diluizione dell'energia (che nel caso dei fotoni è tutta cinetica) con $a^(-1)$.
Per $rho_m$ non c'è la parte di diluizione dell'energia, in quanto questa è per lo più energia di massa che non varia con l'espansione.

Il fatto che le particelle perdano momento, significa che con il passare del tempo si ha un passaggio da stati ultra-relativistici a non relativistici.
Quindi, oltre alla variazione delle densità delle specie che abbiamo già visto in precedenza, bisognerebbe considerare un flusso tra materia e radiazione dovuto al 'raffreddamento'.
Questo è un fenomeno che avviene a tempi diversi per particelle diverse, infatti particelle più leggere dovranno diluire la loro energia cinetica molto di più perché questa diventi trascurabile rispetto alla massa.
#figure(
  image("images/3-0_cooldown_particelle.pdf", width: 46%)
)

Nel modello standard ci sono delle energie di scala, di cui alcuni esempi sono
- $Lambda_"QCD" = qtyrange("150", "200", "MeV", delimiter: "÷")$: energia scala della QCD oltre la quale smette di essere efficacie il processo di confinameto, dunque è possibile osservare quark e gluoni liberi (detto _quark-gluon plasma_)
- $Lambda_"EW" = qty("150", "GeV")$: energia sotto la quale si rompe la simmetria elettrodebole. Ad energia superiore l'interazione elettromagnetica e debole vengono unificate e i bosoni #sym.gamma, W#super(sym.plus.minus) e Z#super("0") vengono sostituiti da un altro tipo di bosoni vettoriali tutti massless.
Queste energie corrisponderanno a diversi tempi evolutivi dell'universo (in cui l'energia media si trovava al di sopra o al di sotto di queste soglie).
Per diverse fasi evolutive il comportamento microscopico sarà differente.

== Statistica delle specie
Il nostro intento è andare a studiare il comportamento delle varie specie nelle prime fasi dell'universo.
Queste si trovavano in uno stato di gas caldo, è dunque necessaria una descrizione statistica.\
La quantità fondamentale è la *funzione di distribuzione* $f_s (va(x), va(q), t)$ che rappresenta la densità di probabilità che una particella della specie $s$ al momento $t$ si trovi nella posizione $va(x)$ con momento $va(q)$.\
Se vogliamo ottenere la *densità numerica* $n_s$ (quantità che useremo molto), bisogna integrare su tutti gli stati di momento possibili.
#let foot_struttura = [Questa spiegazione è molto euristica. Per una spiegazione più rigorosa fare riferimento ad un corso di meccanica statistica o più semplicemente a Struttura della Materia.]
Tuttavia è necessario tenere conto che, a causa della meccanica quantistica, lo spazio delle fasi è quantizzato dunque è necessario moltiplicare la misura $dd(x, p, 3)$ per un fattore $g_s/(2 pi)^3$ (in SI $g_s/(2 pi planck)^3$) dove $g_s$ rappresenta la molteplicità di uno stato per la specie (ad esempio per gli elettroni che hanno 2 stati di spin possibili $g_s = 2$) e il fattore $2 pi$ rappresenta la dimensione di una celletta fondamentale dello spazio delle fasi#footnote(foot_struttura).\
La *densità numerica* sarà
$ heq( n_s (va(x), t) = g_s integral dd(q, 3)/(2pi)^3 f_s (va(x), va(q), t)) $
mentre il numero totale $N_s$ lo si può otterene integrando sulle posizioni
$ heq( N_s (t) = integral n_s (va(x), t) dd(x, 3) = g_s integral dd(x, q, 3)/(2pi)^3 f_s (va(x), va(q), t)) $

Vogliamo ora legare la funzione di distribuzione a quantità macroscopiche che abbiamo già visto: la densità di energia $rho_s$ e la pressione $p_s$.\
Per quanto riguarda l'energia è sufficiente sfruttare la relazione $E_s (va(q)) = sqrt(m_s^2 + abs(va(q))^2)$ valida per ciascuna particella, ottenendo
$ heq( rho_s (va(x), t) = g_s integral dd(q, 3)/(2pi)^3 f_s (va(x), va(q), t) E_s (va(q))) quad = g_s integral dd(q, 3)/(2pi)^3 f_s (va(x), va(q), t) sqrt(m^2 + abs(va(q))^2) $
Per quel che riguarda la pressione bisogna fare un ragionamento più delicato.
#let figura_cono_sup = [#figure(
  image("images/3-1_cono_superficie.pdf", width: 90%)
)]
#wrap-content(figura_cono_sup, align:right, columns: (6fr, 5fr))[
Consideriamo una superficie $dd(S)$ orientata con versore normale $vu(n)$, che abbia delle particelle da un lato.
La pressione esercitata dalle particelle sulla superficie sarà data dagli urti (e quindi dal trasferimento di momento) che le prime fanno sulla seconda.\
Prendiamo in considerazione un volume conico con apertura di un angolo solido $dd(Omega)$ e le particelle con momento $va(q)$ (e quindi velocità $va(v)$)
Le particelle che riusciranno a raggiungere la superficie in un tempo $dd(t)$ saranno quelle entro una distanza $R = abs(va(v)) dd(t)$.
Quindi bisogna considerare le particelle dentro un volume $abs(va(v)) dd(t) R^2 dd(Omega)$.]
Tra tutte le particelle all'interno di questo volume non tutte hanno la direzione giusta per raggiungere la superficie.
Assumiamo che le particelle abbiano una distribuzione isotropa, la frazione di quelle con direzione compatibile sarà data dalla frazione di angolo solido occupata dalla superficie (dal punto di vista delle particelle) $(dd(S) cos(theta))/(4 pi R^2)$ dove mettiamo il $cos(theta)$ perché dal punto di vista delle particelle ci interessa solo la parte ortogonale della superficie.\
Quindi il numero di particelle a cui siamo interessati sarà
#aeq[$ n abs(va(v)) dd(t) cancel(R^2) dd(Omega) (dd(S) cos(theta))/(4 pi cancel(R^2)) $]
Ciascuna di queste urtando con momento $va(q)$ contro la superificie scambierà con quest'ultima (assumendo un urto totalmente elastico) un impulso $2 va(q) dot vu(n)$ (perché deve cambiare la direzione ortogonale alla superficie).
Quindi l'impulso scambiato $dd(I)$ sarà
#aeq[$ dd(I) = n/(4 pi) abs(va(v)) dd(t) dd(Omega) dd(S) 2 abs(va(q)) cos^2(theta) $]
Ma la pressione non è nient'altro che impulso scambiato per unità di tempo per unità di area
#aeq[$ p = dd(I)/(dd(t)dd(S))$]
#let foot_angolo = [Il motivo vero per cui integriamo su metà dell'angolo solido è che quando facciamo i prodotti scalari dobbiamo trascurare i valori negativi perché corrispondono a particelle che si allontanano. Il risultato è però equivalente a considerare particelle solo da un lato.]
Quindi otteniamo, riscrivendo $va(v) = va(q)/E$ (relaziene in realtà valida solo in relatività speciale) e integrando su metà dell'angolo solido (perché le particelle abbiamo detto essere solo da un lato#footnote(foot_angolo)) si ottiene che la pressione data da particelle con momento $va(q)$ sarà
$ p(va(q)) = integral_0^(2 pi)  integral_0^1  n/(2 pi) abs(va(q))^2/E cos^2(theta) dd((cos(theta))) dd(phi)= n/cancel(2 pi) abs(va(q))^2/E cancel(2 pi) 1/3 = n abs(va(q))^2/(3 E) $
Per darci un senso di questo risultato possiamo pensare che $abs(va(q))^2/E$ ci dà una pressione che va distribuita su 3 dimensioni.\
Non ci rimane quindi che integrare sui momenti ottenendo
$ heq( p_s (va(x), t) = g_s integral dd(q, 3)/(2pi)^3 f_s (va(x), va(q), t) abs(va(q))^2/(3 E)) quad = g_s integral dd(q, 3)/(2pi)^3 f_s (va(x), va(q), t) abs(va(q))^2/(3 sqrt(m^2 + abs(va(q))^2)) $

== Funzioni di distribuzione
Possiamo ora andare a concentrarci sulla forma che hanno le funzioni di distribuzione.
Iniziamo imponendo le condizioni di omogeneità e isotropia.
L'omogeneità ci dice che non c'è dipendenza dalla posizione, mentre l'isotropia ci dice che non c'è dipendenza dalla direzione del momento bensì solo dal suo modulo (che indicheremo per semplicità come $q$).
Sappiamo inoltre che in un universo omogeneo e isotropo la dipendenza temporale rientra solo implicitamente per scalare le distanze e i momenti.
Quindi avremo $f_s (va(x), va(q), t) = f_s (q)$.\
Questo semplifica anche l'integrazione che infatti diventa $dd(q, 3) --> 4 pi q^2 dd(q)$.
$ n_s &= g_s/(2 pi^2) integral_0^(+infinity) dd(q) q^2 f_s (q)\
rho_s &= g_s/(2 pi^2) integral_0^(+infinity) dd(q) q^2 f_s (q) E(q)\
p_s &= g_s/(2 pi^2) integral_0^(+infinity) dd(q) f_s (q) q^4/(3 E(q)) $

Le condizioni che abbiamo appena descritto corrispondono a quello che viene detto *equilibrio termodinamico*: se il gas collide abbastanza da raggiungere la massima entropia possibile (si dice che il gas _termalizza_) si ottiene che le particelle seguono la *distribuzione di Fermi-Dirac* $f_"FD"$ se sono fermioni o la *distribuzione di Bose-Einstein* $f_"BE"$ se sono bosoni.
$ heq(f_"FD" (q) = 1/(exp{(E(q) - mu)/T} + 1)) wide wide heq(f_"BE" (q) = 1/(exp{(E(q) - mu)/T} - 1)) $
dove $T$ è la temperatura (che possiamo definire solo perché siamo in equilibrio) e $mu$ è il *potenziale chimico*.
Quest'ultimo rappresenta la risposta del sistema (quindi la sua variazione in energia intera) quando viene cambiato il numero di particelle a entropia e volume costanti:
$ heq(mu = (pdv(U, N))_(S,V)) $
Quando si possono trascurare gli effetti quantistici (perché ci sono molte particelle, o la temperatura è molto bassa rispetto alla massa) le due distribuzioni convergono alla *distribuzione di Maxwell-Boltzmann* $f_"MB"$
$ heq(f_"MB" (q) = exp{-(E(q) - mu)/T}) $

Tutto il discorso che abbiamo fatto fin'ora vale per una singola specie.
Quando abbiamo un sistema con più specie al suo interno, bisogna anche che ci sia *equilibrio chimico*.
Questo significa che possono anche esserci scambi tra specie (attraverso interazioni) ma nel complesso, le concentrazioni delle singole specie non possono cambiare.
#aeq[$ A + B <--> C + D $]
Dal punto di vista di potenziale chimico, ciò si traduce nella condizione
$ mu_A + mu_B = mu_C + mu_D $
Se vale l'equilibrio termodinamico per le singole specie e vale l'equilibrio chimico tra specie, significa che possiamo definire una temperatura globale e si parla di *bagno termico*.
Se ci sono delle specie che sono in equilibrio termodinamico ma non in equilibrio chimico con il bagno, si dice che queste sono *disaccoppiate dal bagno termico*.

== Quantità macroscopiche nei limiti ultra- e non relativistico
Vogliamo andare a vedere le distribuzioni delle quantità $n_s$, $rho_s$ e $p_s$ nel limite non relativistico (quello che all'inizio chiamavamo materia o polvere) e nel limite ultra relativistico (quello che chiamavamo radiazione)
Prima di iniziare introduciamo una convenzione: spesso torna utile adimensionalizzare le forme di energia raccogliendo la temperatura
$ X_s = m_s/T wide Y=q/T wide W_s = mu_s/T $
dove $Y$ non ha il pedice perché il momento non ha dipendenza dalla specie.
Le espressioni per le quantità macroscopiche in queste quantità diventano
$ n_s &= g_s/(2 pi^2) T^3 integral_0^(+infinity) dd(Y) Y^2/(exp{sqrt(X_s^2 + Y^2) - W_s } plus.minus 1) = g_s/(2 pi^2) T^3 I_(plus.minus) (X_s, W_s)\
rho_s &= g_s/(2 pi^2) T^4 integral_0^(+infinity) dd(Y) (Y^2 sqrt(X_s^2 + Y^2))/(exp{sqrt(X_s^2 + Y^2) - W_s } plus.minus 1) = g_s/(2 pi^2) T^4 J_(plus.minus) (X_s, W_s)\
p_s &= g_s/(2 pi^2) T^4 integral_0^(+infinity) dd(Y) Y^4/(3 sqrt(X_s^2 + Y^2)) 1/(exp{sqrt(X_s^2 + Y^2) - W_s } plus.minus 1) $
dove $I_(plus.minus) (X_s, W_s)$ e $J_(plus.minus) (X_s, W_s)$ raccolgono gli integrali.

=== Limite non relativistico
Il limite relativistico corrisponde a $Y << X_s$ e ad una temperatura molto minore della massa.
Ma questo significa che le due distribuzioni convergono a Maxwell-Boltzmann.\
Iniziamo calcolando $n_s$
#aeq[$ sqrt(X_s^2 + Y) = X_s sqrt(1+(Y/X_s)^2) = X_s (1 + 1/2 (Y/X_s)^2 + ...) ~ X_s + Y^2/(2 X_s) $]
#aeq[$ I_(plus.minus) (X_s, Y) &~ e^(-X_s + W_s) integral_0^(+infinity) dd(Y) Y^2 exp{- Y^2/(2X_s) } wide wide & "definisco" A = 1/(2 X_s)\
  & = e^(-X_s + W_s) integral_0^(+infinity) dd(Y) (- dv(,A) exp{- A Y^2 })\
  & = e^(-X_s + W_s) (-dv(,A) 1/2 integral_(-infinity)^(+infinity) dd(Y) exp{- A Y^2 }) wide & "ho una gaussiana" = sqrt(pi/A)\
  & = e^(-X_s + W_s) 1/2 (- dv(,A) sqrt(pi/A)) = e^(-X_s + W_s) sqrt(pi)/4 A^(-3/2)\
  & = e^(-X_s + W_s) sqrt(pi)/4 (2 X_s)^(+3/2)
  $]
#aeq[$ n_s & = g_s/(2 pi^2) T^3 exp{-(m_s - mu_s)/T} sqrt(pi)/4 2^(3/2) (m_s/T)^(3/2) $]
$ heq(n_s & = g_s ((m_s T)/(2 pi))^(3/2) exp{-(m_s - mu_s)/T}) $
Dato che $m_s$ e $mu_s$ sono fissati dalla specie, abbiamo solo $T$ che può variare e porta a due regimi:
- Se $T >> m_s$ ho $n_s prop (m_s T)^(3/2)$
- Se $T << m_s$ ho $n_s prop exp{-m_s/T}$
#figure(
  image("images/3-2_densita_primordiale.pdf", width: 50%)
)
Il motivo per cui si ha la caduta esponenziale a basse temperature è che le particelle hanno molta poca energia cinetica, quindi è molto improbabile che riescano in un'interazione a produrre nuove partecelle.
È invece possibile che queste annichilino tra loro, dunque è favorevole la diminuzione di $n_s$ che all'equilibrio poi dà questo andamento.

Passiamo ora a $rho_s$
#aeq[$ J_(plus.minus) (X_s, Y) &approx e^(-X_s + W_s) integral_0^(+infinity) dd(Y) Y^2 exp{- Y^2/(2X_s) } (X_s + Y^2/(2 X_s)) $]
Possiamo dividere la somma in due integrali, di cui il primo è uguale a quello che abbiamo già risolto.
Quindi rimane solo il secondo che si risolve in modo analogo
#aeq[$ 1/(2X_s) integral_0^(+infinity) dd(Y) exp{- Y^2/(2X_s) } Y^4
  &= A 1/2 dv(,A,2) integral_(-infinity)^(+infinity) dd(Y) exp{- A Y^2 }\
  &= A/2 dv(,A,2) sqrt(pi/A)\ &= A/2 3/4 A^(-5/2)\ &= 3/8 sqrt(pi) A^(-3/2)
$]
Anche questo è simile all'integrale di prima, infatti otteniamo
#aeq[$ J_(plus.minus) (X_s, Y) = I_(plus.minus) X_s + 3/2 I_(plus.minus) $]
quindi
$ heq(rho_s = m_s n_s + 3/2 n_s T) $
possiamo notare che questa è l'analogo statistico dell'approssimazione $E = m + E_K$

Terminiamo con $p_s$
#aeq[$ Y^4/sqrt(X_s^2 + Y^2) = Y^4/X_s (1 + (Y/X_s)^2)^(-1/2) = Y^4/X_s (1 - 1/2 (Y/X_s)^2 + ...) ~ Y^4/(X_s) $]
#aeq[$ p_s = g_s/(2 pi^2) T^4 e^(-X_s + W_s) integral_0^(+infinity) dd(Y) Y^4/(X_s) exp{- Y^2/(2X_s) } $]
Ma questo integrale è uguale a quello che abbiamo appena calcolato moltiplicato per $2/3$, quindi otteniamo
$ heq(p_s = 0 + n_s T) $
Lo 0 è stato messo per evidenziare come non ci siano termini che dipendono dalla massa, in accordo con quello che avevamo ottenuto nei primi capitoli (dove avevamo trovato $w = 0$ per la materia).

=== Limite ultra-relativistico
In questo limite abbiamo che $E_s approx q$ e quindi $X_s -> 0$.
Possiamo anche trascurare $W_s$, questo può essere dimostrato (almeno per elettroni e protoni) ma non lo faremo.
Un'intuizione della verità di questa affermazione può arrivarci pensando ai fotoni, che sono sempre ultra-relativistici.
Esiste un fenomeno detto 'doppio scattering Compton' in cui si ha $e^- + gamma <--> e^- + gamma + gamma$.
Ma questo significa che l'energia interna del sistema non dipende dal numero di fotoni presenti, quindi $mu = 0$.\
Dobbiamo quindi valutare
$ I_(plus.minus) (0, 0) = integral_0^(+infinity) dd(Y) Y^2/(e^Y plus.minus 1) wide J_(plus.minus) (0, 0) = integral_0^(+infinity) dd(Y) Y^3/(e^Y plus.minus 1) $
Questi due integrali possono essere risolti utilizzando due integrali notevoli (che arrivano direttamente dalla definizione della zeta di Riemann $zeta(x)$)
$ integral_0^(+infinity) dd(x) x^n/(e^x - 1) = zeta(n+1) n! wide integral_0^(+infinity) dd(x) x^n/(e^x + 1) = zeta(n+1) n! (1 - 2^(-n)) $
Quindi
$ heq(n_s = zeta(3)/pi^2 g_s T^3 cases(1 quad s in "BE", 3/4 quad s in "FD")) $
Notiamo che la densità numerica scala con una potenza doppia rispetto al caso non relativistico.
Questo è dovuto al fatto che ad alta energia è molto più semplice generare nuove particelle dalle interazioni.
#aeq[$ rho_s = (3 zeta(4))/pi^2 g_s T^4 cases(1 quad s in "BE", 7/8 quad s in "FD") $]
Usando $zeta(4) = pi^4/90$
$ heq(rho_s = pi^2/30 g_s T^4 cases(1 quad s in "BE", 7/8 quad s in "FD")) $
#aeq[$ p_s = g_s/(2 pi^2) integral_0^(+infinity) dd(q) q^(cancel(4)^3)/(3 cancel(q)) f_s(q) $]
$ heq(p_s = 1/3 rho_s) $
Anche questo è uguale al risultato che abbiamo ottenuto nei primi capitoli ($w = 1/3$ per la radiazione).

Notiamo che in tutti i risultati in limite ultra-relativistico, la massa della specie non compare.
Quindi significa che in questa approssimazione, tutte le specie si comportano allo stesso modo (a meno della molteplicità).

Con i risultati che abbiamo ottenuto, proviamo ora a calcolare l'abbondanza odierna dei fotoni
#aeq[$ Omega_(gamma 0) = overline(rho)_(gamma 0)/(rho_c c^2) quad "con" quad rho_c = (3 H_0^2)/(8 pi G) $]
dove abbiamo diviso per $c^2$ perché $rho_c$ l'avevamo scritta come densità di massa, mentre $overline(rho)_(gamma 0)$ l'abbiamo scritta come densità di energia.
Scrivendo l'espressione ottenuta per $overline(rho)_(gamma 0)$ (reinserendo le dovute costanti) e facendo il calcolo si ottiene
$ Omega_(gamma 0) = (8 pi G)/(3 H_0^2 c^2) g_gamma^2/(planck^2 c^3) pi^2/30 (underbracket(T_(gamma 0), qty("3", "K")) k_B)^4 approx num("5e-5") $<eq:abb_fot_ogg>
Questo risultato è circa metà dell'abbondanza di radiazione che abbiamo già visto ($num("9e-5")$).
Quindi c'è qualcosa che non stiamo considerando.
Sono i neutrini, che ancora oggi possono essere considerati ultra-relativistici e dunque radiazione.

Un'ultima cosa che possiamo fare prima di procedere è andare a sfruttare queste relazioni per collegare la temperatura ai parametri legati al tempo.
Sappiamo che $rho_"r" ~ a^(-4)$ e che $rho_"r" ~ T^4$.
Quindi per specie ultra relativistiche vale la relazione
$ heq(T_s ~ a^(-1)) $

== Equilibrio chimico<sec:eq_chimico>
Abbiamo già detto che siamo in equilibrio chimico se per qualunque tipo di interazione #box($A + B <--> C + D$), questa è fatta in entrambi i  versi in modo tale che la concentrazione delle singole specie non cambi ($mu_A + mu_B = mu_C + mu_D$).\
Per raggiungere questo stato sono necessarie due condizioni:
- L'energia del sistema deve essere molto maggiore della massa di tutte le particelle (altrimenti alcune di esse non verrebbero generate perché sotto soglia).
- L'interazione deve avere abbastanza tempo per avvenire.
Questa condizione non è necessariamente soddisfatta in un universo in espansione.\
Sappiamo che il _rate_ di espansione è $H$.
Definiamo un *rate di interazione* (*interaction rate*) $Gamma$ come il numero medio di interazioni che avvengono in un intervallo di tempo.
- Se $Gamma >> H$ le interazioni hanno tempo di avvenire e il sistema può raggiungere l'equilibrio chimico.
- Se $Gamma << H$ le particelle vengono allontanate le une dalle altre troppo in fretta e non hanno tempo di interagire.
Il nostro interesse è studiare in quali intervalli di temperatura queste condizioni sono soddisfatte.
Ci concentreremo per semplicità sui primi istanti di vita dell'universo in cui tutto era ultra-relativistico e l'evoluzione era radiation dominated.
#aeq[$H^2 = (8 pi G)/3 overline(rho)_(r 0) = (8 pi G)/3 overline(rho)_(r) a^(-4)$]
$ H ~ T^2 sqrt(G) $
dove lasciamo la dipendenza da $G$ poiché questa costante è molto diversa da $1$ (#box[$G approx qty("6.7e-39", "GeV")$]) e vogliamo valutare degli ordini di grandezza.\
Dobbiamo ora valutare $Gamma$.
Ne avremo uno per ogni reagente e avrà una forma del tipo (direttamente dalla definizione di sezione d'urto che si vede ad un corso di particelle)
$ Gamma_A = n_B expval(v_(A B)) sigma_(A B, C D) $
Sappiamo che $n_B ~ T^3$, mentre $expval(v_(A B)) approx 1$ (in unità di $c$) perché le particelle sono tutte ultra-relativistiche.\
Per quanto riguarda $sigma$ sappiamo che a livello fondamentale le interazioni possono essere descritte con diagrammi di Feynman
#figure(
  include "images/feynmann_debole.typ"
)
L'ampiezza di interazione sarà legata al valore di aspettazione del diagramma, che a sua volta è proporzionale alla costante di accoppiamento dell'interazione
$ sigma ~ alpha^2/T^2 quad "con" alpha = g^2/(4 pi) $
dove abbiamo diviso per $T^2$ per far quadrare le dimensioni ($[sigma] = L^2 = E^(-2)$).\
La costante di accoppiamento dipende dal tipo di interazione
#aeq[$ alpha_("EM") approx 1/137 wide alpha_"W" approx numrange("e-6", "e-5", delimiter:"÷") wide alpha_S approx Order(1)$]
questi valori però non sono costanti, bensì variano con l'energia.\
Ad alte energie le interazioni elettromagnetica e debole diventano più efficienti (e tendono asintoticamente ad unirsi nell'interazione elettrodebole).
Ad esempio ad un'energia dell'ordine della massa del bosone $Z^0$, si ha $alpha_"EM" approx 1/127$ e $alpha_"W" approx num("e-2")$.\
L'interazione forte invece si comporta in modo opposto (infatti ad alta energia si ha il deconfinamento di quark e gluoni). 
All'energia $E approx m_(Z^0)$, si ha $alpha_"S" approx num("e-2")$.\
Quindi se consideriamo energie abbastanza alte possiamo assegnare lo stesso valore a tutte le costanti di accoppiamento
#aeq[$alpha_"EM" approx alpha_"W" approx alpha_"S" approx alpha$]
Mettendo tutto assieme otteniamo l'andamento per il rate di interazione
$ Gamma_A ~ T^3 alpha^2 T^(-2) ~ alpha^2 T $
Quindi
$ Gamma/H ~ (alpha T)/(sqrt(G) T^2) ~ qty("e15", "GeV")/T $<eq:limite_temp>
Se vogliamo $Gamma >> H$ dovremo avere $T << qty("e15", "GeV")$.\
Questo significa che inizialmente si parte da una temperatura altissima e l'universo si espande in modo incredibilmente veloce da non far interagire le particelle.
Poi si scende sotto $qty("e15", "GeV")$ e iniziano ad avvenire le interazioni che portano al raggiungimento dell'equilibrio chimico.
La temperatura poi continua a scendere fino a quando non passa sotto la massa del quark top.
A questo punto il quark diventa non relativistico e inizia ad annichilire senza poter essere prodotto (perché non c'è più abbastanza energia) quindi piano piano si esaurisce completamente (quando la temperatura scende inizia a calare tanto si raggiunge il decadimento esponenziale che abbiamo visto nell'approssimazione non relativistica).
Poi è il turno del bosone di Higgs che fa la stessa fine.\
Quando però la temperatura scende sotto una certa soglia, le interazioni non hanno più una costante di accoppiamento che può essere considerata uguale per tutti.
Quindi le specie iniziano a differenziarsi in base a quali interazioni sentono.\
Prendiamo ad esempio l'interazione debole.
Quando si raggiunge la temperatura corrispondente alla massa del bosone $Z^0$ (la prima ad essere raggiunta dopo il bosone di Higgs, $m_(Z^0) approx qty("100", "GeV")$), inizia a non essere più possibile risolvere tutta l'interazione che sembra invece un'interazione puntiforme come descritto dalla teoria di Fermi
#figure(
  include "images/feynmann_fermi.typ"
)
In questa teoria la costante di accoppiamento diventa
$ alpha_"W" ~ G_F E^2 $
con $G_F$ la costante di Fermi ($G_F approx qty("1.17e-5", "GeV^-2")$).
Questo andamento di $alpha_"W"$ con l'energia (che qui abbiamo ricavato solo da uno studio dimensionale) deriva dal fatto che la forza di interazione dipende dalla risoluzione con cui si campiona.\

Possiamo quindi vedere cosa succede ai neutrini (gli unici che sentono solo l'interazione debole) quando si scende sotto i $qty("100", "GeV")$
$ Gamma/H ~ (T^3 (G_F T^2)^2 T^(-2))/(sqrt(G) T^2) ~ T^3 qty("e-10", "GeV^-4")/qty("e-19", "GeV-1") ~ (T/qty("1", "MeV"))^3 $
La situazione si ribalta: sotto il $unit("MeV")$ i neutrini non sono più in equilibrio chimico, quindi si disaccoppiano dal resto del bagno.
Questo vorrebbe dire che il numero di neutrini potrebbe cambiare, ma dagli esperimenti di particelle sappiamo che in questi regimi i neutrini interagiscono molto poco.\
Quindi questi continuano ad evolvere in modo separato con una loro temperatura.
Si dice che l'universo diventa _trasparente_ per loro.

== Entropia dell'universo
Finché ci troviamo in equilibrio termodinamico e chimico (nel range tra $qty("e15", "GeV")$ e $qty("1", "MeV")$) ci troviamo in un bagno termico, in cui vale la prima legge della termodinamica
$ dd(U) + p dd(V) = T dd(S) + sum_i mu_i dd(N_i) $
Quindi posso calcolare l'entropia del sistema
#aeq[$ T dd(S) &= underbracket(dd(U), dd((rho V))) + p dd(V) - sum_i mu_i dd(N_i)\
  &= rho dd(V) + V dd(rho) + p dd(V) - sum_i mu_i dd(N_i)\
  &= V [(rho + p) dd(ln(V)) + dd(rho) - 1/V sum_i mu_i dd(N_i)]
$]
Calcolo quindi la derivata temporale
#aeq[$ dv(S,t) = V/T [(rho + p) dv(ln(V), t) + dv(rho, t) - 1/V sum_i mu_i dv(N_i, t)] $]
Possiamo ora notare che i primi due termini nella parentesi non sono altro che la legge di continuità. Infatti
#aeq[$ dv(ln(V), t) = 1/V dv(V,t) = 1/(cancel(L) a^3) dv(cancel(L) a^3, t) = 1/a^3 3 a^2 dot(a) = 3 dot(a)/a $]
quindi
#aeq[$ (rho + p) dv(ln(V), t) + dv(rho, t) = 3 dot(a)/a (rho + p) + dot(rho) = 0$]
Rimettendo nell'equazione sopra otteniamo
$ heq(dv(S,t) = - 1/T sum_i mu_i dv(N_i, t)) $
ma dato che siamo all'equilibrio chimico, il numero di paticelle di ciascuna specie non varia, quindi
$ dv(S,t) = 0 $
Quindi per buona parte della sua vita, l'universo ha subito un'espansione adiabatica.

Però noi sappiamo anche che i fotoni hanno $mu_gamma = 0$ quindi gli è concesso di variare in numero anche mantenendo l'equilibrio chimico.
Dunque potremmo aspettarci un alto numero di fotoni.\
Definiamo il *rapporto tra barioni e fotoni* (*barion-to-photon ration*) $eta$
$ heq(eta = N_b/N_gamma) quad = n_b/n_gamma $
Proviamo a valutarlo oggi, assumendo che tutta la componente di barioni sia data da protoni (ci sarebbero anche gli elettroni ma hanno massa trascurabile)
#aeq[$ n_(b 0) = overline(rho)_b/m_p = (Omega_(b 0) rho_c)/m_p wide wide n_(gamma 0) = g_gamma/(planck c)^3 zeta(3)/pi^3 T^3_(gamma 0) k_B^3$]
Facendo il calcolo si ottiene $eta approx num("6e-10")$.
Questo significa che ci sono quasi 2 miliardi di fotoni (stiamo contando solo quelli primordiali della CMB, poi ci sono quelli emessi dalle sorgenti) per ogni barione (dove barione è inteso in senso cosmologico ossia qualsiasi materia che non sia materia oscura).

Torniamo all'entropia e cerchiamo di scriverla come un differenziale perfetto (tenendo conto che la variazione del numero di particelle è nulla)
#aeq[$ dd(S) = 1/T [(rho + p) dd(V) + V dd(rho)] = 1/T [dd(((rho + p)V)) - V dd(p)] $]
ma sappiamo che
#aeq[$ p = 1/3 rho = 1/3 g pi^2/30 T^4 quad ==> quad dv(p, T) = 4/3 rho/T = (rho + p)/T quad ==> quad dd(p) = 1/T (rho + p) dd(T) $]
quindi
$ heq(dd(S) = dd("") [(rho + p)/T V]) $
Ma questo è una quantità moltiplicata per un volume.
Quindi posso definire una *densità di entropia* $s$
$ heq(s = (rho + p)/T ) $
Dato che l'entropia totale deve restare costante e il volume si espande, la densità di entropia si diluisce con il tempo.

== Numero di gradi di libertà
Consideriamo ora solo le particelle ultra-relativistiche (siamo in un universo primordiale, quindi radiation dominated). La densità di energia di queste sarà
$ rho_r = sum_(i in "u-rel") rho_i = pi^2/30 [sum_(i in "BE") g_i T^4_i + 7/8 sum_(i in "FD") g_i T^4_i]_(i in "u-rel") $
Dato che i fotoni sono le particelle di gran lunga più abbondanti nell'universo, di solito si usa la temperatura di quest'ultima come valore di riferimento:
$ rho_r = pi^2/30 g_* (T_gamma) T^4_gamma $
dove $g_*$ viene detto *numero efficace di gradi di libertà in energia*
$ g_* (T) = sum_(i in "BE") g_i (T_i/T)^4 + 7/8 sum_(i in "FD") g_i (T_i/T)^4  $
Noi sappiamo che man mano che le specie diventano non relativistiche e si svuotano, ci sono sempre meno specie che contribuiscono a questo conteggio.
Quindi ci aspettiamo una funzione 'a gradini'.

#box[Prendiamo ora la densità di entropia
$ s_r = sum_(i in "u-rel") s_i = sum_(i in "UR") (p_i + rho_i)/T_i = 4/3 sum_(i in "UR") rho_i/T_i = (2 pi^2)/45 Tilde(g_*) (T_gamma) T^3_gamma $]
dove $tilde(g)_*$ viene detto *numero efficace di gradi di libertà in entropia*
$ Tilde(g_*) (T) = sum_(i in "BE") g_i (T_i/T)^3 + 7/8 sum_(i in "FD") g_i (T_i/T)^3  $
#osservazione[
Finché siamo nel bagno termico tutte le specie condividono la stessa temperatura $T$ qundi tutti i rapporti $T_i/T$ fanno 1.
Se è così, allora $g_* = Tilde(g_*)$.\
Nel momento in cui una qualsiasi specie si disaccoppia, questa specie potrà avere una temperatura diversa.
In tal caso il contributo dato a $g_*$ e a $Tilde(g_*)$ sarà diverso (perché dipendono da una potenza diversa del rapporto tra temperature) e quindi $g_* != Tilde(g_*)$.]
=== Valori effettivi
Andiamo ora a vedere effettivamente i valori che assume $g_*$.
Iniziamo dal momento in cui tutte le specie erano ultra-relativistiche.
- Per i bosoni abbiamo
#aeq[$
  & 2 & + quad & "fotoni (2 polarizzazioni)"\
  & 2 dot 8 & + quad & "gluoni (8 colorazioni e 2 polarizzazioni)"\
  & 3 dot 3 & + quad & "bosoni" W^(plus.minus), Z^0 "(3 stati di spin)"\
  & 1 & = quad & "bosone di Higgs"\
  & 28
$]
- Per i fermioni abbiamo
#aeq[$
  & 3 dot 2 dot 2 & + quad & "leptoni" e^(plus.minus), mu^(plus.minus), tau^(plus.minus)  "(2 spin e 2 part.-antipart.)"\
  & 6 dot 3 dot 2 dot 2 & + quad & "quark (3 colori, 2 spin e 2 part.-antipart.)"\
  & 3 dot 2 & = quad & "neutrini (2.-antipart)"\
  & 90
$]
dove non ho moltiplicato per 2 spin i neutrini in quanto la teoria ci dice che esistono solo quelli _left-handed_.\
Se sono tutti nel bagno termico (con la stessa temperatura)
#aeq[$ g_* = 28 + 7/8 90 = 106.75 $]
Man mano che le specie diventano non relativistiche dobbiamo togliere il loro contributo (ad esempio quando per primo il quark top transisce dobbiamo togliere $3 dot 2 dot 2 = 12$ gradi di libertà fermionici).\
Facendo il conto dopo ogni transizione si ottengono i risultati riportati nella seguente tabella e mostrati nel grafico.
#figure(
table(
  columns: 3,
  table.header[Evento/Particelle che transiscono][Energia scala][$g_*$ rimanenti],
  [Big Bang],[],[106.75],
  [$t$],                          [$qty("170", "GeV")$], [96.25],
  [$H$, $Z^0$, $W^(plus.minus)$], [$qty("100", "GeV")$], [86.25],
  [$b$],                          [$qty("4", "GeV")$],   [75.75],
  [$c$, $tau$],                   [$qty("1.5", "GeV")$], [61.75],
  [QCD phase transition],         [$qty("150", "MeV")$], [17.25],
  [$pi^(plus.minus,0)$, $mu$],    [$qty("100", "MeV")$], [10.75],
  [Disaccoppiamento $nu$],        [$qty("1", "MeV")$],   [5.5],
  [$e$],                          [$qty("0.5", "MeV")$], [2]
))
#figure(
  image("images/3-3_gradi_lib.png", width: 80%),
  caption: [Evoluzione del numero efficace di gradi di libertà in energia],
)
La zona evidenziata in grigio corrisponde alla *trasizione di fase della QCD*.
Questo è il processo in cui si stabilisce il confinamento di quark e gluoni che si condensano a formare adroni.
Tutti gli adroni formatisi, fatta eccezione per i pioni $pi^(plus.minus, 0)$, hanno una massa maggiore dell'energia a cui avviene la transizione dunque si formano già non relativistici (motivo della grande caduta di $g_*$ che perde tutti i quark e gluoni in un colpo solo).

== Evoluzione della temperatura
Vogliamo ora vedere come evolve la temperatura legandola al fattore di scala.
Noi sappiamo che l'entropia totale del bagno termico rimane costante, e questa sarà data dalla densità di entropia per il volume, quindi
#aeq[$ s a^3 = "cost" = (2 pi^2)/45 Tilde(g_*) (T) T^3 a^3 $]
dove usiamo semplicemente $T$ perché in questa fase $T_gamma = T$.
Quindi otteniamo che la temperatura del bagno evolve come
$ heq( T prop a^(-1) [Tilde(g_*) (T)]^(-1/3) ) $
Cerchiamo di capire cosa succede nella pratica.
Supponiamo di avere il bagno termico e ad un certo punto avviene la transizione di una specie.
Quella specie non contribuirà più nel conteggio dei gradi di libertà.
Quindi $g_*$ scende e $T$ sale.
Nella realtà $T$ non sale, bensì rallenta la diminuzione data dal fattore $a$, come si vede nel grafico seguente
#figure(
  image("images/3-4_evoluzione_temperatura.jpg", width: 50%),
  caption: [Evoluzione della temperatura durante la transizione di fase degli elettroni.]
)
Dal punto di vista fisico, quando la specie transisce ci sono molte annichilazioni e quindi un grosso rilascio di energia (tipicamente sotto forma di fotoni).
Questa energia viene redistribuita al bagno che riesce a resistere temporaneamente al calo di temperatura (come se avessi del calore che viene fornito al bagno).
Questo è esattamente analogo a quanto avviene nelle transizioni di stato (e.g. da liquido a solido) dove durante la transizione la temperatura non scende perché ho il _calore latente_.

Dato che l'energia viene ridistribuita al bagno, se ho una specie che non interagisce più, questa non riceverà l'energia liberata e quindi non sentirà l'effetto della transizione di fase.
Un esempio è la transizione di fase degli elettroni che avviene dopo che i neutrini si sono disaccoppiati.

=== Disaccoppiamento dei neutrini
Prima di trattare cosa succede ai neutrini durante la transizione degli elettroni facciamo un paio di considerazioni.
Innanzitutto notiamo che se il potenziale chimico dei neutrini $mu_nu$ è circa 0 (come ci si aspetta da quanto ci dicono i particellari), allora possiamo dire che l'entropia dei soli neutrini sarà anch'essa conservata (e dunque sarà conservata anche l'entropia del bagno senza neutrini).
Infatti
#aeq[$ dv(S_nu, t) = -1/T mu_nu dv(N_nu, t) = 0 $]
In secondo luogo possiamo considerare il numero di neutrini.
Sappiamo che questi sono stabili quindi il loro numero non varia nel tempo (ci sono le oscillazioni tra una famiglia e l'altra ma il numero totale è costante)
#aeq[$ N_nu = V n_nu prop a^3 n_nu prop cancel(a^3) g cancel(a^(-3)) integral dd(q, 3) 1/(exp{-q/T} + 1) $]
dove abbiamo trascurato la loro massa e il loro potenziale chimico.
Sapendo che questo deve essere costante, vuol dire che l'integrale non può dipendere da $a$.
Tuttavia c'è una dipendenza da $a$ nascosta nel trimomento, infatti passando al momento comovente $abs(va(P)) =  a abs(va(q))$ l'integrale diventa
#aeq[$integral dd(q, 3) 1/(exp{-abs(va(P))/(a T)} + 1)$]
Se vogliamo che questo non dipenda da $a$ vuol dire che la temperatura deve controbilanciare.
Quindi concludiamo che per i neutrini dopo il disaccoppiamento si ha
$ heq(T_nu prop a^(-1)) $

Passiamo ora a studiare cosa succede quando c'è la transizione di fase degli elettroni (a $T approx m_e approx qty("0.5", "MeV")$).
Consideriamo l'entropia del bagno termico (senza i neutrini) che dovendosi conservare sarà uguale prima e dopo la transizione
#aeq[$ evaluated(Tilde(g_*) (T) T^3 a^3)_(T > m_e) = evaluated(Tilde(g_*) (T) T^3 a^3)_(T < m_e) $]
#aeq[$ (Tilde(g_*) (T > m_e))/(Tilde(g_*) (T<m_e)) = ([T a]^3_(T < m_e))/([T a]^3_(T > m_e)) $]
Prima della transizione nel bagno rimangono solo più elettroni e fotoni quindi
#aeq[$Tilde(g_*) (T > m_e) = 2 + 7/8 dot 2 dot 2 = 11/2$]
Dopo ci sono solo più i fotoni
#aeq[$Tilde(g_*) (T < m_e) = 2$]
Quindi
#aeq[$ 11/4 = ([T a]^3_(T < m_e))/([T a]^3_(T > m_e)) $]
Dato che i fotoni fanno parte del bagno sia prima che dopo (a noi interessa solo il dopo) abbiamo che
#aeq[$evaluated(T)_(T < m_e) = evaluated(T_gamma)_(T < m_e)$]
Inoltre prima della transizione i anche i neutrini avevano la stessa temperatura del bagno.
Infatti erano avvenuto da poco il disaccoppiamento (a $T approx qty("1", "MeV")$) e nel lasso di tempo tra $qty("1", "MeV")$ e $qty("0.5", "MeV")$ sia i neutrini che il bagno erano evoluti allo stesso modo anche senza 'parlarsi' (perché non essendo successo 'niente di interessane', erano soggetti solo all'espansione dell'universo uguale per tutti) mantenendo la stessa temperatura.
#aeq[$evaluated(T)_(T > m_e) = evaluated(T_nu)_(T > m_e)$]
Questo ovviamente non è vero dopo $qty("0.5", "MeV")$ perché per il bagno è successa la transizione degli elettroni, di cui i neutrini non si sono accorti.
Quindi
#aeq[$ 11/4 = ([T_gamma a]^3_(T < m_e))/([T_nu a]^3_(T > m_e)) $]
Possiamo ora sfruttare l'evoluzione della temperatura per i neutrini.
Infatti abbiamo che $T_nu a$ rimane costante e ha valore uguale sia prima che dopo la transizione (di cui tanto i neutrini non si accorgono)
#aeq[$ 11/4 = [(T_gamma cancel(a))/(T_nu cancel(a))]^3_(T < m_e) $]
$ heq( T_nu = (4/11)^(1/3) T_gamma ) $
Questa relazione è valida a qualunque tempo successivo alla transizione degli elettroni (che sono stati gli ultimi a transire).
Possiamo quindi valutarlo oggi
$ T_(nu 0) = (4/11)^(1/3) T_(gamma 0) = (4/11)^(1/3) qty("2.73", "K") approx qty("1.95", "K") $
Ciò significa che possiamo aspettarci un *fondo cosmico di neutrini* (*Cosmic neutrinos Background*, *C$nu$B*) con una temperatura di circa $qty("1.95", "K")$.\
Bisogna però tenere conto che ad un certo punto anche in neutrini diventeranno non relativistici annichilendosi e diventando molto più rari.

Volendo ora possiamo correggere la stima che avevamo fatto dell'abbondanza della radiazione che avevamo fatto nell'@eq:abb_fot_ogg, aggiungendo ai fotoni della CMB anche i neutrini della C$nu$B.
Facendo il conto si ottiene effettivamente un risultato compatibile con quanto atteso #box[($Omega_(r 0) approx num("9e-5")$)].

== Scale temporali ed energetiche
Abbiamo visto in precedenza che ci sono alcune scale energetiche fondamentali dettate dalla fisica delle particelle.
È nostro interesse ora cercare di legare queste scale energetiche a valori temporali dopo il Big Bang.
Per fare ciò possiamo utilizzare l'equazione di Friedmann (in regime radiaton-dominated)
#aeq[$ H^2 = (8 pi G)/3 overline(rho)_r = (8 pi G)/3 pi^2/(30) g_* (T) T^4 $]
$ H = 2/3 [(pi^3 G)/5 g_* (T)]^(1/2) T^2 $
Ma sappiamo che in un universo radiation-dominated la relazione tra tempo e fattore di scala segue $a ~ t^(1/2) quad ==> quad dot(a) ~ 1/2 t^(-1/2) quad ==> quad dot(a)/a = H = 1/(2t)$.\
Quindi posso legare le energie ai tempi a cui le incontriamo.
Riportiamo di seguito una tabella con gli eventi, la loro energia e il tempo a cui sono avvenuti dopo il Big Bang
#figure(
table(
  columns: 3,
  table.header[Evento][Temperatura][Tempo],
  [EW phase transition],[$qty("100", "GeV")$],[$qty("20", "ps")$],
  [QCD phase transition],[$qty("150", "MeV")$],[$qty("20", "us")$],
  [Disaccoppiamento $nu$],[$qty("1", "MeV")$],[$qty("1", "s")$],
))

== Equazione di Saha
Supponiamo di essere in equilibrio chimico per la rezione $A + B <--> C + D$
#aeq[$ mu_A + mu_B = mu_C + mu_D $]
#aeq[$ mu_A + mu_B + m_A + m_B - m_A - m_B = mu_C + mu_D + m_C + m_D - m_C - m_D $]
$ -(m_A - mu_A)/T - (m_B - mu_B)/T + m_A/T + m_B/T = -(m_C - mu_C)/T - (m_D - mu_D)/T + m_C/T + m_D/T $<eq:equilibrio_masse>
Possiamo poi esprimere questi termini in funzione delle funzione della densità numerica per specie non relativistiche
#aeq[$ n_s (T) = g_s ((m_s T)/(2 pi))^(3/2) exp{-(m_s - mu_s)/T} $]
Definiamo anche
#aeq[$ n_s^((0)) (T) = g_s ((m_s T)/(2 pi))^(3/2) exp{-(m_s)/T} $]
che sarebbe la densità numerica che avrebbe la specie se avesse potenziale chimico nullo (sarà utile successivamente).\
In questo modo possiamo scrivere
$ exp{- (m_A - mu_A)/T} exp{-m_A/T} = (n_A (T))/(n_A^((0)) (T)) $
Quindi esponenziando ambo i lati dell'@eq:equilibrio_masse si ottiene
$ heq( (n_A (T))/(n_A^((0)) (T)) (n_B (T))/(n_B^((0)) (T)) = (n_C (T))/(n_C^((0)) (T)) (n_D (T))/(n_D^((0)) (T))) $
Questa viene detta *Equazione di Saha*, che descrive la relazione tra concentrazioni numeriche di specie non relativistiche all'equilibrio chimico.

== Nucleosintensi primordiale
Passiamo ora allo studio di un altro evento imporante nella storia dell'universo.
Consideriamo lo stato dopo l'annichilazione $e^+$ $e^-$
Troviamo fotoni e neutrini che sono relativistici.
Poi ci sono in quantità molto minore tutte le specie non relativistiche, tra cui elettroni, protoni e neutroni (gli unici a questo punto sufficientemente abbondanti da essere interessanti).\
Iniziamo considerando quali sono le interazioni che agiscono su queste particelle:
- L'interazione gravitazionale è ancora trascurabile
- L'interazione debole è diventata poco efficiente e sta per superare la soglia oltre la quale non riuscirà più a tenere il passo con l'espansione
- L'interazione forte è confinata all'interno degli adroni e schermata. Sopravvive solo una forza residua a molto corto raggio (analoga alle interazioni di Van der Waals per le molecole) detta *interazione nucleare forte* agente tra i nucleoni trasportata da pioni virtuali
- L'interazione elettromagnetica rimane ancora efficiente
Tra queste quella dominante è la nucleare forte che continua a dominare anche sulla elettromagnetica. Sotto l'azione di questa forza, i nucleoni tendono ad aggregarsi negli stati stabili: i nuclei atomici.
#definizione[
  Indichiamo con $Z$ il numero di protoni detto *numero atomico*, con $A$ il numero di protoni e neutroni detto *numero di massa*.

  Dato il nucleo $isotope(E, a:A, z:Z)$ questo avrà massa
  $ m_E = Z m_p + (A-Z) m_n - B_E $
  dove $B_E$ è l'*energia di legame*
]
Questo processo (detto *nucleosintesi primordiale*) è analogo a quello che è successo durante la transizione di fase della QCD.
La differenza è che per la QCD l'energia di legame era dell'ordine dei $unit("GeV")$ mentre in questo caso siamo sull'ordine dei $unit("MeV")$.\
Anche in questo caso i nuclei vengono prodotti già non relativistici.

Siamo ora interessati a quale sia la temperatura sotto la quale dobbiamo scendere per avere un numero apprezzabile di nuclei formati (vedremo che non è solo leggermente sotto l'energia di legame, bensì molto al di sotto).\
Supponiamo che un particolare nucleo sia in equilibrio chimico con i protoni e neutroni liberi
$ mu_E = Z mu_p + (A - Z) mu_n $
Andiamo ora a valutare l'argomento dell'esponenziale nell'espressione della densità numerica non relativistica.
#aeq[$
-(m_E - mu_E)/T &= - Z m_p/T - (A - Z) m_n/T + B_E/T + Z mu_p/T + (A - Z) mu_n/T\
&= Z (m_p - mu_p)/T - (A - Z) (m_n - mu_n)/T + B_E/T
$]
Esponenziando e scrivendo in funzione delle densità numeriche di protoni e neutroni otteniamo
#aeq[$
exp{- (m_E - mu_E)/T} = [(n_p (T))/g_p ((m_p T)/(2 pi))^(-3/2)]^Z [(n_n (T))/g_n ((m_n T)/(2 pi))^(-3/2)]^(A-Z) exp{B_E/T}
$]
Dove $g_n = g_p = 2$.\
Assumiamo inoltre che la massa dei nucleoni sia circa uguale ($m_p approx m_n approx m_N$).
Infatti la differenza tra le masse, che d'ora in poi chiameremo $Q = m_n - m_p approx qty("1.3", "MeV")$ è molto minore delle masse stesse.\
Quindi otteniamo
#aeq[$
exp{- (m_E - mu_E)/T} = 2^(-A) n_p^Z n_n^(A-Z) ((m_N T)/(2 pi))^(-3/2 A) exp{B_E/T}
$]
Possiamo quindi scrivere la densità numerica del nucleo facendo l'approssimazione $m_E approx A m_N$
$
n_E (T) = g_E 2^(-A) n_p^Z n_n^(A-Z) A^(3/2) ((m_N T)/(2 pi))^(3/2 (1 - A)) exp{B_E/T}
$
Per avere idea quantitativa di quanti ce ne siano ci serve una scala, quindi si usa calcolare il rapporto rispetto al numero di barioni (qualsiasi materia non oscura).\
Si definisce la quantità
$ x_E = N_E/N_B = n_E/n_B = n_E/(n_gamma eta) $
Possiamo sfruttare l'equazione trovata sopra per capire l'andamento.
$
x_E prop ((x_p n_gamma eta)^Z (x_n n_gamma eta)^(A-Z))/(n_gamma eta) T^(3/2 (1 - A)) exp{B_E/T}
$
Ricordando che $n_gamma prop T^3$ e trascurando $x_p$ e $x_n$ (sono dell'ordine dell'unità e a noi interessano solo gli ordini di grandezza) si ottiene
$
x_E prop eta^(A-1) T^(3/2 (A - 1)) e^(B_E/T) prop eta^(A-1) e^(B_E/T)
$
Dove nell'ultimo passaggio abbiamo trascurato il termine con andamento a potenza, in quanto domina l'esponenziale.
Questo è verò perché $B_E > T$, infatti siamo a temperature al di sotto del $unit("MeV")$, mentre le energie di legame anche solo le più basse sono
$B_"D" approx qty("2.2", "MeV")$ ($"D"$ è il deutone), $B_(isotope("H",a:3)) approx qty("7.8", "MeV")$, $B_(isotope("He", a:3)) approx qty("3.4", "MeV")$ e $B_(isotope("He", a:4)) approx qty("25", "MeV")$.\
Prendiamo il logaritmo dell'espressione
$
ln(x_E) prop (A-1) ln(eta) + B_E/T
$
$
heq( T = B_E/((1-A) ln(eta) + ln(x_E)) )
$
Questa è la temperatura sotto la quale bisogna scendere per avere un determinato $x_E$.
Se supponiamo di voler raggiungere $x_E approx 1 => ln(x_E) approx 0$, notiamo che dobbiamo andare a temperature molto più basse di $B_E$ (perché ricordiamo che $eta approx num("6e-10")$).\
Fisicamente questo succede perché c'è un numero enorme di fotoni.
Quindi anche se l'energia di legame ricade nella coda della distribuzione, questa sarà popolata da un numero cospicuo di fotoni che potranno quindi distruggere il nucleo.
Per far sì che non ci siano più abbastanza fotoni che possono distruggere il nucleo è necessario dunque che l'energia di legame sia incredibilmente in profondità nella coda.\

Possiamo pensare ora a quale nucleo si forma prima.
Si potrebbe pensare che quelli con energia di legame maggiore si formino prima, ad esempio tra i quattro elencati sopra ci si aspetterebbe si sia formato prima l'elio.
Tuttavia per la formazione diretta dell'elio sarebbe necessario uno scattering a 4 corpi che è cinematicamente soppresso.
Dunque per formare l'elio è prima necessario formare il deutone ($p + n --> D + gamma$).
Una volta che ho deutoni a sufficienza posso poi formare elio.
Ma $D$ si forma a temperature più basse, quindi devo aspettare di più rispetto a quello che avrei se potessi formare direttamente $isotope("He",a:4)$.
Si parla di *Deuterion Bottleneck*, infatti una volta che ho il deutone la produzione di elio è incredibilmente efficiente e veloce.\
Facendo il conto con la formula sopra, per raggiungere $x_D approx 1$ bisogna aspettare fino a
#aeq[$T approx qty("0.1", "MeV")$]
Se si usa invece la formula completa si ottiene
$ heq(T approx qty("0.05", "MeV")) $
Questa è la temperatura a cui avviene la nucleosintesi

=== Concentrazione di elio
Vogliamo andare ora a calcolare quanto elio è stato prodotto nella nucleosintesi primordiale.
In particolare siamo interessati nel rapporto tra la massa di elio e la massa totale barionica indicato con $Y_p$
$
Y_p = (sum m_(isotope("He", a:4)))/(sum m_b) = (4 m_N N_(isotope("He", a:4)))/(m_N (N_p + N_n)) = (4 m_N N_n/2)/(m_N (N_p + N_n)) = 2 x_n
$
Dove abbiamo sostituito $N_n/2$ a $N_(isotope("He", a:4))$ perché stiamo supponendo che tutti i neutroni vengano usati per formare elio.
Dobbiamo notare tre cose:
- A denominatore abbiamo tutti i protoni e tutti i neutroni, anche quelli usati per formare l'elio (perché nella massa barionica stiamo considerando anche l'elio)
- Non stiamo contando gli elettroni (che sono barioni nel senso cosmologico di materia non oscura) perché hanno massa trascurabile
- Abbiamo sostituito con $N_n$ e non con $N_p$ perché ci sono meno neutroni che protoni.\
  Questo perché sappiamo che la densità numerica dipende inversamente dalla massa della specie, ed essendo i neutroni più massivi si diradano più velocemente.
Qundi abbiamo
$
Y_p = 2 (N_n)/(N_p + N_n) = 2 (n_n)/(n_p + n_n) = 2/(1 + n_p/n_n)
$
Concentriamoci su $n_p/n_n$.
Le interazioni che influenzano questo rapporto sono $p + e^- --> n + nu_e$ e $n + e^+ --> p + overline(nu)_e$.
Notiamo che sono entrambe mediate dall'interazione debole.\
Se siamo ancora prima del disaccoppiamento dei neutrini (quindi in equilibrio chimico) possiamo usare l'equazione di Saha, sfruttando il fatto che i neutrini e gli elettroni hanno potenziale chimico pressoché nullo (quindi la loro densità numerica è uguale a quella con $(0)$ ad apice)
#aeq[$
(n_p cancel(n_(e^-)))/(n_n cancel(n_(nu_e))) = (n_p^((0)) cancel(n_(e^-)^((0))))/(n_n^((0)) cancel(n_(nu_e)^((0))))
$]
$
n_p/n_n = cancel(g_p)/cancel(g_n) cancel(((m_p T)/(2 pi))^(3/2))/cancel(((m_n T)/(2 pi))^(3/2)) (e^(-m_p/T))/(e^(-m_n/T)) approx e^(Q/T)
$
Questa relazione è valida solo fino a quando non avviene il disaccoppiamento dei neutrini.
Dopo sappiamo che l'interazione debole non riesce a tenere il passo con l'espansione dell'universo.\
Quando avviene il disaccoppiamento, anche i neutroni smettono di interagire (trascuriamo l'interazione nucleare forte che lavora solo a corto range).
Quindi possiamo usare la formula vista sopra per calcolare fino a $x_n (T = qty("1", "MeV"))$.
In realtà facendo i conti più correttamente il disaccoppiamento dei neutrini avviene a $T = qty("0.8", "MeV")$.\
Se i neutroni fossero stabili, oltre questo punto il rapporto si congelerebbe, tuttavia questi decadono con un tempo di decadimento $tau_n approx qty("890", "s")$.
Dunque ho quello che si chiama il #box[*freeze-out*] dei protoni, mentre i neutroni piano piano diminuiscono.\
Dobbiamo calcolare come evolve il rapporto nel lasso di tempo tra $T = qty("0.8", "MeV")$ e $T = qty("0.05", "MeV")$, che se si trasforma in relazione temporale dà un risultato molto vicino a $tau_n$.
È come se fosse una corsa contro il tempo tra il decadimento e la ricombinazione.
#aeq[$
x_n (T = qty("0.05", "MeV")) = x_n (T = qty("0.8", "MeV"))exp{- (t (T = qty("0.05", "MeV")))/tau_n}
$]
Se si fanno tutti i conti si ottiene
$ heq(Y_p approx 0.25) $
che corrisponde effettivamente alla concentrazione che si osserva nell'universo.\
Notiamo che se vogliamo ottenere la frazione numerica di He dobbiamo dividere per un fattore 4 (perché l'elio ha 4 volte la massa dei singoli protoni), ottenendo $x_("He") = n_("He")/n_b = Y_p/4 approx 6.25%$.

Questo è un risultato molto importante in cosmologia perché permette di legare una quantità misurata astronomicamente ($Y_p$) a una misurata cosmologicamente ($eta$).
La stessa relazione può essere calcolata anche per altri nuclei, anche se la cosa è molto più complicata (non basta l'equazione di Saha, bisogna utilizzare l'equazione di Boltzmann collisionale) ottenendo il risultato riportato qui di fianco.
#subpar.grid(
  figure(
    image("images/3-6_nucleosintesis2.png", width: 85%),
  ),
  figure(
    image("images/3-6_nucleosintesis.jpg", width: 80%),
  ),
  columns: (1fr, 1fr),
  caption: [Andamento delle concentrazioni dei nuclei in funzione di $eta$.\ Le bande orizzontali rappresentano i valori sperimentali.],
)
Come si può notare, i valori per il litio non sono in accordo.
Questo è un problema ancora aperto in cosmologia detto *Lithium problem*.

== Ricombinazione atomica
A questo punto ci troviamo in un universo in cui sono presenti dei nuclei e degli elettroni, entrambi non relativistici e un gran numero di fotoni.
L'unica interazione rimanente oltre a quella gravitazionale è quella elettromagnetica che è ancora dominante.
In analogia a quanto successo nella nucleosintesi, gli elettroni iniziano a legarsi con i nuclei formando atomi elettricamente neutri
$
isotope(E, a:A, z:Z)^(Z+) + Z e^- --> isotope(E, a:A, z:Z) + gamma_s
$
dove i $gamma_s$ hanno energie uguali alle energie di legame atomiche.\
Questo fenomeno viene detto *ricombinazione*, anche se un termine più corretto dovrebbe essere _combinazione_ dato che gli atomi non sono mai stati combinati prima di questo momento.
Tuttavia si utilizza ricombinazione per ragioni storiche.

Inidchiamo con $I_E = sum_(i=1)^Z I_(E,i)$ la somma di tutte le energie di legame per un determinato atomo
$ cases(
I_"H" = I_("H", 1) approx qty("13.6", "eV"),
I_("He", 1) approx qty("25", "eV"),
I_("He", 2) approx qty("55", "eV")
) $
Notiamo innanzitutto che ci troviamo ad una scala di energia diversa dalla nucleosintesi (lì avevamo i $unit("MeV")$, qui abbiamo i $unit("eV")$).\
Inoltre anche qui notiamo una scala di energie ben definita e dato che non ci sono fenomeni analoghi al bottleneck del deuterio, questa scala impone direttamente un ordine temporale: viene ricombinato inizialmente $"He"^(++)$ poi $"He"^+$ e infine $"H"^+$.\
Dato che l'elio è presente in quantità inferiore e la sua ricombinazione avviene prima e più velocemente, possiamo concentrarci solo sulla ricombinazione dell'idrogeno che dura più a lungo.

Innanzitutto facciamo l'assunzione di essere in equilibrio non relatinistico, in questo modo vale l'equazione di Saha
#aeq[$
  (n_A n_B)/(n_C n_D) = (n_A^((0)) n_B^((0)))/(n_C^((0)) n_D^((0)))
$]
Nel nostro caso abbiamo $p^+ + e^- --> "H" + gamma$, che implica (assumendo tutto non relativistico)
$ m_p + m_e = m_"H" + I_"H" wide "e" wide mu_p + mu_e = mu_"H" $
(notiamo che diversamente dalla nucleosintesi abbiamo $mu_e != 0$ perché ora gli elettroni sono diventati non relativistici).
$
  (n_p n_e)/(n_"H") = (n_p^((0)) n_e^((0)))/(n_"H"^((0)))
$
noi vogliamo ottenere la concentrazione numerica
$ x_"H" = N_"H"/N_b = n_"H"/n_b = 1 - x_p $
dove $x_p$ è la frazione di protoni, e nell'ultima uguaglianza abbiamo fatto l'assunzione che tutto ciò che non è idrogeno siano protoni liberi.
Dobbiamo fare l'ulteriore assunzione (che per il momento non è stata nacora sperimentalmente smentita) che l'universo sia nel complesso elettricamente neutro, dunque che il numero di elettroni sia uguale a quello di protoni $x_e = x_p$
$
1 - x_e = n_"H"/n_b = n_"H"^((0))/(n_e^((0)) n_p^((0))) underbracket(n_p/n_b, = x_p = x_e) overbracket(n_e, =x_e n_b)
$
Possiamo ora scrivere l'espressione degli $n_s^((0))$
#aeq[$
n_s^((0)) = g_s ((m_s T)/(2 pi))^(3/2) exp{-m_s/T}
$]
dove $g_"H" = 4 = 3 + 1$ dato dal singoletto e tripletto.
Facciamo poi l'approssimazione $m_"H" approx m_p$ (solo nel termine con la potenza, nell'esponenziale che è più sensibile teniamo tutto)
#aeq[$
1 - x_e = ((2 pi)/ (T m_e))^(3/2) exp{I_H/T}x_e^2 eta n_gamma
$]
Andando a scrivere l'espressione di $n_gamma$ otteniamo
$
1 - x_e = x_e^2 underbrace(((2 pi)/ (m_e))^(3/2) exp{I_H/T} eta (2 zeta (3))/(pi^2) T^(3/2), f(T)) = f(T) x_e^2
$
#aeq[$
  f(T) x_e^2 + x_e - 1 = 0
$]
$
  heq(x_e (T) = (-1 + sqrt(1 + 4 f (T)))/(2 f(T)) ) wide "con" wide f (T) = (2 zeta (3))/(pi^2) eta ((2 pi T)/ (m_e))^(3/2) exp{I_H/T}
$
#figure(
  image("images/3-7_conc_elett.pdf", width: 60%),
  caption: [Evoluzione della frazione di elettroni liberi durante la ricombinazione.]
)<fig:conc_elett>

Possiamo chiederci a che redsift (e quindi a che tempo) corrisponde questo evento (ricordiamo che la nucleosintesi è avvenuta circa 3 minuti dopo il Big Bang).
#aeq[$
  T ~ [Tilde(g_*) (T)]^(-1/3) a^(-1) ~ [Tilde(g_*) (T)]^(-1/3) (1 + cal(Z)) 
$]
Ma dopo che c'è stata la ricombinazione di $e^(plus.minus)$, nel bagno termico sono rimasti solo più fotoni e dunque $Tilde(g_*)$ non è più cambiata da quel momento fino ad oggi
#aeq[$
  T = T_(gamma 0) (1 + cal(Z)) quad ==> quad cal(Z) = T/T_(gamma 0) - 1
$]
Facendo il calcolo per $T approx qty("0.35", "eV")$ (temperatura a cui inizia il processo) si ottiene $cal(Z) approx 1400$ che corrisponde ad un tempo $t approx num("3e5") "y"$.
Ma quel redshift si trova in un universo che è già matter-dominated.
Quindi è passato moltissimo tempo da quando è avvenuta la nucleosintesi.\
Se si fa il conto anche per l'altro estremo ($T approx qty("0.25", "eV")$) si ottiene una durata di $Delta cal(Z) approx 400$.
Dunque oltre a metterci molto tempo ad iniziare è un processo molto lungo.

Se vogliamo mettere una soglia di ricombinazione, un modo possibile (ne vedremo poi uno ancora migliore) è scegliere un threshold sulla $x_e$ e convertirlo in redshift. Se ad esempio scegliamo $x_e = 0.5$ otteniamo $cal(Z)_"rec" approx 1270$ e $t_"rec" approx num("2.9e5")"y"$.

== Disaccoppiamento dei fotoni e CMB
Fermiamoci ora a riflettere sulle interazioni che avvengono prima della ricombinazione e che mantengono in equilibrio chimico i fotoni, i protoni e gli elettroni.\
Tra fotoni e elettroni l'interazione avviene sotto forma di scattering Compton, mentre tra fotoni e protoni sotto forma di scattering Rutherford.
Per entrambi i tipi di scattering vale la formula per il tasso di reazione di $Gamma = n sigma c$, e perché questo riesca ad avvenire è necessario avere #box[$Gamma >> H$] (dove $H = H_0 sqrt(Omega_(m 0)) a^(-3/2)$ perché siamo in regime matter dominated).\
La concentrazione di protoni (che scende tanto più velocemente tanto più la specie è massiva) cala molto più velocemente di quella degli elettroni.
Quindi dato che le sezioni d'urto sono comparabili (essendo entrambi processi elettromagnetici) possiamo trascurare gli scattering Rutherford e pensare che i fotoni fossero accoppiati al bagno solo attraverso lo scattering Compton.\
A queste temperature lo scattering Compton tende a semplice scattering Thompson (essendo gli elettroni non relativistici) che ha sezione d'urto non dipendente dalla temperatura
$ sigma_"Th" approx qty("2e-3", "MeV^-2") $
dunque
$ Gamma_gamma = n_e sigma_"Th" c = x_e n_b sigma_"Th" c = x_e eta n_gamma sigma_"Th" c $
dove l'unica dipendenza dalla temperatura è data da $x_e$ che lentamente scende a causa della ricombinazione.
Ad un certo punto non ci saranno più abbastanza elettroni liberi con cui interagire e dunque si avrà il *disaccoppiamento dei fotoni* dal bagno.\
Calcoliamo a che temperatura avviene
#aeq[$ H (T_"dec") = Gamma (T_"dec") $]
$ H_0 sqrt(Omega_(m 0)) (T_"dec"/T_(gamma 0))^(3/2) = (2 zeta (3))/pi^2 eta sigma_"Th" c T^3_"dec" x_e (T_"dec") $
$ heq(T_"dec" approx qty("0.27", "eV") quad ==> quad cal(Z)_"dec" approx 1200) $
Tutto questo discorso è una buona approssimazione di quello che è successo davvero, ma molto semplificata.
Infatti se fosse andata solo così, ogni volta che un elettrone veniva catturato si aveva l'emissione di un $gamma$ a $qty("13.6", "eV")$ che poteva andare a estrarre l'elettrone di un idrogeno formato in precedenza, rallentando incredibilmente la ricombinazione.\
Nella realtà gli elettroni non sono stati catturati subito al livello fondamentale, bensì si sono combinati and un livello intermedio per poi decadere a quello fondamentale.
In questo modo c'era il rilascio di due fotoni nessuno dei quali con energia sufficiente a strappare un elettrone già ricombinato.\
Un altra approssimazione che abbiamo fatto non del tutto vera è che tutto il processo di ricombinazione sia avvenuto in equilibrio.
Tuttavia durante la ricombinazione stava avvenedo il disaccoppiameto dei fotoni che ha rotto l'equilibrio.
Questo ha avuto come effetto il fatto che alcuni elettroni siano riusciti a scappare alla ricombinazione.\
Combinando le due correzioni il grafico di @fig:conc_elett viene traslato verso temperature più basse e non arriva mai a 0, bensì si ferma a $x_e approx numrange("e-4", "e-3", delimiter:"÷")$
#figure(
  image("images/3-8_conc_elett2.pdf", width: 60%),
  caption: [Evoluzione della frazione di elettroni liberi durante la ricombinazione\ con le correzioni per le approssimazioni.\ Il valore minimo ragginto è innalzato per renderlo visibile.\ Con il valore risulterebbe indistinguibile.]
)

== Last scattering
Abbiamo visto che ad un certo punto i fotoni smettono di interagire con gli elettroni.
Ci sarà quindi un momento in cui ciascun fotone scattera per l'ultima volta.\
Per calcolare questo dobbiamo studiare la probabilità che ci siano enne scattering in un tempo $Delta t$.
Questa sarà data dalla distribuzione di Poisson
$
cal(P) (n, Delta t) = (Gamma_gamma Delta t)^n/(n!) e^(Gamma_gamma Delta t)
$
Ma dato che $Gamma_gamma$ varia nel tempo bisogna utilizzare una versione generalizzata
#aeq[$
Gamma_gamma Delta t --> integral dd(t) Gamma_gamma (t)
$]
Questo integrale non è nient'altro che la profondità ottica
$ heq(
tau(t_1, t_2) = integral_(t_1)^(t_2) dd(t) Gamma_gamma (t)
) $
(questa si riconduce alla formula ottenuta nei corsi di astrofisica che $Gamma_gamma$ è equivalente al libero cammino medio, dato che $c = 1$).\
Quindi possiamo pensare al disaccoppiamento come il processo che ha reso l'universo otticamente sottile per i fotoni.
Passiamo alla parametrizzazione in redshift
$
tau(cal(Z)_2, cal(Z)_1) = integral_(cal(Z)_2)^(cal(Z)_1) dd(cal(Z)) Gamma_gamma/((1 + cal(Z)) H (cal(Z)))
$
Vogliamo calcolare il tempo più lungo senza avere scattering, quindi ottenere $cal(Z)_"dec"$ tale che $tau(0, cal(Z)_"dec")$ mi dia la massima probabilità $cal(P) (0, tau) = e^(-tau)$.\
Per semplicità passo in redshift $cal(P) (tau) dd(tau) = cal(g) (cal(Z)) dd(cal(Z))$ dove $cal(g)$ è la densità di probabilità in redshift, anche detta *visibilità*.
$ cal(g) (cal(Z)) = e^(-tau) dv(tau, cal(Z)) $
Sviluppando i vari termini ho
#aeq[$
  Gamma_gamma &~ x_e (T) T^3 ~ x_e (cal(Z)) (1 + cal(Z))^3\
  H &~ (1 + cal(Z))^(3/2)
$]
Quindi
$
  dv(tau, cal(Z)) &= 1/dd(cal(Z)) (Gamma_gamma dd(cal(Z)))/((1 + cal(Z)) H (cal(Z)))\
                  &~ (1 + cal(Z))^3 (1 + cal(Z))^(-1) (1 + cal(Z))^(-3/2) x_e (cal(Z))\
                  &~ (1 + cal(Z))^(1/2) x_e (cal(Z))
$
Ma $x_e$ è costante prima e dopo la ricombinazione, quindi ho due andamenti paralleli che vengono interpolati durante la ricombinazione
#figure(
  image("images/3-9_vis_deriv.pdf", width: 50%)
)
Integrando otteniamo $tau$ che avrà un andamento analogo a legge di potenza con esponente di uno più grande alla sua derivata.\
Quindi $cal(g)$ sarà 0 sia a valori di $cal(Z)$ piccoli (a causa di $dv(tau, cal(Z))$) che a valori grandi (a causa di $e^(-tau)$).
#figure(
  image("images/3-10_visibility.png", width: 60%)
)
Notiamo che la distribuzione non è simmetrica (perché $x_e$ non lo è).
Definiamo il *last scattering* come il punto in cui è più probabile che sia avvenuto lo scattering, dunque il picco della distribuzione, che si trova a $cal(Z)_"ls" approx 11000$ (corrispondente a $t_"ls" approx 400000$ anni dopo il Big Bang).\
La luce che riceviamo dalla CMB proviene proprio da quell'ultimo scattering avvenuto in quel momento.
Possiamo notare che la distribuzione ha una larghezza di $Delta cal(Z) approx 80$ (corrispondente a $t approx numrange("150", "200", delimiter: "÷")$ anni).
Questo significa che la CMB non è stata prodotta istantaneamente (se vogliamo, non è 'infinitamente sottile'), bensì ha uno 'spessore' di circa 1000 anni.

