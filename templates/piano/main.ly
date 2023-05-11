\version "2.25.4"

\include "settings.ily"
\include "helpers/set-bars-per-line.ily"

\header {
  title = "Title"
  composer = "Composer"
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

\layout {
  \context {
    \Score \consists
    #(set-bars-per-line '(4))
  }
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
