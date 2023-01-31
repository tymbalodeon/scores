\version "2.24.0"

\include "settings.ily"

\header {
  title = "Jacob Wrestles The Angel"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative d' {
  \clef "bass"
  \key a \major

  \repeat volta 4 {
    \time 4/4

    | R1

    \alternative {
      \volta 1,2,3 {
        \time 2/4

        | R2
      }

      \volta 4 {
        \time 2/4

        | r4 r8 d16 ( e16 )
      }
    }
  }

  \time 4/4

  | a2. ~ a8 e16 ( fs16

  \time 2/4

  | e16 ) r16 a,16 ( b16 ) a4 ~

  \time 4/4

  | a1 ~

  \time 2/4

  | a4. d16 ( e16 )

  \time 4/4

  | a2. ~ a8 e8

  \time 2/4

  | a8 e8 a4 ~

  \time 4/4

  | a2. ~ a8 e8

  \time 2/4

  | a8 e8 a,4

  \time 4/4

  | a,4. a'8 ~ a8 e8 a8 a,8

  \time 2/4

  | e'8 e,8 e'8 r8

  \time 4/4

  | d4 d8 a'8 ~ a8 a,8 d8 cs8

  \time 2/4

  | b8 ( a8 ) b8 cs8

  \time 4/4

  | a4. a'8 ~ a8 e8 a8 a,8

  \time 2/4

  | e'8 e,8 e'8 r8

  \time 4/4

  | d4 d8 a'8 ~ a8 a,8 d8 cs8
  | b8 e,8 fs8 ( a8 ~ a8 ) b8 e,8 ( fs8 )
  | a4 a'4 e4 e,4

  \time 2/4

  | fs4 cs'4

  \time 4/4

  | fs2 ~ fs8 e8 ( fs8 ) a8 ~
  | a4 ~ a8 fs8 \acciaccatura { a8 ( } b8 ) a8 fs8 e8
  | a,4. a'8 ~ a8 e8 a8 a,8

  \time 2/4

  | \tuplet 3/2 { d'4 cs4 a4 }

  \time 4/4

  | d,4 d8 a'8 ~ a8 a,8 d8 cs8

  \time 2/4

  | b8 ( a8 ) b8 cs8

  \time 4/4

  | a4. cs'8 ~ cs8 d8 cs8 \once \override NoteHead.style = #'cross a,8

  \time 2/4

  | b'8 a8 gs8 r8

  \time 4/4

  | d4 d8 e'8 ~ e8 e8 ( d8 ) \once \override NoteHead.style = #'cross a,8

  \time 2/4

  | cs'8 b8 a8 r8

  \time 4/4

  | a,4. cs'8 ~ cs8 d8 cs8 \once \override NoteHead.style = #'cross a,8

  \time 2/4

  | b'8 a8 gs8 r8

  \time 4/4

  | d4 d8 e'8 ~ e8 e8 ( d8 ) \once \override NoteHead.style = #'cross a,8

  \time 2/4

  | b'8 cs8 a8 r8

  \time 4/4

  | a,4. a'8 ~ a8 e8 a8 a,8

  \time 2/4

  | e'8 e,8 e'8 r8

  \time 4/4

  | d4 d8 a'8 ~ a8 a,8 d8 cs8

  \time 2/4

  | b8 ( a8 ) b8 cs8

  \time 4/4

  | a4. a'8 ~ a8 e8 a8 a,8

  \time 2/4

  | e'8 e,8 e'8 r8

  \time 4/4

  | d4 d8 a'8 ~ a8 a,8 d8 cs8
  | b8 e,8 fs8 ( a8 ~ a8 ) b8 e,8 ( fs8 )
  | a4 a'4 e4 e,4

  \time 2/4

  | fs4 cs'4

  \time 4/4

  | fs2 ~ fs8 e8 ( fs8 ) a8 ~
  | a8 fs8 a8 fs8 \acciaccatura { a8 ( } b8 ) a8 fs8 e8
  | a,4. a'8 ~ a8 e8 a8 a,8

  \time 2/4

  | \tuplet 3/2 { d'4 cs4 a4 }

  \time 4/4

  | d,4 d8 a'8 ~ a8 a,8 d8 cs8

  \time 2/4

  | b8 a8 b8 cs8

  a4. cs'8 ~ cs8 d8 cs8 \once \override NoteHead.style = #'cross a,8
  b'8 a8 gs8 r8
  d4 d8 e'8 ~ e8 e8 ( d8 ) \once \override NoteHead.style = #'cross a,8
  cs'8 b8 a8 r8
  a,4. cs'8 ~ cs8 d8 cs8 \once \override NoteHead.style = #'cross a,8
  b'8 a8 gs8 r8
  d4 d8 e'8 ~ e8 e8 ( d8 ) \once \override NoteHead.style = #'cross a,8
  b'8 cs8 a8 r8
  a,4. cs'8 ~ cs8 d8 cs8 \once \override NoteHead.style = #'cross a,8
  b'8 a8 gs8 r8
  d4 d8 e'8 ~ e8 e8 ( d8 ) \once \override NoteHead.style = #'cross a,8
  cs'8 b8 a8 r8
  a,4. cs'8 ~ cs8 d8 cs8 \once \override NoteHead.style = #'cross a,8
  b'8 a8 gs8 r8
  d4 d8 \acciaccatura { gs'8 ( } a8 ) ~ a8 gs8 fs8 e8 d8 cs8 b8 a8
  \time 2/2  \grace { a8 ( } b2. ) fs4
  b,2. b4
  a1
  a'2 a,4 gs4
  g1 ~
  g2. g4
  g'1
  b'2. a,8 as8
  b1
  cs4. d8 ~ d4. cs16 d16
  cs4. a8 ~ a2
  e'4 e,4 a4 gs4
  g2. d4
  b2 g2
  e2. gs'4
  gs'1 ~
  gs1

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
