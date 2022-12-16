\version "2.23.82"

\include "settings.ily"
\include "style.ily"

\header {
  title = "Title"
  composer = "Composer"
}

key_and_time = {
  \key c \major
  \time 4/4
}

upper = \relative c'' {
  \key_and_time
  c1
}

lower = \relative c {
  \clef bass
  \key_and_time
  c1
}

\layout {
  \context {
    \Score \consists #(set-bars-per-line '(4))
  }
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
}
