\version "2.25.24"
text = \lyricmode {
  Thou know -- est all; __ I seek in vain
  What lands to till or sow with seed
  The land is black with briar and weed,
  Nor cares for fall -- ing tears or rain.

  Thou know -- est all; __ I sit and wait
  With blind -- ed eyes and hands that fail,
  Till the last lift -- ing of the veil
  And the first op -- en -- ing of the gate.

  Thou know -- est all; __ I can -- not see.
  I trust I shall not live in vain,
  I know that we shall meet a -- gain
  In some di -- vine e -- ter -- nit -- y.
}

soprano = \relative g' {
  \partial 2
  r8 g ^\p ^\< af bf ^\!

  | d4 ( ^\mf f4 ) r8 fs4 ^\f c8 ~
  | c8 ef ^. a,4 ^> r8 b ^\mp ^\< e8 cs
  | a8 ef' c4. fs8 f4 ^\! ^\f

  | r4 r8 f \tuplet 3/2 { d ( bf ) af } g4
  | r8 ef a4 ^. ^> r8 gf c4 ^. ^>
  | r8 b e cs \tuplet 3/2 { f4 ( d ) bf }
  | af4. af8 g4 r

  | R1 * 2

  | r2 \tempo "A tempo" r8 g ^\p ^\< af bf

  | f'4 ( ^\! ^\mf d ) r cs ^\p ^\>
  | g4. g4 g ^\! r8
  | r2 r8 cs ^\mf ^\< fs ds
  | b8 f' d4. gs

  | g4 ^\! ^\f r r8 b, fs a
  | \tuplet 3/2 { f4 ( ^\< af ) c } d4. d8 ^\!
  | ef4 r2 e8 e
  | g4 ( e ) c4. c8

  \time 5/4

  | c4 bf8 bf a4 r8 a ^\mf ^\< bf c

  \time 4/4

  | e4 ( g ) r gs ^\! ^\ff
  | f4. d4 b r8
  | r8 ds ^\mf ^\< as cs f b, d4 ~
  | d8 gs, gs4 r8 gs \tuplet 3/2 { a ( c ) e }

  | fs4. ^\! ^\f g8 ds as cs4
  | r8 cs4 g e' as,8 ~
  | as4 r8 b ^\< \tuplet 3/2 { c4 ( d fs ) } ^\!
  | a4 ^\ff a2 r4

  | R1

  \bar "|."
}
