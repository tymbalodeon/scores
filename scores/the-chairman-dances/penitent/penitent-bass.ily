\version "2.25.21"

penitentBass = \relative c' {
  \clef "bass"
  \time 9/16

  | R1 * 18/16

  \repeat volta 2 {
    | e4. f8. ~
    | f4. d8.
    | e4. f8. ~
    | f4. d8.

    | e4. ~ e8. ~
    | e4. d8.
    | c4. ~ c8. ~

    \alternative {
      \volta 1 {
        | c4. ~ c8.
      }

      \volta 2 {
        | c4.  a8. \glissando
      }
    }
  }

  | f,4. ~ f8. ~
  | f4. ~ f8.
  | f4. ~ f8. ~
  | f4. f8.

  | c'4. ~ c8. ~
  | c4. ~ c8.
  | c,4. ~ c8. ~
  | c4. c8.

  | f4. ~ f8. ~
  | f4. c8.
  | f4. ~ f8. ~
  | f4. c8.

  | c'4. ~ c8. ~
  | c4. ~ c8.
  | c,4. ~ c8. ~
  | c4. ~ c8.

  \repeat volta 2 {

    | a''8. ~ a8 f16 ~ f8. c' ~ c8 a16 ~ a8.
    | e'8. ~ e8 c16 ~ c8. g' ~ g8 e16 ~ e8.

    \ottava #1

    | b'8. ~ b8 g16 ~ g8. d' ~ d8 a16 ~ a8.

    \ottava #0

    | g8. ~ g8 e16 ~ e8. d ~ d8 c,,16 ~ c8.
  }

  \repeat volta 2 {

    | a''8. ~ a8 f16 ~ f8 a,16 c'8. ~ c8 a16 ~ a8 a,16
    | e''8. ~ e8 c16 ~ c8 a,16 g''8. ~ g8 e16 ~ e8 a,,16


    | \ottava #1
      b''8. ~ b8 g16 ~ g8
      \ottava #0
      c,,,16
      \ottava #1
      d'''8. ~ d8 a16 ~ a8
      \ottava #0
      c,,,16
    | \ottava #1
      g'''8. ~  g8 e16 ~  e8
      \ottava #0
      c,,16
      \ottava #1
      d''8. ~  d8 c16 ~  c8
      \ottava #0
      c,,16
  }

  | f4. ~ f8. ~
  | f4. c8.
  | f4. ~ f8. ~
  | f4. c8.

  | c'4. ~ c8. ~
  | c4. ~ c8.
  | c,4. ~ c8. ~
  | c4. ~ c8.

  \repeat volta 2 {
    | f4. ~ f8 c16
    | c''8 d16 ~ d8 a16 e'8 c,,16

    | f4. ~ f8 c16
    | g'8 a16 d,8. e

    \repeat unfold 2 {
      | c'4. ~ c8 c,16
      | e''8. ~ e8 c16 ~ c8.
    }
  }

  | f,,4. e'8.
  | f4. a8.
  | \tuplet 4/3 { c8. d e f }

  \ottava #1

  | \tuplet 4/3 { g8. a b c }
  | e4. ~ e8.

  \ottava #0

  | R1 * 27/16

  | r8. a,,, c

  \key d \minor

  | d4. ~ d8.
  | e4. ~ e8.
  | f4. ~ f8.
  | f8. g a

  | bf4. ~ bf8 f16
  | \acciaccatura { bf8 } c8. bf8 a16 bf8.
  | g4.
    \ottava #1
    \acciaccatura { a'8 } bf8 a16
  | g8 d16 bf8 a16 g8.
    \ottava #0

  | d4. ~ d8.
  | e4. ~ e8.
  | f4. c8.
  | f8. a c

  | d4. ~ d8. ~
  | d8 c16 d8 e16 f8 g16
  | \ottava #1
    a8 ( bf16 a8 ) f16 g8 ( af16
  | g8 ) f16 d8
    \ottava #0
    a,16 c8 a16

  | d4. \acciaccatura { c'8 } d8.
  | c8. ~ c8 d16 c8.
  | a4. \acciaccatura { g16 } a8.
  | c8. d g,

  | f4. a,8.
  | bf8. c d
  | e8. f g
  | a8. bf c8 c,16

  | d8 f'16 ~ f8. ~ f8 d,16
  | e8 g'16 ~ g8. ~ g8 e,16
  | f8 a'16 ~ a8. ~ a8 f,16
  | a'8 g16 f8 e16 d8.

  | bf8. a'4.
  | bf,8. a' bf,
  | g8. a bf
  | a8. g f

  | d,8. d d8 c16
  | e8. e e8 c16
  | f8. f f8 c16
  | f8. g a

  | bf8. d f
  | \ottava #1
    d''8. c bf
  | a8. f d
    \ottava #0
  | c8. bf a

  | d,,8. a' d
  | e,8. e' c
  | f,8. a' g
  | f8. e c

  | bf8. d'4.
  | bf,8. d' bf,
  | g8. a bf
  | a8. g f

  | d8. d d8 c16
  | e8. e e8 c16
  | f8. f f8 c16
  | f8. g a

  | bf8. d f
  | a8. bf c
  | g8. a bf
  | a8. g f

  | d,8. d'' c
  | e,,8. e'' c
  | f,,8.
    \ottava #1
    a'' g
  | f8. e c
    \ottava #0


  | bf,8. f' bf
  | \ottava #1
    c'8. bf a
  | f8. ( g )
    \ottava #0
    c,
  |  d8.
  << {
    <e c'>4. ~
    | <e c'>4. ~ <e c'>8.
  } \\ {
    r8. c,,8.
    | d4. -+ ~ d8.
  } >>

  \bar "|."
}
