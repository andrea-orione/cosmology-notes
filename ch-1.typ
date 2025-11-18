//LTeX: language=it
#import "pkg-preamble.typ": *

= Equazioni per l'evoluzione dell'universo
Possiamo ora iniziare a ricavare le equazioni che governano l'evoluzione dell'universo.
Per fare ciò iniziamo dalle evidenze sperimentali (da non confondere con le interpretazioni che diamo a esse) che sono state raccolte a partire dal \'900:
- A grande scala (ossia oltre i $qty("100", "Mpc")$), l'universo che osserviamo sembra essere isotropo.
- Osservando le galassie, notiamo che in genere queste si stanno allontanando da noi tanto più velocemente quanto più sono lontane;
== Il principio cosmologico
Iniziamo dalla prima evidenza, che ci permette di fare delle grandi semplificazioni ai calcoli.\
Le misure più recenti sono quelle ottenute dalle osservazioni _deep field_ del telescopio Hubble (nel visibile) e del JWSP (nell'infrarosso).
Queste possono essere viste come dei 'carotaggi' nel cosmo in cui risultano visibili le galassie a tutte le distanze.\
Da queste misure si osserva che l'universo è in prima approssimazione isotropo.

Un ulteriore conferma di questa evidenza risiede nella CMB, infatti come abbiamo detto in precedenza questa risulta essere uno spettro di corpo nero di $T = qty("2.725", "K")$ in tutte le direzioni con fluttuazioni incredibilmente piccole.

Questa isotropia può portarci alla condizione di omogeneità se assumiamo il *principio Copernicano* secondo il quale noi non ci troviamo in un luogo speciale dell'universo.
Ciò ci porta a dire che l'universo è isotropo non solo rispetto a noi, bensì rispetto a un osservatore in qualunque luogo.
Questi risultati vengono riassunti nel principio cosmologico
#legge(title: "Principio cosmologico")[
  L'universo a grande scala ($l gt.tilde qty("100", "Mpc")$), può essere considerato omogeneo e isotropo.
]
#osservazione[
  Il principio cosmologico potrebbe sembrare in contrasto con quello che abbiamo detto nel @ch:introduzione[Capitolo], quando abbiamo parlato di ragnatela cosmica.
  Questo parzialmente è vero, tuttavia dobbiamo tenere a mente una cosa: quando parliamo di omogeneità non intendiamo per forza che le osservabili siano costanti e ovunque uguali, bensì che la struttura a grande scala abbia le stesse caratteristiche ovunque (eventualmente anche le disomogeneità locali).\
  Nella trattazione successiva avremo bisogno di assumere che l'universo sia effettivamente costante ovunque, in tal caso la struttura data dalla ragnatela cosmica verrà considerata come una perturbazione al primo ordine.
]

== La legge di Hubble
Passiamo ora alla seconda evidenza: poco dopo la scoperta che delle galassie (in particolare della scoperta che questi oggetti fossero esterni alla Via Lattea), si scoprì che questi avevano un moto rispetto a noi.\
Per misurare questo moto, si sfrutta il _redshift_.
#digressione(title: "Effetto Doppler")[
  Ricaviamo velocemente per ripasso la formula per la trasformazione della lunghezza d'onda data dall'effetto Doppler in relatività speciale.\
  Sia $O$ il Sistema di Riferimento (SR) dell'osservatore che emette la luce e sia $O'$ il SR dell'osservatore che la riceve, e siano $lambda_s$ e $lambda_o$ le lunghezze d'onda misurate rispettivamente alla sorgente da $O$ e alla ricezione da $O'$.
  Assumiamo inoltre che i sistemi $O$ e $O'$ si stiano allontanando con velocità relativa $v$ e che la luce venga emessa parallelamente a questa velocità.
  Nel caso generico questa velocità diventerà la $v_("l.o.s.")$ (lungo la linea di vista).\
  Il tempo che intercorre tra l'emissione di due fronti d'onda per l'osservatore $O$ sarà
  #aeq[$Delta t_s = lambda_s/c$]
  mentre il tempo che intercorre tra la ricezione di due fronti d'onda sempre per $O$ sarà (il secondo fronte deve percorrere uno spazio maggiore perché la sorgente si è allontanato)
  #aeq[$Delta t_r = Delta t_s + (v Delta t_s)/c = Delta t_s (1 + beta)$]
  lo stesso tempo misurato dall'osservatore $O'$ sarà
  #aeq[$Delta t'_r = gamma Delta t_r = 1/sqrt(1 - beta^2) Delta t_s (1 + beta) = Delta t_s sqrt((1+beta)/(1-beta))$]
  da cui
  $ lambda_o = c Delta t'_r = lambda_s sqrt((1+beta)/(1-beta)) arrow.long_(beta lt.double 1) lambda_s (1 + beta) $
]

