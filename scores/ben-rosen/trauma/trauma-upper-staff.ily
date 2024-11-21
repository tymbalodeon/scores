\version "2.25.20"
upper_staff = \relative c'' {
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
  | <gs, b e>4 <b d g> <c e g>2

  \time 7/8

  | <ef af c>4 <ds fs b> <bf e g>4.
  | <e g c>4 <g bf ef> <af c e>4.

  \time 3/4

  | <gs b e gs>4 <b d g b> <b ds fs b>

  \time 4/4

  | bf,,2 -> \f ( g'4 -> ~ \tuplet 3/2 { g8 d16 -> ~ } d8

  \time 3/4

  | f2 -> ) <d' b'>4 ~
  | <d b'>2 <ds' fs>4 ~

  \time 5/4

  | <ds fs> <g, b>2 ~ \tuplet 3/2 { <g b>8 <g b> <d' f> }
    \ottava #1
    <df' f>8. as,32 fs'

  \time 3/4

  | <a c>2 r4
    \ottava #0

  | d,,,2. -> \mf

  \repeat unfold 2 {
    \time 4/4

    | R1

    \time 3/4

    | R2.
  }

  | s2.

}
