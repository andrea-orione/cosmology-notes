//LTeX: language=it
#import "pkg-preamble.typ": *

= Introduzione<ch:introduzione>
La cosmologia è la branca dell'astrofisica che studia l'universo nel suo complesso e la sua evoluzione.\
Inizia a essere sviluppata nel \'900 con lo sviluppo della teoria della Relatività generale e con le osservazioni di Slipher, Lemaitre e Hubble.

Le stime della composizione dell'universo sono le seguenti:
#figure(
  image("images/0-0_universe_composition_hd.jpg", width: 100%),
  caption: [Composizione dell'universo oggi.],
)
Questa distribuzione non è costante nel tempo, bensì varia facendo variare anche il modo di evoluzione dell'universo stesso.

L'universo può essere descritto utilizzando quelli che vengono detti *modelli cosmologici*.
Con l'arrivo di nuovi dati sono stati sviluppati nuovi modelli cosmologici con diversi valori di abbondanze (per *abbondanza* $Omega$ si intende una quantità in riferimento a un valore standard).
#figure(
  image("images/0-1_cosmic_triangle_measures.png", width: 80%),
  caption: [Abbondanze per i vari modelli cosmologici.]
) <img:triangle_model>
$Omega_m$ è l'abbondanza di materia (ordinaria e oscura), $Omega_k$ è l'abbondanza di curvatura e $Omega_(Lambda)$ è l'abbondanza di energia oscura.

Tra i vari modelli cosmologici riportiamo
- S#sub[CDM] _(Simple Cold Dark Matter)_ con solo materia oscura,
- O#sub[CDM] _(Open Cold Dark Matter)_ con materia oscura e spazio non piatto,
- $Lambda$#sub[CDM] con materia oscura ed energia oscura.
$Lambda$#sub[CDM] è il modello attualmente più accreditato ed è quello che viene detto un _modello concordatario (concordance model)_, ovvero che sia in accordo con i dati provenienti dalle varie misure.
Nel grafico di destra di @img:triangle_model vediamo infatti che le tre fonti di dati si sovrappongono in corrispondenza di $Lambda$#sub[CDM].
Andiamo ad approfondire brevemente cosa sono queste misure.

