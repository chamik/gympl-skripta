#import "helper.typ": *

#set document(title: [Gympl Skripta], author: "Jakub Hampl", date: auto)
#set page(paper: "a4")
#set heading(numbering: "1.")
#set text(size: 13pt, lang: "cs")
#set footnote(numbering: "*")
#set quote(block: true)
#set par(justify: true)

#let titlepage(a) = [
  #set text(size: 30pt)
  #align(center + horizon, heading(numbering: "I.", [#a]))
  #pagebreak()
]

#[
  #set page(margin: 3cm)
  #set text(size: 100pt)
  
  Gympl skripta

  #set text(size: 18pt)
  Jakub Hampl
  
  #text(size: 12pt)[#align(center + bottom)[
    Naposledy aktualizováno #datetime.today().day(). #datetime.today().month(). #datetime.today().year()
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