Osservando una galassia si possono vedere le sue righe di emissione, se queste sono traslate rispetto ai valori che ci si aspetta (da misure di fisica nucleare fatte in laboratorio) questo significa che la galassia si sta allontando o avvicinando.
#definizione[
  Si definisce _redshift_ $cal(Z)$ la quantità
  $ heq(cal(Z) = (lambda_o - lambda_s)/lambda_s tilde.eq beta) $
  Se la sorgente si allontana dall'osservatore lo spettro risulterà spostato verso il rosso, se si avvicina risulterà spostato verso il blu (in tal caso si parla di _blueshift_).
]
Hubble fu il primo a fare un catalogo di galassie misurandone la distanza e il redshift.
Quello che notò fu una correlazione lineare tra queste due quantità: più una galassia è lontana più velocemente recede da noi.
In realtà i dati presi da Hubble erano parecchio dispersi e il fit di una retta al giorno d'oggi sarebbe stato considerato molto azzardato, tuttavia con l'arrivo di nuovi dati prima da parte di Humason e in seguito da altri esperimenti il grafico si arricchì dimostrando la correttezza dell'ipotesi di Hubble.

#subpar.super(
  [
    #grid(
      figure(
        image("images/1-0-0_legge_hubble_originale.jpg", height: 14em),
        caption: [Dati originali di Hubble]
      ),
      figure(
        image("images/1-0-1_legge_hubble_humason.jpg", height: 14em),
        caption: [Dati di Hubble e Humason]
      ),
      columns: (1fr, 1fr),
    )
    #figure(
      image("images/1-0-2_legge_hubble_completa.jpg", height:16em),
      caption: [Dati recenti]
    )
  ],
  caption: [Andamento della velocità di recessione con la distanza.],
)

#legge(title: "Legge di Hubble-Lemaitre")[
  Esiste una proporzionalità diretta tra la distanza di una galassia e la sua velocità di recessione
  $ heq(v = H_0 d) $
  con $H_0$ la *costante di Hubble*.
]

Notiamo che la dispersione si riduce all'aumentare della distanza.
Ciò è dovuto al fatto che questa dispersione è data dai _moti peculiari_ delle galassie, che ci aspettiamo essere dello stesso ordine di grandezza ovunque ($v_"pec" approx sqty("100", "km/s")$).
Quindi più aumentiamo la distanza e dunque la velocità di recessione, più i moti peculiari diventano trascurabili.

Per quanto riguarda il valore della costante di Hubble, questo è stato modificato più volte a causa di errori nella calibrazione delle distanze (la stima iniziale di Hubble era $H_0 approx sqty("500", "km/s/Mpc")$).\
Ad oggi il valore è fissato a
$ heq(H_0 approx (70 plus.minus 1%)  "km/s/Mpc") $
tuttavia è presente una _tensione_, in quanto le stime date dalla CMS tendono a $sqty("67", "km/s/Mpc")$ mentre le misure dirette tendono a $sqty("71", "km/s/Mpc")$.
Questa discrepanza di $numrange("3", "5", delimiter:"#sym.div") sigma$ viene detta *tensione della costante di Hubble*.

