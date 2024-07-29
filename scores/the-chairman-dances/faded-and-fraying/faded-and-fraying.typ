#set text(size: 1.5em)

#let start-repeat = text(size: 1.5em)[#strong[|:]]
#let end-repeat = text(size: 1.5em)[#strong[:|]]

#align(center)[
  = Faded & Fraying
  #emph[The Chairman Dances]
]

#text(size: 0.8em)[
  G major \
  4/4
]

#v(1em)

#grid(
  columns: 2,
  gutter: 2em,
  rect[Intro],
  grid(
    columns: 4,
    gutter: 1em,
    start-repeat, underline(offset: 0.5em)[1 $4/1$], [1], end-repeat,
  ),

  rect[Verse],
  grid(
    columns: 6,
    column-gutter: 1em,
    row-gutter: 2em,
    start-repeat,
    underline(offset: 0.5em)[1 $1/7$],
    [6-],
    [2-],
    [5#super[7]],
    end-repeat,

    [3-#super[11]],
    [6-],
    [2-],
    [5#super[7]],
    underline(offset: 0.5em)[1 $1/7$],
    [6-],
  ),

  rect[Chorus],
  [
    #start-repeat
    2- % 5#super[7] %
    #end-repeat
  ],

  emph[D.C.], [],
  rect[Bridge],
  [
    #start-repeat
    ♭3 % % % \
    1 $1/5$ 1 %
    #end-repeat
  ],
)
