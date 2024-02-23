\version "2.25.13"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "I Saw Mexico"
  subtitle = "Monday Appreciation Society"
  composer = "Mark Rybaltowski"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
  \key g \major
  \time 4/4
  \clef "bass"

  | <c g'>4. <c g'>8 ~ <c g'>4 <c g'>
  | R1
  | <c g'>4. <c g'>8 ~ <c g'>4 <c g'>
  | R1

  | c4. g''8 ~ g4 b,
  | g,4 b' e, a
  | c,4. g''8 ~ g4 b,
  | g,4 d'' e, b'

  | c,4. g''8 ~ g b, ( a ) a,
  | g4 b'' e,, a'
  | c,,4. g''8 ~ g b, ( a ) a,
  | g4 d'' e, b'

  | c,8 c c c c c c d
  | e8 b' ( d ) g, e, g a b
  | c8 c c c c c c d
  | e8 b' ( e ) d e,, g a b

  | c8 c c c c c c d
  | e8 b' ( d ) g, e, g a b
  | c8 c c c c c c d
  | e8 b' ( e ) d b e, e, g

  | a8 a a a a a a e
  | g a b e, ~ e4 e'
  | a,8 a a e a b c d
  | g, a b e, ~ e b' e4

  | a,8 a a a c' b a e
  | g a b e, ~ e b e,4

  | c'4. c8 ~ c4 g ~
  | g1
  | c4. c8 ~ c4 g ~
  | g1

  | R1

  | <c g'>4. <c g'>8 ~ <c g'>4 <c g'>
  | R1
  | <c g'>4. <c g'>8 ~ <c g'>4 <c g'>
  | R1

  | c4. g''8 ~ g4 b,
  | g,4 b' e, a
  | c,4. g''8 ~ g4 b,
  | g,4 d'' e, b'

  | c,4. g''8 ~ g b, ( a ) a,
  | g4 b'' e,, a'
  | c,,4. g''8 ~ g b, ( a ) a,
  | g4 d'' e, b'

  | c,8 c c c c c c d
  | e8 b' ( d ) g, e, g a b
  | c8 e g c, e, g a b
  | e8 b' ( e ) d e,, g a b

  | c8 g c c c g c d
  | e8 b' ( d ) g, e, g a b
  | c8 e g c, e, g a b
  | e8 b' ( g' ) e b e, e, g

  | a8 a a e a a a e
  | g a b e, ~ e4 e'
  | a,8 a a e a b c d
  | g, a b e, ~ e b' e4

  | a,8 a e'' d c b a e
  | g a b e, ~ e b e,4

  | c'4. c8 ~ c4 g ~
  | g1
  | c4. c8 ~ c4 g ~
  | g1

  | c4. e8 ~ e4 g ~
  | g1
  | c,4. e,8 ~ e4 g ~
  | g1

  | R1 * 8
  | R1 * 2

  | r8 d''' b g ~ g a,,4 e8
  | g8 b'' e, ( d ) ~ d b ( g4 )
  | r8 d'' b g ~ g a,,4 e8
  | g8 b'' e, ( d ) ~ d b ( g4 )

  | r8 d'' b g ~ g a,,4 e8
  | g8 b'' e, ( d ) ~ d b ( g4 )
  | r8 g' c, ( b ) ~ b a,4 e8
  | g8 e'' a, ( g ) e, g a b

  | c8 c c c c e g a
  | g,8 g g g g b d e
  | c8 c c c c e g a
  | g,8 g g g g b d e

  | c8 c c e e g g a
  | b1

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
    \numericTimeSignature
  } {
    \compressMMRests
    \music
  }
}
