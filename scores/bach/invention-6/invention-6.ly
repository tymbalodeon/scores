\version "2.25.15"

\include "helpers/settings.ily"

\include "invention-6-global.ily"
\include "invention-6-piano-upper.ily"
\include "invention-6-piano-lower.ily"

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
