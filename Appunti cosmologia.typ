//LTeX: language=it
#import "@local/orionotes:0.1.0": orionotes

#show: orionotes.with(
  language: "it",
  title: [Appunti di Cosmologia],
  authors: ("Andrea Orione",),
  professors: ("Stefano Camera",),
  date: "Anno accademico 2025/2026",
  university: [Università degli studi di Torino],
  degree: [Corso di laurea magistrale in Astrofisica],
  pre-authors: (sing:"Autore", plur:"Autori"),
  pre-professors: (sing:"Docente", plur:"Docenti"),
  top-section-name: "Capitolo",
  front-image: image("images/front-image.jpg", width: 100%),
)

// Table appearence
#set table(
  // Increase the table cell's padding
  inset: 7pt, // default is 5pt
  stroke: (0.5pt + luma(200)),
)

#include "ch-0.typ"
#include "ch-1.typ"
#include "ch-2.typ"
#include "ch-3.typ"
#include "ch-4.typ"
