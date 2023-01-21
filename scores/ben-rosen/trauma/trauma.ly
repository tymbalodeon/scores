\version "2.24.0"

\include "settings.ily"

\header {
  title = "Traum(a)"
  composer = "Ben Rosen"
}

key_and_time = {
  \tempo 4 = 45
  \time 3/4
}

upper_staff = \relative c'' {
  \key_and_time
  | R2.

  \time 4/4

  | R1

  \time 3/4

  | r2 <ds fs>4 ~ (

  \time 4/4

  | <ds fs> <g, b>2 ~ \tuplet 3/2 { <g b>8 <g b> <ds' fs> }

  \time 3/4

  \tuplet 3/2 { <df' f>4 <f, as>8 } <a c>4 ~ \tuplet 3/2 { <a c>8 <g, b> <b ds> }

  \time 4/4

  | <b d>16 <d fs>8. ~ <d fs>4 ~ <d fs>8 <c ef> <bf d>4 ~

  \time 3/4

  | <bf d>2. )

}

middle_staff = \relative c' {
  | \repeat unfold 3 { <c e>8 g }

  \repeat unfold 3 {
    \time 4/4

    | \repeat unfold 4 { <c e>8 g }

    \time 3/4

    | \repeat unfold 3 { <b e>8 gs }
  }
}

lower_staff = \relative c {
  \clef bass
  \key_and_time

  | R2.

  \time 4/4

  | r2 c -- (

  \time 3/4

  | g2. -- )

  \time 4/4

  | r2 fs' -- (

  \time 3/4

  | cs2. -- )

  \time 4/4

  | R1

  \time 3/4

  | R2.
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
    \numericTimeSignature
  }
  <<
    \new Staff = "upper" \upper_staff
    \new Staff = "middle" \middle_staff
    \new Staff = "lower" \lower_staff
  >>
}
