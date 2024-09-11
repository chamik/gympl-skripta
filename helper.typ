#let href(a, b) = [#underline(link(a, b))]
#let hrule() = [#line(length: 100%, stroke: (paint: luma(60%)))]

#let poezie(doc) = [
  #set text(font: "New Computer Modern")
  #set align(center)
  #set footnote.entry(
    separator: align(left)[#line(length: 30%, stroke: 0.5pt)]
  )
  #show footnote.entry: it => [
    #set align(left)
    #it
  ]
  
  #doc
]

#let dilo(nazev, tag, autor, preklad, obdobi, zeme, vydani, druh, zanr) = [
  #counter(footnote).update(0)
  #set par(justify: false)

  #block(
  fill: luma(230),
  inset: 6pt,
  radius: 4pt,
  width: 100%,
  [#columns(3, gutter: 7pt)[
      #heading(level: 3, nazev) #label(tag)
      Autor: #strong(autor) \
      #if preklad != "" [
        Překlad: #emph(preklad)
      ] 

      #colbreak()
      Období: #strong(obdobi) \
      Země: #strong(zeme)

      #colbreak()
      Rok vydání: #strong(vydani) \
      L. druh: #strong(druh) \
      L. žánr: #strong(zanr)    
  ]]
)]