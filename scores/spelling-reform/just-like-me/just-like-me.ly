\version "2.25.13"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Just Like Me"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c'' {
  \key g \major
  \time 4/4

  \partial 2.
  r2.

  | R1 * 6
  | r2 r4 r8 d ~
  | d c4 b8 ~ b a b4 ~

  | b1 ~
  | b1
  | R1 * 3
  | r8 g16\3-0 \downbow e'\1-1 \upbow d8\2-2 \downbow g, \downbow e' \upbow g, \downbow d' g,
  | r8 g \upbow d'8 \downbow g, e' g, d' g,
  | r8 g d'8 g, e' d \upbow g, \upbow r

  | r2 g'8\2-2 ( fs-1 ) d\3-1 a\4-1 ~
  | a4 a8 g b d4 g,8 ~
  | g2 g'8 ( fs ) d a ~
  | a4 a8 g b d4 b8 ~

  | b2 g'8 ( fs ) d a ~
  | a4 a8 g b d4 d8 ~
  | d1
  | c2 b4 e

  | g1 ~
  | g1
  | R1 * 2

  | R1 * 3
  | e,8 ( g4 ) a8 ( b4 ) e,8 ( g )

  | R1 * 10

  | r8 g16\3-0 ( b-2 ) b\2-0 ( d-1 ) ( e8-3 ~ ) e d4 g,8 ~
  | g4 r8 g16 ( b ) b ( d ) ( e8 ~ ) e d ~
  | d b r8 g16 ( b ) b ( d ) ( e8 ~ ) e d ~
  | d4 r8 g,16 ( b ) b ( d ) ( e8 ~ ) e d ~

  | d g, r8 g16 ( b ) b ( d ) ( e8 ~ ) e d ~
  | d4 r8 g,16 ( b ) b ( d ) ( e8 ~ ) e d ~
  | d b r8 g16 ( b ) b ( d ) ( e8 ~ ) e d ~
  | d4.. e16-0 ( b'8-1 ) r16 e,16-0 ( d'8-3 ) r

  | R1 * 16

  \repeat volta 4 {
    | d,8 ^\markup \italic "4x" r d r d r d r

    | d8 r d r d r d r
    | d8 r d r d r d r

    \alternative {
      \volta 1,2,3 {
        | d8 r d r d r d r
      }

      \volta 4 {
        | d8 r d r d r d <c, g' c b>16 ^\markup {
          \fret-diagram-terse "x;5;5;5;o;x;"
        } <c g' c b>
      }
    }
  }

  | <c g' c b>4 r <g' g'>8 ^\markup {
    \fret-diagram-terse "x;x;5;x;x;5;"
  } ( <fs fs'> ) r <b, fs' a b> ^\markup {
    \fret-diagram-terse "x;4;4;1;o;x;"
  } ~
  | <b fs' a b>4 r <b b'>8 ^\markup {
    \fret-diagram-terse "x;5;x;5;x;x;"
  } ( <d d'> ) r <c g' c b> ~
  | <c g' c b>4 r <g' g'>8 ( <fs fs'> ) r <b, fs' a b> ~
  | <b fs' a b>4 r <b b'>8 ( <d d'> ) r <c g' c b> ~

  | <c g' c b>4 r <c d'>8 ( g'' ) r <d, e'> ~
  | <d e'>4 <d e'>8 <d e'>16 <d e'> <d e'>8 <c d'> r <c b'> ~
  | <c b'>4 r8 <b a'> ~ <b a'>4 r8 <c b'>
  | r <c d'> r <b a'> r <b a'> r <c b'>
  | r <c d'> r <d e'> ~ <d e'> <g g'> r <c, g' c> ~

  | <c g' c> <c g' c> <c g' c> <c g' c> <c g' c> <c g' c> <c g' c> <c g' c>
  | <c g' c> <c g' c> <c g' c> <c g' c> <c g' c> <c g' c> <c g' c> <cs g' g> ~
  | <cs g' g> <cs g' g> <cs g' g> <cs g' g> <cs g' g> <cs g' g> <cs g' g> <cs g' g>
  | <cs g' g> <cs g' g> <cs g' g> <cs g' g> <cs g' g> <cs g' g> <cs g' g> r

  \repeat volta 4 {
    | d'8 ^\markup \italic "4x" d d d d d d d
    | d8 d d d d d d d
    | d8 d d d d d d d

    \alternative {
      \volta 1,2,3 {
        | d8 d d d d d d d
      }

      \volta 4 {
        | d8 d d d d d d <c, d'>16 <c d'>
      }
    }
  }

  \repeat volta 2 {
    | <c d'>4 <c d'> <c d'>8 <c d'> <c d'> <a d'> ~
    | <a d'>8 <a d'>4 <a d'>8 <a d'> <a d'> <a d'> <a d'>
    | <g d''>4 <g d''> <g d''>8 <g d''> <g d''> <a d'> ~
    | <a d'>8 <a d'>4 <a d'>8 <a d'> <a d'> <a d'> <a d'>
  }

  | <c d'>8 <c d'> <c d'> <c d'> <c d'> <c d'> <c d'> <a d'>
  | <a d'>8 <a d'> <a d'> <a d'> <a d'> <a d'> <a d'> <a d'>
  | <g d''>8 <g d''> <g d''> <g d''> <g d''> <g d''> <g d''> <g d''>
  | <g d''>8 <g d''> <g d''> <g d''> <g d''> <g d''> <g d''> <g d''>

  | <c d'>8 <c d'> <c d'> <c d'> <c d'> <c d'> <c d'> <a d'>
  | <a d'>8 <a d'> <a d'> <a d'> <a d'> <a d'> <a d'> <a d'>
  | <b d'>8 <b d'> <b d'> <b d'> <b d'> <b d'> <b d'> <c d'>
  | <c d'>8 <c d'> <c d'> <c d'> <c d'> <c d'> <c d'> <c d'>

  | <g c g' d'>1 ^\markup {
    \fret-diagram-terse "5;5;5;7;x;x;"
  } \fermata

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = \markup {
      \center-column {
        "Guitar"
        \tiny \line { "D G D G B D"  }
      }
    }
    \numericTimeSignature
  } {
    \compressMMRests
    \music
  }
}