== Coordinate comoventi
Siamo quasi pronti per ricavare le equazioni per l'evoluzioni dell'universo.
Prima però introduciamo un concetto che ci accompagnerà in tutto il corso: le coordinate comoventi.\
La legge di Hubble ha un andamento che ci permette di intrepretarla come se fossero le distanze stesse ad aumentare (vedremo in seguito l'interpretazione spaziotemporale).
Possiamo quindi definire un sistema di coordinate che fattorizzi questa crescita delle distanze e in generale fattorizzi qualsiasi moto omogeneo degli oggetti all'intenrno dell'universo in modo tale che non siano loro a muoversi, bensì le coordinate stesse a cambiare.
Questo sistema viene detto *coordinate comoventi*.\
Indichiamo con $va(x)_p$ le coordinate fisiche (quelle che effettivamente misuriamo) e con $va(x)_c$ le coordinate comoventi.
Varrà la relazione
$ heq(va(x)_p (t) = a (t) va(x)_c) $
dove $a(t)$ è il *fattore di scala*.

#osservazione[
  In linea di principio il fattore di scala dovrebbe essere una matrice 3x3.
  Ma se così fosse vorrebbe dire che esistono delle direzioni preferenziali, mentre abbiamo detto che l'universo è isotropo.
  Dunque questo fattore non è nient'altro che uno scalare, cosa che rende questo sistema di coordinate molto comodo da usare.
]

Calcoliamo quanto vale la velocità a cui si muove una particella di fluido
$ va(u) = dv(va(x)_p, t) = dot(a) va(x)_c + underbrace(a dot(va(x))_c, va(v)) = dot(a)/a va(x)_p + va(v) $
Questa non è nient'altro che una versione più generale della legge di Hubble.
Infatti tiene in conto delle *velocià peculiari* $va(v)$ delle particelle rispetto alla griglia comovente e ammette una proporzionalità tra velocità e distanza variabile nel tempo
$ H(t) = dot(a) / a $
Questo fattore viene detto *tasso di espansione* o *tasso di Hubble*, mentre tutto il termine $H va(x)_p$ viene detto *flusso di Hubble*.

Dato che il tasso di espansione varia nel tempo, avremo che la legge di Hubble è valida solo nell'universo locale (dove vediamo nel presente) mentre potrebbe avere diversi valori di $H$ in tempi passati (e quindi a distanze maggiori). D'ora in poi indicheremo con uno zero a pedice le quantità valutate nel presente ($H_0$).

Possiamo anche vedere come trasforma la derivazione
$ grad_p = pdv(,va(x)_p) = 1/a pdv(,va(x)_c) = 1/a grad_c $
$ laplacian_p = 1/a^2 laplacian_c $
Una cosa da notare quando cambiamo tra le due coordinate, è che la derivata temporale parziale non è uguale.
Questo perché cambia il punto in cui la valutiamo.
Quello che rimane uguale è la derivata totale per il tempo, che segue il fluido in qualsiasi sistema di riferimento
#aeq[$
  dv(,t) & = evaluated(pdv(,t))_p + va(u) dot grad_p = evaluated(pdv(,t))_p + va(u)/a dot grad_c \
         & = evaluated(pdv(,t))_c + dot(va(x))_c dot grad_c = evaluated(pdv(,t))_c + va(v)/a dot grad_c
$]
quindi
$ evaluated(pdv(,t))_p != evaluated(pdv(,t))_c $

