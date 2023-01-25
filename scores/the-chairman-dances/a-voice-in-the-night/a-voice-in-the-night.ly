\version "2.24.0"

\include "settings.ily"

\header {
  title = "A Voice In The Night"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

riff = \relative f' {
  | \ottava #1
    f8 bf c ef, ~ ef f ef4
    \ottava #0
  | \acciaccatura { bf8 ( } c ) ef f bf, ~ bf c bf4
  | af2 ~ af8 ef'4 d8 ~
  | d8 c bf g af bf ef, f

  | f'8 bf c ef, ~ ef f ef4
  | \acciaccatura { bf8 ( } c ) ef f bf, ~ bf c bf4
  | af1 ~
  | af8 ef' d c bf af ef e

}

music = \relative c {
  \clef "bass"
  \tempo 4 = 120
  \key af \major

  | R1 * 7

  | r2 r4 ef8 e

  \repeat volta 3 {
    | f4 f ef ef
    | c4 c bf bf
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

  | f4 f ef'8 bf' ef,
    \once \override NoteHead.style = #'cross af,
  | c8 ef f bf, ~ bf c8 bf4
  | af2. ef'8 af ~
  | af1

  \riff

  f4 f4 ef4 ef4
  c4 c4 bf4 bf4
  af2. ef'8 af8 ~
  af4. af8 bf8 bf8 ef,8 e8
  f4 f4 ef4 ef4
  c4 c4 bf4 bf4
  af2. ef'8 af8 ~
  af8 g8 af8 bf8 c8 bf,8 c8 ef8
  f4 f4 ef4 ef4
  c4 c4 bf4 bf4
  af2. ef'8 af8 ~
  af8 af8 g4 ef4 af,8 g8
  f4 f4 ef'8 bf'8 ef,8 \once \override NoteHead.style = #'cross af,8
  c8 ef8 f8 bf,8 ~ bf8 c8 bf4
  af2. ef'8 af8 ~
  af1
  <f af'>4 <f af'>4 <ef g'>4 <ef g'>4
  <c ef'>4 <c ef'>4 <bf d'>4 <bf d'>4
  <af c'>1
  <af c'>1
  <f' af'>8 bf'8 <f, af'>8 g'8 ~ <ef, g'>4 <ef g'>4
  <c ef'>8 f'8 <c, ef'>8 d'8 ~ <bf, d'>8 c'8 bf4
  <af, c'>1
  <af c'>1
  <f' c''>4 <f c''>4 <ef bf''>4 <ef bf''>4
  <c g''>4 <c g''>4 <bf f''>4 <bf f''>4
  <af ef''>1
  <af ef''>2 af4 g4 _\markup{ \tiny {R.H.} } _\markup{ \tiny {L.H.} }

  <f af''>4 -+ <f af''>4 -+ <ef' g'>4 -+ <ef g'>4 -+
  <c ef''>4 -+ <c ef''>4 -+ <bf d''>4 -+ <bf d''>4 -+
  <af c''>1 ~ -+ ~
  <af c''>2. ef'4
  af1 ~
  af4. af8 \times 2/3 {
    af4 bf4 af4 }

  g2 ~ g8 af8 g4
  f2. f4
  af'1 ~
  \times 2/3  {
    af4 g4 af4 }
  \times 2/3  {
    bf4 af4 g8 af8 }

  g2 ~ g8 bf,8 \once \omit TupletBracket
  \times 2/3  {
    c8 ef8 g8 }

  \once \omit TupletBracket
  \times 2/3  {
    af8 bf8 af8 }
  \once \omit TupletBracket
  \times 2/3  {
    g8 f8 ef8 }
  d8 ef8 f8 ef8
  af,2 ~ af8 g'16 af16 ~ af16 g16 af8
  \times 2/3  {
    af4 \acciaccatura { d8*3/2 ( } ef4 ) ef4 }
  \times 2/3  {
    ef4 d4 c4 }

  c8. d16 ~ d8 bf8 ~ bf4. c8
  \once \omit TupletBracket
  \times 2/3  {
    c8 bf8 af8 }
  g8 af8 bf8 c8 bf8 g8
  ef2 ~ ef8 d8 ef8 f8
  g8 af8 bf8 c8 bf8 af8 g8 af8
  g2. af,8 bf8
  c8 d8 ef8 f8 g8 af8 bf8 c8
  bf,,8 bf8 bf8 bf8 bf8 bf8 bf8 f'8
  bf8 bf8 bf8 bf8 bf8 bf8 bf8 f8
  bf8 c8 d4 d8 ef8 f4
  <bf, d'>1
  <bf d'>1

  \riff
  f4 f4 ef4 ef4
  c4 c4 bf4 bf4
  af2. ef'8 af8 ~
  af4. af8 bf8 bf8 ef,8 e8
  f4 f4 ef4 ef4
  c4 c4 bf4 bf4
  af2. ef'8 af8 ~
  af8 g8 af8 bf8 c8 bf,8 c8 ef8
  f4 f4 ef4 ef4
  c4 c4 bf4 bf4
  af2. ef'8 af8 ~
  af8 af8 g4 ef4 af,8 g8
  f4 f4 ef'8 bf'8 ef,8 \once \override NoteHead.style = #'cross af,8
  c8 ef8 f8 bf,8 ~ bf8 c8 bf4
  r4 _\markup{ \tiny {L.H.} } <af c''>2. ~ -+ ~ _\markup{ \tiny {R.H.}
                                                        }
  <af c''>1 \bar "."
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
