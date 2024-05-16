\version "[lilypond_version]"

\include "helpers/settings.ily"

\header {
    title = "[title]"
    subtitle = "[subtitle]"
    composer = "[composer]"
    arranger = "[arranger]"
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