== Equazioni di Friedmann da principi fluidodinamici
Possiamo ora ricavare le equazioni per l'evoluzione dell'universo in modo euristico.
Iniziamo notando che alle scale a cui lavoriamo ($qty("100", "Mpc")$), la dimensione delle galassie ($qty("10","kpc")$) è trascurabile.
Quindi possiamo considerare le galassie come particelle puntiformi di un fluido molto rarefatto (le zone dense degli ammassi possono essere considerate anch'esse come singoli punti materiali) e non interagente#footnote[Per maggiori approfondimenti consultare il corso Fondamenti di Astrofisica II: Galassie e strutture cosmiche.]\
Questo fluido rispetterà le equazioni di continuità e di Eulero. Iniziamo dalla continuità
#aeq[$ pdv(rho, t) + div (rho va(u)) = 0 $]
#aeq[$ pdv(rho, t) + rho div va(u) + va(u) dot grad rho = 0 $]
$ dot(rho) = - rho (grad_p dot va(u)) $
scriviamola ora in funzione delle coordinate comoventi nel caso della materia che, essendo omogenea, sarà uguale al valore mediato (vedremo in seguito che per altre componenti potrei ottenere un risultato diverso)
#aeq[$
  dot(overline(rho))_m =
  -overline(rho)_m (grad_p dot va(u)) =
  -overline(rho)_m 1/a grad_c dot (dot(a) va(x)_c + va(v)) =
  -overline(rho)_m ( dot(a)/a underbracket(grad_c dot va(x)_c, 3) + 1/a underbracket(grad_c dot va(v), 0))
$]
ottenendo l'*equazione di continuità cosmologica*
$ heq( dot(overline(rho))_m = -3 overline(rho)_m dot(a)/a ) $
che si può integrare da un qualsiasi punto nel passato fino ad oggi (uso oggi come valore di scala perché so misurarlo)
$ integral_(overline(rho)_m(t))^(overline(rho)_(m 0)) dd((ln(overline(rho)_m))) = -3 integral_(a(t))^(a_0) dd((ln(a))) $
$ heq(overline(rho)_m(t) = overline(rho)_(m 0) ((a(t))/a_0)^(-3)) $
vediamo che c'è un andamento del tipo $overline(rho)_m (t) prop a^(-3)$ che è ragionevole ricordando che $a$ è legato alla distanza e dunque $a^3$ sarà legato al volume.

Passiamo ora all'equazione di Eulero
$ rho dot(va(u)) = underbrace(- grad p, "press.") + underbrace(rho va(g), "grav.") $
La pressione sarà omogenea ovunque e dunque il suo gradiente sarà nullo.\
Il campo gravitazionale possiamo scriverlo con l'equazione di Gauss
$ grad_p dot va(g) = - 4 pi G rho $
e passando al potenziane $phi$
$ laplacian_p phi = 4 pi G rho $
quindi
#aeq[$ cancel(overline(rho)_m) dot(va(u)) = - cancel(overline(rho)_m) grad_p phi $]
#aeq[$ dv(,t)(dot(a) va(x)_c + va(v)) = - 1/a grad_c phi$]
Posso ora sfruttare l'omogeneità per mandare a 0 le velocità peculiari del fluido (anche se quelle delle singole particelle possono non esserlo).
Inoltre posso portare fuori dalla temporale $va(x)_c$ sempre per omogeneità#footnote[In realtà potrei avere un moto omogeneo (come una contrazione o un moto di gruppo) rispetto alla griglia. Ma questo vorrebbe solo dire che ho scelto male le coordinate comoventi e posso riassorbirlo cambiando SR.].\
#aeq[$ dot.double(a) va(x)_c = - 1/a grad_c phi$]
Prendo ora la divergenza dell'equazione per poter sfruttare l'equazione di Poisson.
#aeq[$ grad_c dot (dot.double(a) va(x)_c) = - 1/a laplacian_c phi = - a laplacian_p$]
#aeq[$ 3 dot.double(a) = - a 4 pi G overline(rho)_m $]
ottenendo la *seconda equazione di Friedmann*
$ heq(dot.double(a)/a = -(4 pi G)/3 overline(rho)_m) $
$dot.double(a)/a$ viene detto *tasso di accelerazione* e possiamo notare che questo è negativo.
Quindi se consideriamo solo la componente di materia, otteniamo che l'universo è destinato a fermare la sua espansione per poi contrarsi.

