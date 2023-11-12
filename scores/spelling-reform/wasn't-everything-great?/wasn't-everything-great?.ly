\version "2.25.10"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Wasn't Everything Great?"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c'' {
  \key g \major
  \time 4/4

  | R1 * 8
  | R1 * 8

  | \new CueVoice {
    <c e>2 <b d>
    | <a c>2 <g b>
    | <fs a>1
  }
  | R1

  \repeat volta 2 {
    | R1
    | g8 ( fs4 ) e8 ~ e ( d ) b g ~
    | g1
    | g'8 ( fs4 ) e8 r d4 d8 ~

    | d1
    | g8 ( fs4 ) e8 r d4 r8
    | <g g'>4. ( <a a'>8 ) <a a'>4. ( <b b'>8 )
    | <b b'>4. ( <d d'>8 ) <d d'>2
  }

  | r8 b g d b' g d b'
  | g d b' g d b' g d
  | b' g d b' g d b' g
  | d b' g d b' g d b'

  | g d b' g d b' g d
  | b' g d b' g d b' g
  | d b' g d b' g d b'
  | g d b' g d b' g d

  | g1 ~
  | g1 ~
  | g1 ~
  | g1

  | R1 * 4

  | d'1
  | c2 ( b )
  | g1
  | a2 ( b )

  | g1
  | a2 ( b )
  | a1 ~
  | a2 b (

  | g1 ) ~
  | g1
  | R1
  | r8 b ( a ) ( g ) e g ( a ) b

  | g1 ~
  | g1
  | r8 a4 a8 ~ a2
  | r8 a4 a8 ~ a2

  \repeat volta 2 {
    | R1
    | g8 ( fs4 ) e8 ~ e ( d ) b g ~
    | g1
    | g'8 ( fs4 ) e8 r d4 d8 ~

    | d1
    | g8 ( fs4 ) e8 r d4 r8
    | <g g'>4. ( <a a'>8 ) <a a'>4. ( <b b'>8 )
    | <b b'>4. ( <d d'>8 ) <d d'>2
  }

  \repeat volta 2 {
    | r8 d16 ( e ) fs8 ( g ) b4 r8 d,16 ( e )
    | fs8 ( g ) b ( d ) d ( b ) a ( g )
    | r8 d16 ( e ) fs8 ( g ) d'4 r8 d,16 ( e )
    | fs8 ( g ) b ( d ) d ( b ) a ( g )

    | r8 d16 ( e ) fs8 ( g ) b4 r8 d,16 ( e )
    | fs8 ( g ) b ( d ) d ( b ) a ( g )

    \alternative {
      \volta 1 {
        | b1 \harmonic ~
        | b1 \harmonic
      }

      \volta 2 {
        | g1 ~
        | g1
      }
    }
  }

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
