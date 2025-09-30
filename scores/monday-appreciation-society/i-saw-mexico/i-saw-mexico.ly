\version "2.25.26"

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

  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet

  | <c g'>4. <c g'>8 ~ <c g'>4 <c g'>
  | R1
  | <c g'>4. <c g'>8 ~ <c g'>4 <c g'>
  | R1

  \mark \default

  | c4. \glissando g''8 ^\markup \tiny G ~ g4 b, \glissando
  | g,4 \glissando b' \glissando e, \glissando a
  | c,4. \glissando g''8 ~ g4 b, \glissando
  | g,4 \glissando d'' \glissando e, \glissando b' \glissando

  | c,4. \glissando g''8 ~ g b, ( a ) a,
  | g4 \glissando b'' ^\markup \tiny B \glissando e,, \glissando a' ^\markup \tiny A \glissando
  | c,,4. \glissando g''8 ^\markup \tiny G ~ g b, ( a ) a,
  | g4 \glissando d'' \glissando e, \glissando b' \glissando

  \mark \default

  \repeat volta 2 {
    | c,8 -> c c c -> c c c -> d
    | e8 b' ( d ) g, e, g a b
    | c8 -> c c c -> c c c -> d

    \alternative {
      \volta 1 {
        | e8 b' ( e ) d e,, g a b
      }

      \volta 2 {
        | e8 b' ( e ) d b e, e, g
      }
    }
  }

  % | c8 ^\markup \italic "sim." c c c c c c d
  % | e8 b' ( d ) g, e, g a b
  % | c8 c c c c c c d
  % | e8 b' ( e ) d b e, e, g

  \mark \default

  | a8 a a a a a a e
  | g a b e, ~ e4 e' \glissando
  | a,8 a a e a b c d
  | g, a b e, ~ e b' e4 \glissando

  | a,8 a a a c' b a e
  | g a b e, ~ e b e,4

  | c'4. c8 ~ c4 g ~
  | g1
  | c4. c8 ~ c4 g ~
  | g1

  | R1

  \mark \default

  | <c g'>4. <c g'>8 ~ <c g'>4 <c g'>
  | R1
  | <c g'>4. <c g'>8 ~ <c g'>4 <c g'>
  | R1

  \mark \default

  | c4. \glissando g''8 ~ g4 b, \glissando
  | g,4 \glissando b' \glissando e, \glissando a
  | c,4. \glissando g''8 ~ g4 b, \glissando
  | g,4 \glissando d'' \glissando e, \glissando b' \glissando

  | c,4. \glissando g''8 ~ g b, ( a ) a,
  | g4 \glissando b'' \glissando e,, \glissando a' \glissando
  | c,,4. \glissando g''8 ~ g b, ( a ) a,
  | g4 \glissando d'' \glissando e, \glissando b' \glissando

  \mark \default

  | c,8 -> c c c -> c c c -> d
  | e8 b' ( d ) g, e, g a b
  | c8 -> c c c -> c c c -> d
  | e8 b' ( e ) d e,, g a b

  | c8 ^\markup \italic "sim." c c c c c c d
  | e8 b' ( d ) g, e, g a b
  | c8 e g c, e, g a b
  | e8 b' ( g' ) e b e, e, g

  \mark \default

  | a8 a a e a a a e
  | g a b e, ~ e4 e' \glissando
  | a,8 a a e a b c d
  | g, a b e, ~ e b' e4 \glissando

  | a,8 a e'' d c b a e
  | g a b e, ~ e b e,4

  | c'4. c8 ~ c4 g ~
  | g1
  | c4. c8 ~ c4 g ~
  | g1

  | c4. e8 ~ e4 g ~
  | g1
  | R1 * 2
  % | c,4. e,8 ~ e4 g ~
  % | g1

  \mark \default

  % | R1 * 8
  | R1 * 4

  \mark \default

  \repeat volta 2 {
    | c,8 c c c c e g a
    | g,8 g g g g b d e
    | c8 c c c c e g a
    | g,8 g g g g b d e
  }

  \mark \default

  \repeat volta 2 {
    | r8 -\markup \box 3x d'' ^\markup \tiny D b ^\markup \tiny B g ^\markup \tiny G ~ g \glissando a,,4 e8
    | g8 \glissando b'' ^\markup \tiny B e, ( d ) ~ d b ( g4 )
    | r8 d'' b g ~ g \glissando a,,4 e8
    | g8 \glissando b'' e, ( d ) ~ d b ( g4 )
  }

  | r8 -\markup \box 3x d'' ^\markup \tiny D b ^\markup \tiny B g ^\markup \tiny G ~ g \glissando a,,4 e8
  | g1

  % | r8 d'' b g ~ g \glissando a,,4 e8
  % | g8 \glissando b'' e, ( d ) ~ d b ( g4 )
  % | r8 g' c, ( b ) ~ b \glissando a,4 e8
  % | g8 \glissando e'' a, ( g ) e, g a b

  % | c8 c c c c e g a
  % | g,8 g g g g b d e
  % | c8 c c c c e g a
  % | g,8 g g g g b d e

  % | c8 c c e e g g a
  % | b1

  \bar "|."
}

\score {
  #(set-global-staff-size 17)

  \new Staff \with {
    instrumentName = "Bass"
    \numericTimeSignature
  } {
    \compressMMRests
    \music
  }
}
