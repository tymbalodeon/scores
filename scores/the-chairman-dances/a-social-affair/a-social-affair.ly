\version "2.25.5"

\include "settings.ily"

\header {
  title = "A Social Affair"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

verse = \relative g, {
  \mark \default

  \repeat percent 4 {
    \repeat percent 2 {
      | \repeat unfold 4 { g8 }
    }
  }

  \repeat percent 2 {
    \repeat percent 2 {
      | \repeat unfold 4 { c8 }
    }
  }

  \repeat percent 2 {
    | \repeat unfold 4 { b8 }
  }

  \repeat percent 2 {
    | \repeat unfold 4 { d8 }
  }

  \repeat percent 3 {
    | \repeat unfold 4 { g,8 }
  } g8 d' g, g'

  \repeat percent 2 {
    | \repeat unfold 4 { g,8 }
  }

  | g'8 g g, g a a b b

  | c8 c c c c e c g'
  | c,8 b' c, c' c, b' c, g'
  | b,8 b b b b a b c
}

chorus = \relative g {
  \mark \default

  | \repeat unfold 4 { g8 } g d e fs
  | g8 a b c d e g fs
  | d8 d d d d a, d g
  | a8 b d b e d a b

  | e,8 e e e e d e fs
  | g8 a b c d e d c
  | b8 b b b b a, d g
  | a8 b e fs d e a, b

  | c,8 c c c c d e fs
  | g8 a b c d e g fs
  | d8 d d d d a' d,, g'
  | d,8 fs' d, d' a, c' b a
}

interlude = \relative g {
  \mark \default

  \repeat percent 2 {
    | \repeat unfold 4 { g8 }
  }

  | g8 g g ( a ) \repeat unfold 4 { a }

  \repeat percent 2 {
    | \repeat unfold 4 { g8 }
  }

  | g8 g g ( a ) \repeat unfold 4 { a }

  \repeat percent 2 {
    \repeat unfold 4 { e8 }
  } |

  | e8 e e a \repeat unfold 4 { a }
  | g8 g g g g g \glissando d' b' ~
  | b8 d,4 d,8 e b' e,4
}

music = \relative g {
  \tempo 4 = 160
  \key g \major
  \time 4/4
  \clef "bass"

  \partial 4
  r4

  \repeat percent 3 {
    | \repeat unfold 4 { g8 }
  } g8 g g d
  | g8 g g g g g \glissando d' b' ~
  | b8 d,4 d,8 e b' e,4

  \verse

  \repeat percent 2 {
    | \repeat unfold 4 { d8 }
  }

  \interlude

  \verse
  | d8 r d2.

  \chorus

  \interlude

  \verse
  | d8 r d4 r2

  | g8 g g g g d e fs
  | g a b c d e g fs
  | d d d d d a, d g
  | a b d b e d a b
  | e, e e e e d e fs
  | g a b c d e d c
  | b b b b b a, d g
  | a b e fs d e a, b
  | c, c c c c d e fs
  | g a b c d e g fs ~
  | fs d, a'' g ~ g d, b'' a ~
  | a d,, b'' c b4 g4

  \mark \default

  | e,4 -. e -. e -. e -.
  | a,4 -\markup \italic "simile" a a a
  | d4 d d d
  | c4 c c b
  | g4 e' e8 e g gs
  | a4 a a8 a c cs
  | d8 a d,4 d8 d a' af

  | g4 g c, b
  | g4. g8 g4 b
  | c4. c8 c4 b
  | g4. g8 g4 b
  | c4. c8 c4 b

  | \repeat unfold 4 { a8 } a a a e'
  | b'8 c c c c c a g
  | \repeat unfold 4 { fs8 } fs d fs a
  | \repeat unfold 4 { d8 } d b a b

  \repeat unfold 2 {
    \repeat percent 2 {
      | \repeat unfold 4 { g8 }
    }

    | g8 g g a \repeat unfold 4 { a }
  }

  \repeat percent 2 {
    | \repeat unfold 4 { e8 }
  }

  | e8 e e a \repeat unfold 4 { a }

  \repeat percent 2 {
    | \repeat unfold 4 { g8 }
  }

  | g8 g g a \repeat unfold 4 { a }

  \repeat percent 2 {
    | \repeat unfold 4 { g8 }
  }

  | g8 g g a \repeat unfold 4 { a }
  | \repeat unfold 4 { e8 } e e e e,
  | e'8 e e a \repeat unfold 4 { a }

  | g8 -. r r4 r2

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
