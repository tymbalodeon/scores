\version "2.25.19"

\include "helpers/settings.ily"
\include "trauma-upper-staff.ily"
\include "trauma-middle-staff.ily"
\include "trauma-lower-staff.ily"

\header {
  title = "Traum(a)"
  composer = "Ben Rosen"
}

key_and_time = {
  \tempo 4 = 45
  \time 3/4
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
    \numericTimeSignature
  }
  <<
    \new Staff = "upper" {
      \key_and_time
      \upper_staff
    }
    \new Staff = "middle" {
      \key_and_time
      \middle_staff
    }
    \new Staff = "lower" {
      \key_and_time
      \lower_staff
    }
  >>
}
