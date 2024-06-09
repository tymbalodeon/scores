\version "2.25.16"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "How You're Underrated"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c' {
  \key bf \major
  \time 4/4

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

  | r8 d''\2 ( c ) g\3 ( bf ) r r4
  | r8 d ( c ) g ( bf ) f'\1 r4
  | r8 d ( c ) g ( bf ) r r4
  | r8 c\3-1 ( d ) f\2-2 bf\1-3 r r4

  | bf,,8\5-2 bf bf bf bf bf bf bf
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

  | d'8\2 ( bf ) bf ( d ) d8 ( bf ) bf ( d )
  | d8 ( bf ) bf ( d ) d8 ( bf ) bf ( d )
  | d8 ( bf ) bf ( d ) d8 ( bf ) bf ( d )
  | d8 ( bf ) bf ( d ) d8 ( bf ) bf ( d )

  | bf'8\2 bf bf bf bf bf bf bf
  | bf8 bf bf bf bf bf bf bf
  | bf8 bf bf bf bf bf bf bf
  | bf8 bf bf bf bf bf bf bf

  | bf8 bf bf bf bf bf bf bf
  | bf8 bf bf bf bf bf bf bf
  | bf8 bf bf bf bf bf bf bf
  | bf8 bf bf bf bf bf bf bf

  | R1 * 4

  \repeat volta 4 {
    | <bf,, a' bf f'>1 ~ ^\markup \fret-diagram-terse "x;3;x;3;o;3;"
    | <bf a' bf f'>1

    \alternative {
      \volta 1,2,3 {
        | <f c' a' bf f'>1 ^\markup \fret-diagram-terse "3;x;o;3;o;3;"
        | <c' c a' a f'>1 ^\markup \fret-diagram-terse "x;x;o;2;o;3;"
      }

      \volta 4 {
        | <ef a a f'>1 ~ ^\markup \fret-diagram-terse "x;x;4;2;o;3;"
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
        \tiny \line { "D G C G A D"  }
      }
    }
    \numericTimeSignature
  } {
    \compressMMRests
    \music
  }
}
