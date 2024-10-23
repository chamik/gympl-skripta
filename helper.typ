#let hrule() = [#line(length: 100%, stroke: (paint: luma(60%)))]

#let poezie(doc) = [
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
  ]])
]

#let autor(jmeno, narozen, zemrel, povolani, vystudoval, smer, foto) = [
  #counter(footnote).update(0)
  #set par(justify: false)

  #block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  width: 100%,
  [#columns(3, gutter: 5pt)[
      #strong(jmeno) \
      #sym.star.op #narozen #h(0.6em) #if zemrel != "" [#sym.dagger #zemrel]

      Směr: #strong(smer)

      #colbreak()

      #strong(povolani)

      studoval *#vystudoval*
      
      #colbreak()    
      #align(center, image(foto, height: 3.5cm))
  ]])
]

#let replika(jmeno, repl) = (
  [#align(right)[#smallcaps(jmeno)]], [#h(1em) #repl #v(.4em)]
)