Posso ora lavorare la seconda equazione per combinarla con l'equazione di continuità.
Iniziamo scrivendo
#aeq[$ dot.double(a) = dv(dot(a),t) = dv(dot(a),a) dv(a,t) = dot(a) dv(dot(a),a) $]
ora sostituiamo questo nell'equazione di Friedmann assieme all'equazione per l'evoluzione della densità
$ dot(a)/a dv(dot(a),a) = -(4 pi G)/3 overline(rho)_(m 0) (a/a_0)^(-3) $
#aeq[$ integral_(dot(a)(t))^(dot(a)_0) dot(a) dd(dot(a)) = - (4 pi G)/3 overline(rho)_(m 0) a_0^3 integral_(a(t))^(a_0) dd(a)/a^2 $]
#aeq[$
  dot(a)_0^2/2 - dot(a)^2/2 =
  - (4 pi G)/3 overline(rho)_(m 0) underbracket((overline(rho)_m)/(overline(rho)_(m 0)) a^3, a_0^3)(1/a - 1/a_0) =
  (4 pi G)/3 (overline(rho)_(m 0) a_0^2 - overline(rho)_m a^2)
$]
Definendo (vedremo in seguito il significato)
$ k = 1/c^2 (dot(a)_0^2 - (8 pi G)/3 overline(rho)_(m 0) a_0^2) $
otteniamo la *prima equazione di Friedmann*
$ heq((dot(a)/a)^2 = (8 pi G)/3 overline(rho)_m - (k c^2)/a^2) $
Abbiamo ottenuto le 3 equazioni (solo 2 sono indipendenti) che ci permettono di descrivere l'universo omogeneo e isotropo.

== Dilatazione della luce
Ora che abbiamo scritto le equazioni per l'evoluzione di un universo omogeneo e isotropo in funzione del parametro $alpha$, andiamo a vedere un'altra interpretazione del redshift.
Sappiamo che il redshift è una dilatazione delle lunghezze d'onda, ma le lunghezze d'onda non sono altro che lunghezze fisiche (le indichiamo con $lambda_p$).
Quindi possiamo scriverle con le coordinate comoventi (le indichiamo con $lambda_c$)
$ lambda_p (t) = a (t) lambda_c $
Ma allora posso scrivere il redshift come
#aeq[$ cal(Z) = (lambda_o - lambda_e)/lambda_e = (lambda (t_o))/(lambda (t_e)) - 1 = (a_0 cancel(lambda_c))/(a (t_e) cancel(lambda_c)) - 1$]
da cui
$ (a(t))/a_0 = 1/(1 + cal(Z)) $
Questa è una funzione monotona, quindi si può utilizzare $cal(Z)$ al posto di $a$ riparametrizzando tutto.

Consideriamo ora una zona vicina a noi e sviluppiamo ambo i membri
#aeq[$ (a (t))/a_0 ~ 1 + underbrace((dot(a)_0)/(a_0), H_0) (t-t_0) $]
#aeq[$ 1/(1 + cal(Z)) ~ 1 - cal(Z) $]
#aeq[$ c cal(Z) = H_0 (t-t_0) c$]
Ma $(t-t_0)c$ rappresenta la distanza $d$ percorsa dalla luce per arrivare all'osservatore (e quindi la distanza della sorgente da noi).
$ c cal(Z) = H_0 d $
Quindi otteniamo nuovamente la legge di Hubble Lemaitre, questa volta però esplicitamente come un'approssimazione in un universo locale.

