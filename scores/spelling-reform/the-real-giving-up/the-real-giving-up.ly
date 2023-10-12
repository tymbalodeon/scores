\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "The Real Giving Up"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c'' {
    \key e \major
    \time 2/2

    | R1 * 7
    | e2 fs

    | gs1 ~
    | gs2 b (
    | gs1 ) ~
    | gs4 r8 cs ( e -. ) r b4

    | gs1 ~
    | gs4 r8 cs ( e -. ) r b4
    | gs2 ( e8 ) b'4. ~
    | b2 a4. gs8

    | e1 ~
    | e1 ~
    | e1 ~
    | e1

    | R1 * 4
    | R1 * 10
    | R1 * 8
    | R1 * 7
    | e2 fs

    | gs1 ~
    | gs2 b (
    | gs1 ) ~
    | gs4 r8 cs ( e -. ) r b4

    | gs1 ~
    | gs4 r8 cs ( e -. ) r b4
    | gs2 ( e8 ) b'4. ~
    | b2 a4. gs8

    | e1 ~
    | e1 ~
    | e1 ~
    | e1

    | R1 * 3
    | r8 e' b gs ( a gs4. )

    | R1 * 9
    | r8 cs gs fs e' b4. ~

    | b1 ~
    | b1
    | R1 * 5
    | r4 gs,8 ( a gs ) e4 e8 ~

    | e1 ~
    | e1
    | R1 * 6

    \repeat volta 3 {
      | a'8 ^\markup \italic "3x" ( gs ) e e' a, ( gs ) e gs
      \repeat unfold 3 {
        | a8 ( gs ) e e' a, ( gs ) e gs
      }
    }

    \repeat unfold 2 {
      | a8 ( gs ) e e' a, ( gs ) e gs
    }

    | gs1 ~
    | gs1 ~
    | gs1 ~
    | gs1

    | R1 * 4
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
