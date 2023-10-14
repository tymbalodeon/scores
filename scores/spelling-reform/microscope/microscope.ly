\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Microscope"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative g'' {
    \key g \major
    \time 4/4

    \partial 2
    | r4 r8 g

    | e2 ~ e4 r8 g
    | d2 ~ d4 r8 g
    | b2 ~ b4 r8 d,
    | g2 ~ g4 r8 g

    | e2 ~ e4 r8 g
    | d2 ~ d4 r4
    | d8 ( e ) g d ( e ) g d ( e )
    | g8 d ( e ) g a g e d
    | d8 ( e ) g d ( e ) g d ( e )
    | g8 d ( e ) g a4 b

    | r4 <d, d>8 <d d> <d d> <d d> <d d> <d d>
    | <d d>2 ~ <d d>4. <d d>8 ~
    | <d d>8 <d d> <d d> <d d> <d d> <d d> <d d> <d d>
    | <d d>2 ~ <d d>4. <d d>8 ~
    | <d d>8 <d d> <d d> <d d> <d d> <d d> <d d> <d d>
    | <d d>4. <d d>8 ~ <d d>4 <d d> ~

    \time 3/4

    | <d d>2.

    \time 4/4

    | c4 b a8 g4 d8 ~
    | d1
    | c'4 b a8 g4 a8 ~
    | a8 b a g e d4.

    | r8 d'4 c16 b d4 c8 b
    | c8. b a8 g4 r
    | r8 d'4 c16 b d4 c8 b
    | c8. c' b8 g4 r

    | R1 * 8

    | r4 <d d>8 <d d> <d d> <d d> <d d> <d d>
    | <d d>2 ~ <d d>4. <d d>8 ~
    | <d d>8 <d d> <d d> <d d> <d d> <d d> <d d> <d d>
    | <d d>2 ~ <d d>4. <d d>8 ~
    | <d d>8 <d d> <d d> <d d> <d d> <d d> <d d> <d d>
    | <d d>4. <d d>8 ~ <d d>4 <d d> ~

    \time 3/4

    | <d d>2.

    \time 4/4

    \repeat volta 2 {
      | c4 b a8 g4 d8 ~
      | d1
      | c'4 b a8 g4 a8 ~
      | a8 b a g e d4.
    }

    \repeat volta 2 {
      | r8 d'4 c16 b d4 c8 b
      | c8. b a8 g4 r
      | r8 d'4 c16 b d4 c8 b
      | c8. c' b8 g4 r
    }
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
