\version "2.25.24"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

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
      \magnifyStaff #5/7
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
