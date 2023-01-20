\version "2.24.0"

\include "settings.ily"
\include "soprano.ily"

\header {
  title = "The True Knowledge"
  composer = "Ben Rosen"
}

key_and_time = {
  \tempo 4 = 66
  \key c \major
  \time 4/4
}

upper_staff = \relative c'' {
  \key_and_time

  \partial 2
  r2
}

lower_staff = \relative c {
  \clef bass
  \key_and_time

  \partial 2
  r2
}

\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = "Soprano"
    } {
      \key_and_time

      \soprano
    }
    \new PianoStaff \with {
      instrumentName = "Piano"
    }
    <<
      \new Staff = "upper" \upper_staff
      \new Staff = "lower" \lower_staff
    >>
  >>
}
