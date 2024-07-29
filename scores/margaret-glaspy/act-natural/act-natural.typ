#set text(font: "TeX Gyre Schola", size: 1.8em)

#let start-repeat = [|:]
#let end-repeat = [:|]

#align(center)[
  = Act Natural
  #emph[Margaret Glaspy]
]

#text(size: 0.8em)[
  E major \
  4/4
]

#v(1em)

#grid(
  columns: 2,
  gutter: 2em,
  rect[Riff],
  grid(
    columns: 6,
    gutter: 1em,
    start-repeat, [–], [–], [–], [–], end-repeat,
  ),

  rect[Verse],
  grid(
    columns: 4,
    gutter: 1em,
    [1], [♭2], math.underline([1 #h(0.5em) $1/7$]), [6-#super[7]],
    [2-], [5#super[7]],
  ),

  rect[Pre-Chorus],
  grid(
    columns: 6,
    column-gutter: 1em,
    row-gutter: 2em,
    start-repeat,
    [1],
    [2#super[7]],
    math.underline([4 #h(0.5em) 5#super[7]]),
    [1],
    end-repeat,
  ),

  rect[Chorus],
  grid(
    columns: 6,
    column-gutter: 1em,
    row-gutter: 2em,
    start-repeat, [2#super[7]], [4], [5#super[7]], [1], end-repeat,
  ),
)
