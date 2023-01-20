\version "2.24.0"

\include "settings.ily"
\include "soprano.ily"

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

upper_staff = \relative c'' {
  \key_and_time

  \partial 2
  r2

  | c1
}

lower_staff = \relative c {
  \clef "bass"
  \key_and_time

  \partial 2
  r2

  | c1
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
        \new Staff = "upper" \upper_staff
        \new Staff = "lower" \lower_staff
      >>
    }
  >>
}
