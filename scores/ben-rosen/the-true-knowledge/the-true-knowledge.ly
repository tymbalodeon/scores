\version "2.24.0"

\include "settings.ily"
\include "the-true-knowledge-soprano.ily"
\include "the-true-knowledge-piano-upper-staff.ily"
\include "the-true-knowledge-piano-lower-staff.ily"

\header {
  title = "The True Knowledge"
  composer = "Ben Rosen"
  poet = "Oscar Wilde"
}

key_and_time = {
  \tempo 4 = 66
  \key c \major
  \numericTimeSignature
  \time 4/4
}

\score {
  <<
    \new Staff \with {
      instrumentName = "Soprano"
    } {
      \soprano \addlyrics \text
    }
    \new PianoStaff \with {
      instrumentName = "Piano"
    } {
      <<
        \new Staff = "upper" {
          \key_and_time
          \upper_staff
        }
        \new Staff = "lower" {
          \key_and_time
          \lower_staff
        }
      >>
    }
  >>
}
