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

  | r2 <ds fs>4 ~ ( \mf

  \time 4/4

  | <ds fs> <g, b>2 ~ \tuplet 3/2 { <g b>8 <g b> <ds' fs> }

  \time 3/4

  \tuplet 3/2 { <df' f>4 <f, as>8 } <a c>4 ~ \tuplet 3/2 { <a c>8 <g, b> <b ds> ~ }

  \time 4/4

  | <b ds>16 <d fs>8. ~ <d fs>4 ~ <d fs>8 <c ef> <bf d>4 ~

  \time 3/4

  | <bf d>2. )

  \time 4/4

  | r4 <ds fs> ~ <ds fs>8.. <fs as>32 ~ <fs as>8 <e gs>
  | << {

      \tuplet 3/2 { r8 <ef' f> <ef f> }
      \tuplet 3/2 { r <d f> <d f> }
      \tuplet 3/2 { r4 r16 <df f> ~ }

    \time 4/4

    | \tuplet 3/2 { <df f>16 <df f>8. r8 }

  } \\ {

      <as, cs>8 a' b b r bf

    \time 4/4

    | bf8 r

  } >>

  r8 a4. ( <c, f a>4

  \time 3/4

  | <b e gs>4. ) r8 <ef g bf>4 ~ (

  \time 4/4

  | <ef g bf> <b d g>4 ~ \tuplet 3/2 { <b d g>8 <b d g> <ef g bf> } <af df f>4 ~

  \time 3/4

  | <af df f>4 ) r < c f a c> ~

  \time 4/4

  | <c f a c>2 r
}

middle_staff = \relative c' {
  | <c e>8 \p g \repeat unfold 2 { <c e> g }

  \repeat unfold 4 {
    \time 4/4

    | \repeat unfold 4 { <c e>8 g }

    \time 3/4

    | \repeat unfold 3 { <b e>8 gs }
  }

  \time 4/4

  | \repeat unfold 4 { <c e>8 g }

  \clef "bass"

  \time 3/4

  | r8 fs \repeat unfold 2 { <b ds> fs }

  \time 4/4

  | \repeat unfold 4 { <bf ef>8 g }

  \time 3/4

  \repeat unfold 3 { <fs b ds>8 b }

  \time 4/4

  \repeat unfold 4 { <g bf ef>8 ef, }
}

lower_staff = \relative c {
  \clef bass
  \key_and_time

  | R2.

  \time 4/4

  | r2 c \mf -- (

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

  \time 4/4

  | r2 d -- (

  \time 3/4

  | a2. -- )

  \time 4/4

  | R1

  \time 3/4

  | <ef af ef'>2. -- (

  \time 4/4

  | <bf ef bf'>2. -- ) r4

  \time 3/4

  | r4 <d, a' d>2 ~ -- (

  \time 4/4

  | <d a' d>4 -- <a e' a>2. -- )

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
