#set text(font: "TeX Gyre Schola", size: 1.5em)

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
  rect[Riff #text(size: 0.5em)[#emph[repeat for intro/outro]]],
  grid(
    columns: 5,
    gutter: 1em,
    [–], [#super[<]–], [–], [#super[<]–], text(size: 0.8em)[#emph[Fine]],
  ),

  rect[Verse #text(size: 0.5em)[#emph[no repeat 1st Verse]]],
  grid(
    columns: 6,
    gutter: 1em,
    start-repeat, [1], [♭2], math.underline([1 #h(0.5em) $5/7$]), [6-], [],
    [], [2-], [5#super[7]], end-repeat,
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
    columns: 4,
    column-gutter: 1em,
    row-gutter: 2em,
    [2#super[7]], [2#super[7]], [4], [5#super[7]],
    [1],
    [2#super[7]],
    math.underline([4 #h(0.5em) 5#super[7]]),
    [[1]#sub[#emph[\* Da Riff al Fine]]],
  ),

  text(size: 0.8em)[#emph[Da Capo]], [],
  rect[Bridge],
  grid(
    columns: 5,
    column-gutter: 1em,
    row-gutter: 2em,
    [4], [4-], [1], [1], [],
    [4], [2#super[7]], [4], [5#super[7]], [5#super[7]],
  ),

  text(size: 0.8em)[#emph[Da Pre-Chorus al Segno (\*)]], [],
)
