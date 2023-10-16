\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "How You're Underrated"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c' {
  \key bf \major
  \time 2/2

  | R1 * 8 ^\markup \italic "(instrumental)"
  | R1 * 8 ^\markup \italic "(verse)"
  | R1 * 13 ^\markup \italic "(drums)"

  | R1 * 4 ^\markup \italic "\"I've been holding...\""

  | f,1
  | ff1
  | ef1
  | f1

  | ff1
  | ef1
  | ff1
  | ef1

  | r8 d'' ( c ) g ( bf ) r r4
  | r8 d ( c ) g ( bf ) f' r4
  | r8 d ( c ) g ( bf ) r r4
  | r8 c ( d ) f bf r r4

  | bf,,8 bf bf bf bf bf bf bf
  | bf8 bf bf bf bf bf c d
  | d8 d d d d d d d
  | d8 d d d c c c c

  | bf8 bf bf bf bf bf bf bf
  | bf8 bf bf bf bf bf c d
  | d8 d d d d d d d
  | d8 d d d d d d d16 ( ef )

  | f8 f f f f f f f
  | f8 f f f f f f f
  | f8 f f f f f f f
  | f8 f f f f ef ef d

  | d8 c4 c4 c8 c c
  | c8 c c c c c c c
  | bf8 bf bf bf bf bf bf bf
  | bf8 bf bf bf bf bf bf bf

  | bf8 bf bf bf bf bf bf bf
  | bf8 bf bf bf bf bf bf bf
  | bf8 bf bf bf bf bf bf bf
  | bf8 bf bf bf bf bf bf bf

  | bf8 r r4 r2

  | d'8 ( bf ) bf ( d ) d8 ( bf ) bf ( d )
  | d8 ( bf ) bf ( d ) d8 ( bf ) bf ( d )
  | d8 ( bf ) bf ( d ) d8 ( bf ) bf ( d )
  | d8 ( bf ) bf ( d ) d8 ( bf ) bf ( d )

  | bf'8 bf bf bf bf bf bf bf
  | bf8 bf bf bf bf bf bf bf
  | bf8 bf bf bf bf bf bf bf
  | bf8 bf bf bf bf bf bf bf

  | bf8 bf bf bf bf bf bf bf
  | bf8 bf bf bf bf bf bf bf
  | bf8 bf bf bf bf bf bf bf
  | bf8 bf bf bf bf bf bf bf

  | R1 * 4

  \repeat volta 4 {
    | <bf,, a' bf f'>1 ~ ^\markup \fret-diagram-terse "x;3;x;4;1;3;"
    | <bf a' bf f'>1

    \alternative {
      \volta 1,2,3 {
        | <f c' a' bf f'>1 ^\markup \fret-diagram-terse "3;x;o;4;1;3;"
        | <c' c a' a f'>1 ^\markup \fret-diagram-terse "x;5;o;4;o;3;"
      }

      \volta 4 {
        | <ef a a f'>1 ~ ^\markup \fret-diagram-terse "x;x;3;4;o;3;"
        | <ef a a f'>1
      }
    }
  }

  | f ,1
  | ff1
  | ef1 ~
  | ef1

  | bf'''8 bf bf bf bf bf bf bf
  | bf8 bf bf bf bf bf bf bf
  | bf8 bf bf bf bf bf bf bf
  | bf8 bf bf bf bf4 r

  \repeat volta 4 {
    | <bf,, bf'>1
    | <c c'>1
    | <ef ef'>1 ~

    \alternative {
      \volta 1,2,3 {
        | <ef ef'>1
      }

      \volta 4 {
        | <ff ff'>1
      }
    }
  }

  | <ef ef'>1 \fermata

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = \markup {
      \center-column {
        "Guitar"
        \tiny \line { "D G C F A D"  }
      }
    }
    \numericTimeSignature
  } {
    \compressMMRests
    \music
  }
}
