\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Expiration Date"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c'' {
  \key d \major
  \time 4/4

  | R1 * 4

  | R1
  | g'8 ( fs ) d a ~ a2 ~
  | a2 ~ a4. e8 (
  | fs ) a <a d> <a cs> ~ <a cs>2

  \repeat unfold 3 {
    | d8 d d d d d d d
  }

  | d8 d d d d d d d

  | d1
  | g8 ( fs ) d a ~ a2 ~
  | a2 ~ a4. e8 (
  | fs ) a <a d> <a cs> ~ <a cs>2

  \repeat unfold 3 {
    | d8 d d d d d d d
  }

  | d8 d d d d d d r

  \repeat volta 4 {
    | \acciaccatura <cs ~ e>16 <cs fs>8 ^\markup \italic "4x" <cs e> <d e> <cs e> ~ <cs e> <cs e> r
    << { d8 ~ | d4 } \\ { cs8 ( | d cs ) } >>
    b <a, e' a cs> ~ <a e' a cs>2
    | \acciaccatura <cs' ~ e>16 <cs fs>8 <cs e> <d e> <cs e> ~ <cs e> <cs e> r <a' e'>
    | r <a d> r <a cs> ~ <a cs>2
  }

  | R1 * 8

  \repeat volta 5 {
    | <a a'>8 <a a'> <a a'> <a a'> <a a'> <a a'> <a a'> \xNotesOn <a a'>16 <a a'> \xNotesOff
    | <d d'>8 <d d'> r <cs cs'> ~ <cs cs'> <cs cs'> <cs cs'> \xNotesOn <cs cs'>16 <cs cs'> \xNotesOff
    | <a a'>8 <a a'> <a a'> <a a'> <a a'> <a a'> <a a'> \xNotesOn <a a'>16 <a a'> \xNotesOff

    \alternative {
      \volta 1,2,3,4 {
        | <fs fs'>8 <fs fs'> r <e e'> ~ <e e'> <e e'> <e e'> \xNotesOn <e e'>16 <e e'> \xNotesOff
      }

      \volta 5 {
        | <fs fs'>8 <fs fs'> r <e e'> ~ <e e'>2
      }
    }
  }

  | R1 * 4

  | g8 g g e ~ e e e e
  | d8 d d a ~ a a a a
}

\score {
  \new Staff \with {
    instrumentName = "Guitar"
    \numericTimeSignature
  } {
    \compressMMRests
    \music
  }
}
