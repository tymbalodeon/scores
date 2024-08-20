\version "2.25.17"

\include "helpers/settings.ily"

\include "scores/bach/invention-6/invention-6-global.ily"
\include "scores/bach/invention-6/invention-6-piano-upper.ily"
\include "scores/bach/invention-6/invention-6-piano-lower.ily"

\score {
  \new PianoStaff {
    <<
      \new Staff {
        \global
        \pianoUpper
      }

      \new Staff {
        \global
        \pianoLower
      }
    >>
  }
}