// TODO: Cambiare in sottoparagrafo
/ Supernovae (SNe): #[\
Quando parliamo di supernovae in contesto cosmologico, tendenzialmente intendiamo supernovae di tipo Ia.
Questo fenomeno si verifica in sistemi binari composti da una nana bianca (WD) e una gigante rossa (RG).
Se le stelle sono sufficientemente vicine e l'attrazione gravitazionale è sufficientemente forte, è possibile che la nana bianca inizi ad assorbire materiale dalla gigante rossa (che essendo molto più grande ha un'attrazione molto debole sui propri strati più esterni).\
Questo processo va avanti fino a quando non viene raggiunta una massa limite detta _limite di Chandrasekhar_ ($M_("Ch") approx 1.44 M_(sun)$).
A questo punto la nana bianca esplode#footnote[Per maggiori approfondimenti sui processi che avvengono consultare il corso Fondamenti di Astrofisica I: Stelle e Via Lattea].\
Essendo un processo a soglia, l'energia rilasciata è sempre la stessa, dunque questo tipo di eventi può essere utilizzato come candela standard (una *candela standard* è un processo di cui si conosce la luminosità alla sorgente e di cui si può ricavare la distanza facendo il confronto con il flusso osservato). \
Sono stati osservati numerosi eventi di SNe a varie distanze.
#let fig_sne_dist_redshift = figure(
  image("images/0-2_supernovae_distance.jpeg", width: 90%),
  caption: [Modulo di distanza per supernovae a diversi redshift.]
)
#wrap-content(fig_sne_dist_redshift, align:right)[
  Di fianco riportiamo quello che si ottiene graficando il modulo di distanza #box[$m - M = 5 Lg (d)$] (con $m$ la magnitudine apparente e $M$ la magnitudine assoluta) in funzione del redshift $cal(Z)$ (definito in seguito, per ora basta considerarlo una misura delle distanze su scale cosmologiche).\
  Nel grafico superiore si vedono i dati e i fit ottenuti utilizzando tre modelli cosmologici differenti, mentre nel grafico inferiore vengono riportati i residui rispetto al modello indicato con la linea tratteggiata.
  Come si può osservare specialmente nel secondo grafico, è possibile discriminare quale modello seguano i dati (con misure più recenti, la divisione è ancora più marcata.\
  Questo ci permette di andare a ridurre lo spazio dei parametri in cui il modello potrà ricadere.
]
]
/ Cosmic Microwave Background (CMB):#[\
Il fondo cosmico a microonde consiste in una radiazione omogenea e isotropa proveniente da un'emissione di corpo nero risalente al periodo in cui la radiazione si è disaccapiata dalla materia.
#figure(
  image("images/0-3_cmb_spectrum.png", width: 70%),
  caption: [Spettro della CMB.\ Le barre d'errore sono ingrandite di 400 volte per renderle visibili.]
)
Come si può osservare nel grafico precedente, lo spettro della CMB rappresenta l'emissione più vicina ad un corpo nero mai osservata.
La temperatura corrispondente è $T = qty("2.725", "K")$ in tutte le direzioni, con fluttuazioni di $delta T approx qty("e-5", "K")$ (le fluttuazioni del raggio terrestre arrivano fino a $approx 0.33%$).\
Le fluttuazioni sono state osservate con sempre miglior risoluzione da diversi esperimenti
#figure(
  image("images/0-4_cmb_anisotropies.jpg", width: 60%),
  caption: [Anisotropie della CMB misurate dai vari esperimenti.]
)
Tutta la complessità delle fluttuazioni può essere descritta completamente da solo 6 parametri cosmologici: ${H_0, Omega_m, Omega_b, Tau, A_s, n_s}$.\
La radiazione della CMB rappresenta una 'fotografia' dell'universo pochi istanti prima del disaccoppiamento radiazione-materia, quindi si possono interpretare le fluttuazioni di temperatura come disomogeneità di densità nell'universo a quell'istante.
Se si simula l'evoluzione di un universo partendo da fluttuazioni simili a quelle osservate nella CMB si ottiene una distribuzione di materia a oggi simile a quella che effettivamente si misura.
]
/ Clusters:#[\
Con questa misura si intende più in generale come si dispone spazialmente la materia (sotto forma di galassie e ammassi) all'interno dell'universo.\
Inizialmente si pensava che la probabilità di trovare una galassia in un particolare punto dell'universo fosse uguale ovunque.
Questa teoria fu confutata per la prima volta nel 1989 con la pubbicazione della prima _Galaxy Survey_ da parte di Margaret Geller e John Huchra.
Dai dati della survey si osservò che le galassie si dispongono lungo filamenti formando quella che oggi viene detta _ragnatela cosmica_.\
Le misure più recenti arrivano dalla collaborazione Desi e si spingono fino a distanze dell'ordine di $qty("e9", "ly")$.
#subpar.grid(
  figure(
    image("images/0-5-1_galaxy_survey_geller.png"),
    caption: [Geller-Huchra Galaxy Survey]
  ),
  figure(
    image("images/0-5-2_galaxy_survey_desi.jpg"),
    caption: [Collaborazione Desi]
  ),
  columns: (1fr, 1fr),
  caption: [Distribuzione delle galassie nell'universo.],
)
]

== Oscillazioni Acustiche dei Barioni
Le Barionic Acustic Oscillations (BAO) sono un ulteriore fenomeno da cui possiamo estrarre informazioni sull'evoluzione dell'universo.
Nelle prime fasi la materia era _accoppiata_ alla radiazione (principalmente attraverso scattering), dunque essa era soggetta alla forza gravitazionale e alla pressione di radiazione.
Queste due forze hanno generato oscillazioni simili a onde sonore ma sotto forma di sovradensità.
Quando è poi avvenuto il _disaccoppiamento_ radiazione-materia, queste strutture sono rimaste 'congelate' nello spazio sotto forma di gusci sferici attorno a nuclei molto densi.
#figure(
  image("images/0-6_bao_diagram.jpg", width: 80%),
  caption: [Rappresetazione bidimensionale dei BAO.]
)
// #let fig_bao_bump = figure(
//   image("images/bao_bump.jpg", width: 100%),
//   caption: [Distribuzione della distanza tra coppie di galassie.]
// )
// #wrap-content(fig_bao_bump, align:right)[
// I raggi di tali gusci oggi rappresentano un _righello standard_, tuttavia non sono semplici da misurare in quanto si sorvappongono l'uno con l'altro.
// Per risolvere questo problema, si costruisce un istogramma delle distanze tra coppie di galassie ed in esso si osserva quello che viene detto _BAO bump_.
// ]
I raggi di tali gusci oggi rappresentano un _righello standard_, tuttavia non sono semplici da misurare in quanto si sovrappongono l'uno con l'altro.
Per risolvere questo problema, si costruisce un istogramma delle distanze tra coppie di galassie e in esso si osserva quello che viene detto _BAO bump_.
#figure(
  image("images/0-7_bao_bump.jpg", width: 60%),
  caption: [Distribuzione della distanza tra coppie di galassie.]
)
