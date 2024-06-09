\version "2.25.16"

\include "helpers/settings.ily"

\header {
  title = "Dorothy Day And Peter Maurin"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

music = \relative df' {
  \clef "bass"
  \key df \major

  | r2 r8 f16 gf f8 df ~

  | df1
  | r2 df8 ef4 f8 ~ f df4. ~ df2
  | r4 r8 gf ~ gf f ef df ~
  | df bf4 f'8 ~ f ef df c ~

  | c af4 bf8 ~ bf c df gf, ~
  | gf2
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
