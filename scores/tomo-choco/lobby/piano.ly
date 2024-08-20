\version "2.25.17"

\include "helpers/settings.ily"

\header {
    title = "Lobby"
    subtitle = ""
    composer = "Anonymous"
    arranger = "Ben Rosen"
}

key_and_time = {
  \key c \major
  \time 4/4
}

upper_staff = \relative c'' {
  \key_and_time

  | c1
}

lower_staff = \relative c {
  \clef bass
  \key_and_time

  | c1
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  }
  <<
    \new Staff = "upper" \upper_staff
    \new Staff = "lower" \lower_staff
  >>
}
