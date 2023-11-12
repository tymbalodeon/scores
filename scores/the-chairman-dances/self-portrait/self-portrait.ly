\version "2.25.10"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Self-Portrait"
  subtitle = "The Chairman Dances"
  composer = "Eric Krewson"
  arranger = "Ben Rosen, bass"
}

music = \relative bf {
    \key bf \major
    \time 4/4
    \clef "bass"

    | bf8 a'16 a f8 g, f' d ef, d'16 d
    | bf8 c, ef' c f, c' bf, a
    | g8 bf'16 bf g8 ef d' bf c, ef'16 ef
    | c8 f, c' f, bf, f' c' d

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
