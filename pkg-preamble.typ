// LTeX: language=it
// Packages
#import "@preview/unify:0.7.1": num,qty,unit,qtyrange,numrange
#import "@preview/physica:0.9.7": *
#import "@preview/mannot:0.3.0": *
#import "@preview/wrap-it:0.1.1": *
#import "@preview/subpar:0.2.2"

#import "@local/simple-theoframes:0.0.0": *

// Environments
#let legge = theorem.with(pre-title: "Legge")
#let osservazione = observation.with(title: "Osservazione")
#let oss = observation.with(title: "Oss")
#let esempio = exercise.with(pre-title: "Esempio")
#let definizione = definition.with(pre-title: "Definizione")

#let digressione(title: "", body) = {
  let col = rgb("#000000")
  let pre-title = "Digressione"
  let separator = if title != "" { ": " } else { "" }
  let all-title = [*#pre-title#separator#title*]
  general-block(
    [*#all-title*],
    main-col: col,
    body
  )
}

// Equations
#let heq(body) = {markrect(body, color: rgb("#E5B11B"), stroke: 1.2pt, outset: 0.5em)}
#let aeq(body) = {math.equation(block:true, numbering: none, body)}

// Units
#let sunit = unit.with(per: "fraction-short")
#let sqty = qty.with(per: "fraction-short")
#let funit = unit.with(per: "fraction")
#let fqty = qty.with(per: "fraction")

#let sun = sym.dot.o.big

// Math stuff
#let Lg = math.op("Lg")
#let vt(it) = math.overline(math.overline(it))
#let Tilde(it) = math.accent(it, math.tilde, size: 100% + 0.45em)
#let Dot(it) = math.attach(math.limits(it), t: text(math.dot, size: 2em, baseline: 0.2em, top-edge:"baseline", bottom-edge: "baseline"))
#let DDot(it) = math.attach(math.limits(it), t: text(math.dot.double, size: 2em, baseline: 0.5em, top-edge:"bounds", bottom-edge: "baseline"))
