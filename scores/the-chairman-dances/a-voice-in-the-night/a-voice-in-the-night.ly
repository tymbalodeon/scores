\version "2.25.5"

\include "settings.ily"

\header {
  title = "A Voice In The Night"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

verse_base = \relative f {
  \repeat volta 3 {
    | f4 -. f -- ef -. ef --
    | c4 ^\markup \italic "sim." c bf bf
    | af2. ef'8 af ~

    \alternative {
      \volta 1 {
        | af4. af8 ( bf ) bf ef, e
      }

      \volta 2 {
        | af8 \repeatTie g af bf c bf, c ef
      }

      \volta 3 {
        | af8 \repeatTie af g4 ef af,8 g
      }
    }
  }

  | f4 f ef'8 bf' ef,4
  | c8 ef f bf, ~ bf c8 bf4
}

verse_main = \relative af {
  \verse_base

  | af2. ef'8 af ~
  | af1

}

riff_base = \relative f' {
    | \ottava #1
    f8 bf c ef, ~ ef f ef4
    \ottava #0
    | \acciaccatura { bf8 ( } c ) ef f bf, ~ bf c bf4
}

riff_first_ending = \relative af {
  | af2 ~ af8 ef'4 d8 ~
  | d8 c bf g af bf ef, f
}

riff = \relative f' {
  \repeat volta 2 {
    \riff_base

    \alternative {
      \volta 1 {
        \riff_first_ending
      }

      \volta 2 {
        | af1 ~
        | af8 ef' d c bf af ef e
      }
    }
  }
}


riff_end = \relative af {
  \repeat volta 2 {
    \riff_base

    \alternative {
      \volta 1 {
        \riff_first_ending
      }

      \volta 2 {
        | af2 ~ af8 \acciaccatura { f' } g4 f8 ~
        | f ef d c bf af ef e
      }
    }
  }
}

music = \relative c {
  \clef "bass"
  \tempo 4 = 120
  \key af \major

  | R1 * 7

  | r2 r4 ef8 e
  \verse_main

  \riff

  \verse_main

  | \ottava #1
    <f af'>4 <f af'> <ef g'> <ef g'>
    \ottava #0
  | <c ef'>4 <c ef'> <bf d'> <bf d'>
  | <af c'>1 ~
  | <af c'>1

  | \ottava #1
    <f' af'>8 bf' <f, af'> g' ~ <ef, g'>4 <ef g'>
    \ottava #0
  | <c ef'>8 f' <c, ef'> d' ~ <bf, d'> c' bf4
  | <af, c'>1 ~
  | <af c'>1

  | \ottava #1
    <f' c''>4 <f c''> <ef bf''> <ef bf''>
    \ottava #0
  | <c g''>4 <c g''> <bf f''> <bf f''>
  | <af ef''>1 ~
  | <af ef''>2 af4 g4

  | <f af''>4 -+ <f af''> -+ <ef' g'> -+ <ef g'> -+
  | <c ef''>4 -+ <c ef''> -+ <bf d''> -+ <bf d''>4 -+
  | <af c''>1 ~ -+ ~
  | <af c''>2. ef'4 ^"Solo"

  | af1 ~
  | af4. af8 \tuplet 3/2 { af4 bf4 af4 }
  | g2 ~ g8 af8 g4
  | f2. f4

  | \ottava #1
    af'1 ~
  | \tuplet 3/2 { af4 g4 af4 } \tuplet 3/2 { bf4 af4 g8 af8 }
  | g2 ~ g8 bf,8 \tuplet 3/2 { c8 ef8 g8 }
  | \tuplet 3/2 { af8 bf8 af8 } \tuplet 3/2 { g8 f8 ef8 } d8 ef8 f8 ef8

  | af,2 ~ af8 g'16 af16 ~ af16 g16 af8
  | \tuplet 3/2 { af4 \acciaccatura { d8 * 3/2 } ef4 ef4 } \tuplet 3/2 { ef4 d4 c4 }
  | c8. d16 ~ d8 bf8 ~ bf4. c8
  | \tuplet 3/2 { c8 bf8 af8 } g8 af8 bf8 c8 bf8 g8

  | ef2 ~ ef8 d8 ef8 f8
  | g8 af8 bf8 c8 bf8 af8 g8 af8
  | g2. af,8 bf8
  | c8 d8 ef8 f8 g8 af8 bf8 c8

  | \ottava #0
    bf,,8 bf8 bf8 bf8 bf8 bf8 bf8 f'8
  | bf8 bf8 bf8 bf8 bf8 bf8 bf8 f8
  | bf8 c8 d4 d8 ef8 f4
  | \ottava #1
    <bf, d'>1 ~
  | <bf d'>1
    \ottava #0

  \riff_end
  \verse_base

  r4 <af, c''>2. ~ -+
  <af c''>1

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
