\version "2.25.15"

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
  | g'8\2-3 _\markup \italic "distortion" ( fs-1 \laissezVibrer ) d\3-1 \laissezVibrer a\4-1 ~ a2 ~
  | a2 ~ a4. e8\5-3 ( \glissando
  | fs ) a\4-1 <a\4 d\3> <a cs> ~ <a-2 cs-1>4 r
  | <a\4 a'\2>8 \downbow <a a'> \downbow <a a'> <a a'> <a a'> <a a'> <a a'> <a a'> \repeat unfold 3 {
    | <a a'>8 <a a'> <a a'> <a a'> <a a'> <a a'> <a a'> <a a'>
  }

  | <a a'>1
  | g'8 ( fs \laissezVibrer ) d \laissezVibrer a ~ a2 ~
  | a2 ~ a4. e8 ( \glissando
  | fs ) a <a d> <a cs> ~ <a cs>4 r

  \repeat unfold 3 {
    | <a a'>8 <a a'> <a a'> <a a'> <a a'> <a a'> <a a'> <a a'>
  }

  | <a a'>8 <a a'> <a a'> <a a'> <a a'> <a a'> <a a'> r

  | R1 * 2
  | \acciaccatura <e' e (>16 <e fs )>8 <e e> <d e> <cs e> ~ <cs e> <cs e> r <a' e'>
  | r <a d> r <a cs> ~ <a cs>2

  \repeat volta 3 {
    | \acciaccatura <e e (>16 <e fs )>8 ^\markup \italic "3x" <e e> <d e> <cs e> ~ <cs e> r4
    << { d8 ~ | d4 } \\ { cs8 ( | d cs ) } >>
    b <a, e' a cs> ^\markup {
      \fret-diagram-terse "x;o;2;2;2;o;"
    } ~ <a e' a cs>2
    | \acciaccatura <e'' e (>16 <e fs )>8 <e e> <d e> <cs e> ~ <cs e> <cs e> r <a' e'>
    | r <a d> r <a cs> ~ <a cs>2
  }

  | R1 * 8

  \repeat volta 5 {
    | <a, a'>8 <a a'> <a a'> <a a'> <a a'> <a a'> <a a'> \xNotesOn <a a'>16 <a a'> \xNotesOff
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

  \new Voice \with {
    \consists Pitch_squash_engraver
  } {
    \improvisationOn

    \repeat volta 6 {
      | g8 ^\markup {
        \fret-diagram-terse "3;2;o;o;3;3;"
      } _\markup \italic "clean" g g e ^\markup {
        \fret-diagram-terse "o;2;2;o;o;o;"
      } ~ e e e \xNote e

      \alternative {
        \volta 1,2,3,4,5 {
          | d8 ^\markup {
            \fret-diagram-terse "x;x;o;2;3;2;"
          } d d a ^\markup {
            \fret-diagram-terse "x;o;2;2;2;o;"
          } ~ a a a \xNote a
        }

        \volta 6 {

          | d8 ^\markup {
            \fret-diagram-terse "x;x;o;2;3;2;"
          } d d a ^\markup {
            \fret-diagram-terse "x;o;2;2;2;o;"
          } ~ a2
        }
      }
    }
  }

  \bar "|."
}

\score {
  <<
    \new ChordNames {
      \chords {
        | s1 * 45
        | g4. e8:m s2
        | d4. a8 s2
        | d4. a8 s2
      }
    }

    \new Staff \with {
      instrumentName = "Guitar"
      \numericTimeSignature
    } {
      \compressMMRests
      \music
    }
  >>
}
