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

  | <gs b e>4 <b d g> <c e g>2

  \time 7/8

  | <ef af c>4 <ds fs b> <bf e g>4.
  | <e g c>4 <g bf ef> <af c e>4.

  \time 3/4

  | <gs b e gs>4 <b d g b> <b ds fs b>

}
