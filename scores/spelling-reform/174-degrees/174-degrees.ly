\version "2.25.9"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "174 Degrees"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c'' {
  \key e \major
  \time 4/4

  \repeat volta 2 {
    | a8 gs'4 cs,8 fs4 cs8 ( e )
    | b8 b'4 e,8 gs4 e
    | a,8 b'4 gs8 gs4 fs8 ( e )
    | fs,8 e'4 a,8 gs'2
  }

  | R1 * 9

  | a,8 gs'4 cs,8 fs4 cs8 ( e )
  | b8 b'4 e,8 gs4 e
  | a,8 b'4 gs8 gs4 fs8 ( e )
  | fs,8 e'4 a,8 gs'2

  | R1 * 8

  | e1 ~
  | e1
  | gs1 ~
  | gs1

  | b2 fs
  | cs e ~
  | e1

  | R1

  | R1 * 8

  | e1 ~
  | e1
  | gs1 ~
  | gs1

  | R1 * 4

  \repeat unfold 4 {
    | \repeat unfold 2 { gs,16 ( b ) b ( cs ) b gs'8. }
  }

  | R1
  | gs,16 ( b ) cs8 e gs ~ gs4 b
  | e,1
  | ds8 ( e ) ( ds4 ) ~ ds2

  | a8 gs'4 cs,8 fs4 cs8 ( e )
  | b8 b'4 e,8 gs4 e
  | a,8 b'4 gs8 gs4 fs8 ( e )
  | fs,8 e'4 a,8 gs'2 \fermata

  \bar "|."
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