== Gas interagente
Nella trattazione fatta fin'ora abbiamo sempre considerato il fluido come non interagente, sfruttando il fatto che le dimensioni delle galassie (le particelle del fluido) sono ordini di grandezza più piccole delle distanze tra le stesse.
Tuttavia abbiamo anche visto che l'universo si sta espandendo, dunque possiamo concludere che in un tempo passato le particelle fossero molto più vicine e dunque interagenti.\
Per descrivere questa situazione partiamo dalla prima legge della termodinamica
$ dd(U) = T dd(S) - p dd(V) $
ma questo lo consideriamo per tutto l'universo che non ha nulla con cui scambiare calore (è totalmente adiabatico), dunque $dd(S) = 0$.\
#let fnote_pressione = [
  Questa trattazione è molto euristica. Soprattutto se pensiamo che arriveremo a scrivere un risultato per la radiazione, che essendo _mass-less_ non può avere l'energia sotto forma di massa.
  Inoltre in linea di principio nella trattazione con i fluidi non abbiamo fatto nulla che escludesse l'interazione di pressione, abbiamo solo escluso i termini relativistici.\
  Per adesso dobbiamo prendere questi risultati abbastanza per buoni, facendoci un'intuizione della loro provenienza.
  Tutto sarà più chiaro nella trattazione con la relatività generale.
]
Inoltre possiamo scrivere l'energia come $U = m c^2 = rho V c^2$ (andando ad assumere che tutta l'energia sia di massa#footnote(fnote_pressione)).
Quindi $dd(U) = V c^2 dd(rho) + rho c^2 dd(V)$.
#aeq[$ V c^2 dd(rho) + rho c^2 dd(V) = -p dd(V) quad ==> quad dd(rho) = - (rho + p/c^2) dd(V)/V $]
Ma $V prop a^3 => dd(V)/V = 3 dd(a)/a$ quindi
$ heq(dot(rho) = - 3 dot(a)/a (rho + p/c^2)) $
Questa è l'equazione di continuità dove teniamo conto anche dei termini di interazione sotto forma di pressione.

Possiamo ora chiederci quali valori può assumere $p$.
Partiamo dai gas perfetti
$ p V = N k_B T quad "e" quad expval(E) = 1/2 m expval(v^2) = 3/2 k_b T $
Posso ricavare quindi la pressione
#aeq[$ p = N/V k_B T = underbrace(N/V m, rho) 1/3 expval(v^2) = 1/3 rho expval(v^2) $]
quindi
$
p/c^2 = 1/3 rho expval(v^2)/c^2 =
cases(
  approx 0 #[per particelle lente: *polvere* o *materia*],
  approx 1/3 #[per particelle relativistiche: *radiazione*]
)
$
Notiamo che in entrambi i casi i fluidi sono barotropici (dove la pressione è esprimibile in funzione della sola densità $p = p(rho)$), possiamo quindi scrivere
$ p(rho) = w rho c^2 "con" w = cases(w_m = 0, w_r = 1/3) $
L'equazione di continuità per una determinata specie $s$ diventa
$ dot(overline(rho))_s = -3 H rho (1 + w_s) $
che integrata dà
$ overline(rho)_s = overline(rho)_(s,0) [a(t)/a_0]^(-3(1+w_s)) $
Abbiamo che per la materia $rho prop a^(-3)$ come avevamo ottenuto in precedenza, mentre per la radiazione $rho prop a^(-4)$.
Quindi quest'ultima si diluisce più velocemente.

== Abbondanze
Prendiamo la prima equazione di Friedmann
#aeq[$ (dot(a)/a)^2 = (8 pi G)/3 overline(rho) - (k c^2)/a^2 $]
Lavorare direttamnte con le densità può però risultare scomodo. Quindi si tende ad esprimerle rispetto ad un valore di riferimento:
#definizione[
  Si definisce *densità critica* $rho_(c)$, il valore di densità tale per cui la costante $k$ sia nulla
  $ heq(rho_(c) = (3 H^2)/(8 pi G)) $
  Si definisce *abbondanza* il rapporto tra una densità e la densità critica (entrambi valutati allo stesso tempo)
  $ heq(Omega_(s) = (overline(rho)_(s))/rho_(c)) $
]
Di solito si utilizza il valore valutato oggi
$ rho_(c 0) = (3 H_0^2)/(8 pi G) quad approx fqty("1.3e-29", "g/cm^3") approx 7.7 "protoni"/"m"^3 $
e si scrive il valore ad epoche passate in funzione di quello presente
$ rho_c (cal(Z)) = rho_(c 0) (H^2 (cal(Z)))/H_0^2 $

Alcuni esempi di abbondanze di cui conosciamo i valori sono
#aeq[$
  Omega_(m 0) & approx 0.3 && "da misure dirette"\
  Omega_(r 0) & approx num("9e-5") && "da misure della CMB"\
  Omega_(k 0) & approx 0 && "(vediamo tra poco il significato)"\
