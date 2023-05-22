\version "2.25.5"

\include "settings.ily"

\header {
  title = "Our Hearts Beating"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative g {
  \key g \major
  \time 4/4
  \clef "bass"

  | R1 * 10

  | r2 r8 d e fs
  | g4 g d d

  \repeat volta 2 {
    | c4. c8 ~ c d e fs
    | g4 g, d' d

    \alternative {
      \volta 1 {
        | c4. c8 ~ c d e fs
        | g4 g d d
      }

      \volta 2 {
        | b'4. b8 ~ b b g4
        | d2. d4
      }
    }
  }

  \ottava #1

  | c'4 c8 b' ~ b g c, g'
  | g,8 g b' g, d d fs' d,

  \ottava #0

  | c4 c8 e' ~ e c c, c'
  | g,8 g b' g, d' d fs' d,

  \ottava #1

  | c'4 c8 b' ~ b g c, g'
  | g,8 g b' g, d d fs' d,

  \ottava #0

  | c4 c8 e' ~ e d, e fs
  | g4 g d d
  | c4. c8 ~ c d e fs
  | g4 g, d' d

  | c4. c8 ~ c d e fs
  | g4 g d d
  | c4. c8 ~ c d e fs
  | g4 \acciaccatura { a16 } b4  a d,

  \repeat volta 2 {
    | c4. c8 ~ c d e fs
    | g4 g d d
    | c4. c8 ~ c d e fs
    | g4 g, d' d
  }

  \ottava #1

  | c'4 c8 b' ~ b g c, g'
  | g,8 g b' g, d d fs'
    \ottava #0
    d,8
  | c4 c8 e' ~ e c c, c'
  | g,8 g b' g, d' d fs' d,
  | b'8 b b b ~ b b g4
  | d8 d d d ~ d d d4

  \repeat volta 2 {
    | r8 e' d ( e ) a, ( b ) ~ b4
    | r8 e d ( e ) a, ( b ) d, ( e )
  }

  \repeat volta 2 {
    | r8 e' d ( e ) a, ( b ) ~ b4
    | r8
      \ottava #1
      b' a ( b ) fs ( g ) d
      \ottava #0
      b
    | r8 e d ( e ) a, ( b ) ~ b4
    | r8 e d ( e ) a, ( b ) d, ( e )
  }

  \repeat volta 2 {
    \ottava #1

    | c'4 c8 b' ~ b g c, g'
    | g,8 g b' g, d d fs'
      \ottava #0
      d,
    | c4 c8 e' ~ e c c, c'
    | g,8 g b' g, d' d fs' d,
  }

  \ottava #1

  | c'4 c8 b' ~ b g c, g'
  | g,8 g b' g, d d fs'
    \ottava #0
    d,

  \repeat volta 2 {
    | e,8 e e e~ e8 e e fs
    | e'8 e' d ( e) a, ( b ) e,4
  }

  | e,8 e e e ~ e e e fs
  | d'1 ~
  | d1

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
    \numericTimeSignature
  } {
    \compressMMRests
    \music
  }
}
