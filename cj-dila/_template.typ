#import "/helper.typ": hrule
#counter(footnote).update(0)

#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  width: 100%,
  [#columns(3, gutter: 5pt)[
      #heading(level: 3, "Něco") <neco>
      Autor: *Někdo* \
      Překlad: _Někdo_ 

      #colbreak()
      Období: *Někdy* \
      Země: *Někde*

      #colbreak()
      Rok vydání: *Někdy* \
      L. druh: *něco* \
      L. žánr: *něco*      
  ]]
)

#columns(2, gutter: 1em)[
  *Téma*\
  
  *Motivy*\

  *Časoprostor*\
  
  *Postavy* \

  *Kompozice* 

  *Vypravěč*

  *Jazykové prostředky*\

  *Obsah*\

  *Literárně historický kontext*\

  *Autor*\

  *Další díla*\

  *Současníci*\
]

#pagebreak()

*Ukázka*

#pagebreak()