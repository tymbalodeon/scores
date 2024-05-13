\version "2.25.13"

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
  r4 r8 g

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
  | <d d>4. -> <d d>8 -> ~ <d d>4 <d d> -> ~

  \time 3/4

  | <d d>2.

  \time 4/4

  | c4 b a8 ( g4 ) d8 ~
  | d1
  | c'4 b a8 ( g4 ) a8 ~
  | a8 ( b ) a ( g ) e d4.

  | r8 d'4 ( c16 ) ( b ) d4 c8 ( b )
  | c8. ( b ) a8 ( g4 ) r
  | r8 d'4 ( c16 ) ( b ) d4 c8 b
  | c8. c' ( b8 ) g4 r

  | R1
  | r4 r8 g ~ g fs4 \harmonic d8 \harmonic ~
  | d1 \harmonic ~
  | d1 \harmonic

  | g1 ~
  | g4. b8 \harmonic ~ b \harmonic g4 \harmonic a8 \harmonic ~
  | a8 \harmonic d4. \harmonic ~ d2 \harmonic
  | d,8 ( b4 ) b8 ( d2 )
  | b1
  | R1

  | <d d>4 <d d>8 <d d> <d d> <d d> <d d> <d d>
  | <d d>2 ~ <d d>4. <d d>8 ~
  | <d d>8 <d d> <d d> <d d> <d d> <d d> <d d> <d d>
  | <d d>2 ~ <d d>4. <d d>8 ~
  | <d d>8 <d d> <d d> <d d> <d d> <d d> <d d> <d d>
  | <d d>4. -> <d d>8 -> ~ <d d>4 <d d> -> ~

  \time 3/4

  | <d d>2.

  \time 4/4

  | c4 b a8 ( g4 ) d8 ~
  | d1
  | c'4 b a8 ( g4 ) a8 ~
  | a8 ( b ) a ( g ) e d4.

  | c'4 b a8 ( g4 ) a8 ~
  | a8 b4 a8 ~ a ( g4. )
  | c4 b a8 ( g4 ) a8 ~
  | a8 ( b ) a ( g ) e d4.

  \repeat volta 2 {
    | r8 d'4 ( c16 ) ( b ) d4 c8 ( b )
    | c8. ( b ) a8 ( g4 ) r
    | r8 d'4 ( c16 ) ( b ) d4 c8 ( b )

    \alternative {
      \volta 1 {
        | c8. c' b8 g4 r
      }

      \volta 2 {
        | c,8. c' b8 g4 r8 b,16 ( fs' ) (
      }
    }
  }

  | g8 ) d' b4 ~ b2
  | g8 ( a ) ( g ) e b' ( c ) ( b ) g
  | r8 b,16 ( fs' ) ( g8 ) d' b2
  | d8 d b b a a b4

  | r8 b,16 ( fs' ) ( g8 ) d' b2
  | g8 ( a ) ( g ) e b' ( c ) ( b ) g
  | r8 b,16 ( fs' ) ( g8 ) d' b2
  | d8 d b b a a b4

  \repeat volta 2 {
    | r8 b,16 ( fs' ) ( g8 ) b d ( b4. )
    | g8 ( a ) ( g ) e b' ( c ) ( b ) g
    | r8 b,16 ( fs' ) ( g8 ) d' b2
    | d8 d b b a a b 4
  }

  \repeat volta 2 {
    | d8 d b b a a b b
    | d8 d b b a a b b
    | d8 d b b a a b b
    | g8 g g g g g g g
  }

  | <d d>4. <d d>8 ~ <d d>4 <d d> ~
  | <d d>8 <d d>4. <d d>4 r
  | <cs cs>4. <cs cs>8 ~ <cs cs>4 <cs cs> ~
  | <cs cs>8 <cs cs>4. <cs cs>4 r

  | <g, d' g>1 \fermata

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