$]
Riprendiamo ora l'equazione di Friedmann
#aeq[$
  H^2 &= ((8 pi G)/3 overline(rho)_m + (8 pi G)/3 overline(rho)_r - (k c^2)/a^2)H_0^2/H_0^2\
  &= H_0^2 (overline(rho)_m/rho_c + overline(rho)_r/rho_c - (K c^2)/(a^2 H_0^2))\
  &= H_0^2 [(a/a_0)^(-3) underbrace(overline(rho)_(m 0)/rho_c, Omega_(m 0)) + (a/a_0)^(-4) underbrace(overline(rho)_r/rho_c, Omega_(r 0))- (a/a_0)^(-2) underbrace((K c^2)/(a_0^2 H_0^2), := - Omega_(k 0))]\
$]
$ heq(H^2/H_0^2 = Omega_(m 0) (a/a_0)^(-3) + Omega_(r 0) (a/a_0)^(-4) + Omega_(k 0) (a/a_0)^(-2)) $
Se portiamo $H^2/H_0^2$ dall'altro lato otteniamo le abbondanze valutate in epoca passata (il fattore con gli $H$ è quello che corregge le $rho_c$)
$ heq(1 = Omega_m (cal(Z)) + Omega_r (cal(Z)) + Omega_k (cal(Z))) $
Quindi ad ogni epoca le abbondanze rappresentano la 
Valutando oggi si ottiene
$ 1 = Omega_(m 0) + Omega_(r 0) + Omega_(k 0) $
questo non quadra con i dati ed è il primo suggerimento del fatto che manca qualcosa (risolto con la costante cosmologica $Omega_Lambda$).

== Evoluzione delle densità delle specie
Proviamo a fare un grafico delle densità delle specie rispetto alla densità critica odierna

#figure(
  image("images/1-1_evoluzione_specie.pdf", width: 60%),
  caption: [Evoluzione delle densità delle specie (nella realtà $K$ è una costante a 0).]
)

Come possiamo notare la storia dell'universo può essere divisa in due *epoche*: una precedente dominata dalla radiazione, e una successiva dominata dalla materia.
Queste due epoche sono separate da quella che viene detta *epoca dell'equivalenza* dove le densità erano comparabili.
Possiamo calcolare a che fattore di scala (o redshift) si trovava questa epoca:
#aeq[$ overline(rho)_m (a_"eq") = overline(rho)_r (a_"eq") $]
#aeq[$ overline(rho)_(m 0) (a_"eq"/a_0)^(-3) = overline(rho)_(r 0) (a_"eq"/a_0)^(-4) $]
$ heq(a_"eq"/a_0 = overline(rho)_(r 0)/overline(rho)_(m 0) = Omega_(r 0)/Omega_(m 0) approx num("3e-4")) $
$ heq(cal(Z)_"eq" = a_0/a_"eq" - 1 approx num("3.3e3")) $

== Evoluzione del fattore di scala
Fin'ora abbiamo collegato il fattore di scala ad una nozione di tempo nella storia dell'universo, senza mai formalizzare questo legame.\
Possiamo procedere a studiare questa relazione nel caso di universo dominato da una singola specie, con $k=0$.
#aeq[$ (dot(a)/a)^2 = (8 pi G)/3 overline(rho)_(s 0) (a/a_0)^(-3(1+w_s)) $]
#aeq[$ dot(a) = dv(a,t) ~ a^(-1/2 (1+3w_s)) quad ==> quad dd(t) ~ a^(1/2 (1+3w_s)) dd(a) $]
$ t ~ a^(3/2(1 + w_s)) ~ cases(a^(3/2) "materia", a^2 "radiazione") quad ==> quad heq(a ~ cases(t^(2/3) "materia", t^(1/2) "radiazione")) $
Notiamo che queste due relazioni sono monotone e crescenti, quindi possiamo utilizzare $a$ come un orologio (non lineare).

Se facciamo un grafico dell'evoluzione temporale dell'universo vediamo che questo decelera, come previsto dalla seconda equazione di Friedmann:
#figure(
  image("images/1-2_evoluzione_scala.pdf", width: 55%),
  caption: [Evoluzione delle densità delle specie.]
)

