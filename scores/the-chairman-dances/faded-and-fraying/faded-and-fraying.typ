#set text(size: 1.5em)

#align(center)[
  = Faded & Fraying
  #emph[The Chairman Dances]
]

#let start-repeat = text(size: 1.5em)[#strong[|:]]
#let end-repeat = text(size: 1.5em)[#strong[:|]]

#grid(
  columns: 2,
  gutter: 2em,
  rect[Intro],
  [
    #underline[1 4/1] 1
    #underline[1 4/1] 1
  ],

  rect[Verse],
  [
    #start-repeat
    #underline[1 1/7] 6-
    2- 5#super[7]
    #end-repeat

    3-#super[11] 6- 2- 5#super[7]
    #underline[1 1/7] 6-
  ],

  rect[Chorus],
  [
    #start-repeat
    2- 5#super[7]
    #end-repeat
  ],

  emph[D.C.], [],
  rect[Bridge],
  [
    #start-repeat
    b3
    #end-repeat
  ],
)
