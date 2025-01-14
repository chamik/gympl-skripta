#import "@preview/ccicons:1.0.0": cc-by-sa
#import "helper.typ": *

#set document(title: [Gympl Skripta], author: "Jakub Hampl", date: auto)
#set page(paper: "a4")
#set heading(numbering: "1.")
#set text(size: 13pt, lang: "cs")
#set footnote(numbering: "*")
#set quote(block: true)
#set par(justify: true)

#show link: it => underline(stroke: (thickness: 1pt, dash: "dotted"), offset: 2pt, it)
#show ref: it => underline(stroke: (thickness: 1pt, dash: "dotted"), offset: 2pt, it)

#let titlepage(a) = [
  #set text(size: 30pt)
  #align(center + horizon, heading(numbering: "I.", [#a]))
  #pagebreak()
]

#[
  #set page(margin: 3cm)
  #set par(leading: .3em)
  #set text(size: 100pt)
  
  Gympl skripta

  #set text(size: 30pt)
  Jakub Hampl
  
  #text(size: 12pt)[#align(center + bottom)[
    Naposledy aktualizováno #datetime.today().day(). #datetime.today().month(). #datetime.today().year()\
    #v(.4em)\
    #text(size: 30pt)[#cc-by-sa]
  ]]
]

#include "uvod.typ"

#pagebreak()

#[
  #show outline.entry.where(
  level: 1
  ): it => {
    v(12pt, weak: true)
    strong(it)
  }

 #outline(title: "Rejstřík", indent: auto)
]

#pagebreak()

#titlepage("Český jazyk")
#set page(numbering: "1")
#include "cj.typ"


#set page(numbering: none)
#titlepage("Anglický jazyk")
#set page(numbering: "1")
#include "anj.typ"

#pagebreak()
#include "zdroje.typ"