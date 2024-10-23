\version "2.25.19"

zippersBass = \relative af {
  \key ef \major
  \time 6/8
  \clef "bass"

  | R2. * 7
  | r4. r4 r16 ef

  | af4 ~ af16 ef ef'8 d bf
  | ef,4. bf'4 ~ bf16 ef,
  | af4 ~ af16 ef ef'8 d bf
  | f4. c'16 ( \glissando d ) ~ d8. ef,16

  | af4 ~ af16 ef ef'8 d bf
  | ef,4. bf'
  | c,4. g'
  | c,4. g'4 ~ g16 ef

  | af4 ~ af16 ef ef'8 d bf
  | ef,4. bf'4 ~ bf16 ef,
  | af4 ~ af16 ef ef'8 d bf
  | f4. \acciaccatura { g16 } a8. c

  | af!4 ~ af16 ef ef'8 d bf
  | ef,4. bf'
  | c,4. g'
  | c,4. g'

  | af,2.
  | g2.
  | af2.
  | f2.

  | af2.
  | ef'2.
  | c' ~
  | c4. ~ c4 ~ c16 ef,

  | af4 ~ af16 ef ef'8 d bf
  | ef,4. bf'4 ~ bf16 ef,
  | af4 ~ af16 ef ef'8 d bf
  | f8. \glissando f, c' d

  | af4. \acciaccatura { f''16 } g8 f ef
  | d8. bf ef, \glissando g,
  | c2. ~
  | c2.

  | ef2.
  | af,2.
  | g2.
  | af2.

  | bf4. \4 \acciaccatura { bf16 \glissando } c8. ef
  | \appoggiatura { ef16 } f4. \glissando f, \glissando
  | af4. ~ af4 ef'8 \2 \glissando
  | af2 ~ af8. ef16

  | af4 ~ af16 ef ef'8 d c
  | bf8. g f8 ef d
  | <<
    { g4. g8.  r8. }
    \\
    { c,8. c c \tuplet 4/3 { c8 g } }
  >>
  | \tuplet 4/3 { c8 d ef f } \tuplet 4/3 { ef d c bf }

  | af4. \4 \glissando af' \3 \glissando
  | g,4. \glissando bf' \2 \glissando
  | af,4. \glissando c' \2 \glissando
  | f,,4. \glissando f'8. \3 ef16 c8

  | af4. \glissando af' \3 \glissando
  | bf,4. \3 \glissando g'
  | c,2. ~
  | c2.

  | R2. * 6

  | f,8. f \glissando f' f \glissando
  | f,8. f \glissando f' ef16 c8

  | ef4. ~ ef8 f, g
  | af4. ~ af8 ef'16 ( f8. ) \glissando
  | g,4. ~ g8 f g
  | af4. ~ af8 g af

  | bf4. \appoggiatura { bf16 \glissando } c8. ef
  | \appoggiatura { ef8 } f4. \glissando f,4.
  | c'4 g'8 c8. bf16 g8
  | c,8. \glissando g c d

  | ef4. ~ ef8 f, g
  | af4. ~ af8 ef'16 af ( bf -. ) \xNote ef,
  | g4. g16 f ef8 bf
  | af4. ~ af8 g af

  | bf8. bf \appoggiatura bf16 \glissando c8. ef8 \xNote c16
  | \appoggiatura { ef8 } f4. \glissando f,8. \glissando f' \glissando
  | c'2. ~
  | c2.

  | R2. * 4

  \bar "|."

}
