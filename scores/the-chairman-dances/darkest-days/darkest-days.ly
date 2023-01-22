\version "2.24.0"

\include "settings.ily"

\header {
  title = "Darkest Days"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative df {
  \key af \major
  \clef "bass"

  | R1 * 11
  | r2 r4 r8 \acciaccatura { df8 } ef

  | af2. bf,8 c
  | df2. ~ df8 \acciaccatura { df } ef
  | af2. c,4
  | df2. ~ df8 \acciaccatura { df  } ef

  | af2 ~ af8 af, bf c
  | df2. ~ df8 \acciaccatura { df } ef
  | af2. c,4
  | df2 \acciaccatura { c'8 } df c bf af16 g

  | f4. g8 af4 ( bf )
  | << {

      r4 f'2.

    } \\ {

      df,1

    } >>
  | f,4. g8 af4 af' ~
  | <df, af'>1

  | ef2. f4
  | bf,2 af4. df16 d
  | ef2 ~ ef8 bf' ef, ( f )
  | bf,4. c8 af4. df16 d

  | ef4 ~ ef16 bf'8 af16 ~ af g8 f16 ~ f ef8 ( df16 )
  | bf8. df16 ~ df ef ( f ) af ~ af8 ef df c |
  | ef8. bf'16 ~ bf bf, ( c ef ) bf'8 \acciaccatura { bf8 } c8 bf f
  | af8 af g ef df df c af

  \time 2/4

  | ef'8 df16 df df ( ef ) ef ef

  \time 4/4

  | \repeat unfold 12 { af,16 } bf bf c c
  | \repeat unfold 12 { df16 } ef ef f g
  | \repeat unfold 6 { af16 } af ef \repeat unfold 4 { af, } bf bf c c
  | \repeat unfold 4 { df16 } df df df af' \acciaccatura { ef'8 } f16 f ef ef df df c bf

  | \repeat unfold 6 { af } af ef \repeat unfold 4 { af,16 } bf bf c c
  | \repeat unfold 12 { df } ef ef f g
  | \repeat unfold 4 { af16 } af af af ef \repeat unfold 4 { af, } bf bf c c
  | \repeat unfold 8 { df16 } df' df c c bf bf af g

  | r8 r16 c ~ c4 r8 r16 ef ~ ef4
  | r8 r16 f ~ f8. f16 ~ f4 af8 -> af8 ->
  | f,,16 -> f f f -> f f g g af af af af' -> \repeat unfold 4 { af }
  | << {

      af2

    } \\ {

      \repeat unfold 8 { df,16 }

    } >>
    df16 \repeat unfold 7 { <df af'> -> \downbow }

  | af16 af af c' af, af' af, af' af, af af c' af, af bf c
  | df16 df df c' df, af' df, af' df, df df c' df, af' af ( bf )
  | af,16 af af c' af, af' af, af' af, af af c' af, af bf c
  | df16 df df c' df, af' df, af' df, df df c' df, af' af ( bf )

  | af,16 af af c' af, af' af, af' af, af af c' af, af bf c
  | df16 df df c' df, af' df, af' df df c c bf bf af16 g
  | r8 r16 c ~ c4 r8 r16 ef ~ ef4
  | r8 r16 f ~ f8 g af -> bf -> c -> ef ->

  | f,,,16 -> f f f -> f f g g af af af af' -> \repeat unfold 4 { af16 }
  | << {

      af2

    } \\ {

      \repeat unfold 8 { df,16 }

    } >>
    \repeat unfold 4 { df16 } df ( ef ) ef ef
  | r8 af,8 ~ -> af2.

  | s1 * 7
  | r2 r4 af'4 ~
  | af1

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
    \numericTimeSignature
  } {
    \compressMMRests {
      \music
    }
  }
}
