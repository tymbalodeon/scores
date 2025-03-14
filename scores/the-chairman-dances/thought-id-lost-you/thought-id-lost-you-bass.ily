\version "2.25.24"

thoughtIdLostYouBass = \relative c {
    \tempo 4 = 60
    \clef "bass"

    | R1

    | r2 r4 r16 c d e
    | f8 g f e c4 r8 g16 \acciaccatura { c8 } d16 ~
    | d8 c16 d ~ d8 e d e4.

    | R1 * 6

    \time 2/4

    | r2

    \time 4/4

    | r2. r16 e, f fs

    | g8 g g d' g2
    | d4 ~ d8 e16 d c8 e, f fs
    | g4 ~ g16 e g8 b g c cs
    | d4 \acciaccatura { e'8 } f16 e d a f e d c b c d e,

    | g4 r16 e g8 b g d' e
    | f4 ~ \tuplet 3/2 { f8 g a } g32 f32 e8. ~ e16 f16 g8
    | g8 d g f e c g gs
    | a4 r8 b c e g e

    | f8 g a b c g e' c
    | \ottava #1
      d8 bf f' d a' f c' a
    | b8 g d' a g2 \harmonic
      \ottava #0

    | R1 * 7

    \time 2/4

    | r2

    \time 4/4

    | r2 r8 c, d e
    | f8 g f e c4 r8 g16 \acciaccatura { c8 } d16 ~
    | d8 c16 d ~ d8 e d e4.

    | R1 * 5

    | r2 r8
      \ottava #1
      c e g

    \time 2/4

    | a4 g

    \time 4/4

    | e2 ~ e4 ~ e16
      \ottava #0
      e,, f fs

    | g8 g g g g g g d'
    | g8 g g g g2

    | a,4 c'8 b g8. a32 g f8 e
    | c4 a g'8 f e d
    | c8 e c' b g8. a32 b c8 d
    | e8 c
      \ottava #1
      d' c b g
      \ottava #0
      c,, b

    | a4 c'8 b g8. a32 g f8 e
    | c4 a g'8 e, g gs
    | a8 c g' f e d c b
    | f4 a'8 f, g a b g

    | a4 c'8 b g8. a32 g f8 e
    | c4 a g'8 f e d
    | c8 e c' b g8. a32 b c8 d
    | e8 c,
      \ottava #1
      g'' e, b'' g, d'' b,
      \ottava #0

    | a,4 c'8 b g8. a32 g f8 e
    | c4 a g'8 e, g gs
    | a8 c g' f e d c b
    | bf4 \acciaccatura { e'16 } f e d c bf a g f e d c bf

    | a8 a e'16 e,16 a8 a' e, f fs
    | g4. g8 d'4. d8
    | g1

    \bar "|."
}
