\version "2.25.24"

verseOne = \relative b {
  | b8. b16 ~ b fs b8 ~ b16 b8 fs16 b8 a,16 ( b )
  | e8. e16 ~ e b e8 ~ e16 e8 b16 e8 b \glissando
  | b'8. b16 ~ b fs b8 ~ b16 b8 fs16 b8 a,16 ( b )
  | e8. e16 ~ e b e8 ~ e16 e8 b16 e8 b \glissando

  | b'8. b16 ~ b fs b8 ~ b16 b8 fs16 b8 a,16 ( b )
  | e8. e16 ~ e b e8 ~ e16 e8 b16 e8 b \glissando
  | b'8. b16 ~ b fs b8 ~ b16 b8 fs16 b8 a,16 ( b )
  | e8. e16 ~ e b e8 ~ e16 e8 b16 e8 b \glissando

  | b'8. b16 ~ b fs b8 ~ b16 b8 fs16 b8 a,16 ( b )
  | e8. e16 ~ e b e8 ~ e16 e8 b16 e8 b \glissando
  | b'8. b16 ~ b fs b8 ~ b16 b8 fs16 b8 a,16 ( b )
  | e8. e16 ~ e b e8 ~ e16 e8 b16 e,8 b' \glissando

  | b'8. b16 ~ b fs a8 ~ a16 a8 fs16 gs8 e
  | g8. g16 ~ g e fs8 ~ fs16 fs8 a,16 f'8 b, \glissando
  | b'8. b16 ~ b fs b8 ~ b16 b8 fs16 b8 a,16 ( b )
  | e8. e16 ~ e b e8 ~ e16 e8 b16 e8 b \glissando

  | b'8. b16 ~ b fs b8 ~ b16 b8 fs16 b8 a,16 ( b )
  | e8. e16 ~ e b fs'8 ~ fs8 gs ~ gs e16 ( fs )
  | b8. b16 ~ b fs b8 ~ b16 b8 fs16 b8 a16 ( b )
  | e8. e16 ~ e b e,8 ~ e16 e8 b16 e,8 r
}

chorus = \relative a, {
  | a8 e'' c a, ~ a e'' c e,,
  | a8 e'' c a, ~ a e'' c e,,
  | a8 e'' c a, ~ a c g'' c,,

  | b8 d' b b, ~ b d' b e,,
  | g8 b' g, d' ~ d fs' d, e,
  | fs8 a' fs, fs ~ fs a' fs, e

  | a8 c' a a, ~ a c' a e,
  | a8 c' a a, ~ a c e' c,

  | b8 d' b b, ~ b d' b a,
  | g8 b' g, g ~ g b' g, r
}

postChorus = \relative fs, {
  | fs8 e'16 es fs8 cs e16 es fs8 cs e,
  | fs8 e'16 es fs8 cs e16 es fs8 cs a
  | b8 d' ( cs ) b a fs e d (
  | cs8 ) b a d \acciaccatura e16 \glissando fs8 a e e,

}

end = \relative fs, {
  | R1 * 2
  | b8 d' ( cs ) b a fs d e,

  | fs8 e'16 es fs8 cs e16 es fs8 cs e,
  | fs8 e'16 es fs8 cs e16 es fs8 cs a
  | b8 d' ( cs ) b a fs d e,

  | fs8 e'16 es fs8 cs e16 es fs8 cs e,
  | fs8 b'16 bs cs8 cs, b'16 bs cs8 cs, a
  | b8 d'' ^\markup \tiny "D" ( cs ) b a fs ( e ) d
  | cs b a gs fs e ds cs ~

  % TODO add gliss to rest
  | cs2 r
}

verseTwo = \relative a, {
  | b8. b16 ~ b fs b8 ~ b16 b8 fs16 b8 a16 ( b )
  | e8. e16 ~ e b e8 ~ e16 e8 b16 e8 e,16 ( fs )
  | b8. b16 ~ b fs b8 ~ b16 b8 fs16 b8 a16 ( b )
  | e8. e16 ~ e b e8 ~ e16 e8 b16 e b e,8

  | b'8. b16 ~ b fs b8 ~ b16 b8 fs16 b8 fs16 b
  | e,8. e16 ~ e b' e8 ~ e16 e8 b16 e8 e,16 ( fs )
  | b8. b16 ~ b fs b8 ~ b16 b8 fs16 b8 fs16 b
  | e,8. e16 ~ e b' e8 ~ e16 e8 b16 e8 e,16 ( fs )

  | b8. b16 ~ b fs b8 ~ b16 b8 fs16 b8 fs16 b
  | e,8. e16 ~ e b' e8 ~ e16 e8 b16 e8 e,16 ( fs )
  | b8. b16 ~ b fs b8 ~ b16 b8 fs16 b8 fs16 b
  | e,8. e16 ~ e b' e8 ~ e16 e8 b16 e8 e,

  | b'8. b16 ~ b fs a8 ~ a16 a8 fs16 gs8 e
  | g8. g16 ~ g e fs8 ~ fs16 fs8 e16 f8 a
  | b8. b16 ~ b fs b8 ~ b16 b8 fs16 b8 fs16 b
  | e,8. e16 ~ e b' e8 ~ e16 e8 b16 e8 e,16 ( fs )

  | b8. b16 ~ b fs cs'8 ~ cs8 ds ~ ds b16 ( cs )
  | e8. e16 ~ e b fs'8 ~ fs8 gs ~ gs e16 ( fs )
  | b8. b16 ~ b fs b8 ~ b16 b8 fs16 b8 a16 ( b )
  | e8. e16 ~ e b e,8 ~ e16 e8 b16 e,8 r
}

bridge = \relative e' {
  | R1 * 2
  | R1 * 4

  \tag #'album \pageBreak

  | r8 e b' ^\markup \tiny "B" e, ~ e4 b'8 e, ~
  | e8 e b' e, ~ e4 b'8 e, ~
  | e8 e b' e, ~ e4 b'8 e, ~
  | e8 e b' e, ~ e4 b'8 e, ~

  | e8 e b' e, ~ e4 b'8 e, ~
  | e8 e b' e, b' e, b' e, ~

  % TODO add gliss to rest
  | e1
  | R1
}

mattressBass = \relative a, {
  \key e \major
  \time 4/4
  \clef "bass"

  \verseOne

  \key g \major
  \bar "||"

  \chorus

  \key d \major
  \bar "||"

  \postChorus

  \key e \major
  \bar "||"

  \verseTwo

  \key g \major
  \bar "||"

  \chorus

  \key d \major
  \bar "||"

  \postChorus

  \key a \major
  \bar "||"

  \bridge

  \key d \major
  \bar "||"

  \end

  \bar "|."
}
