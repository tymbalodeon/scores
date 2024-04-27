\version "2.25.13"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Lobby"
  composer = "Ashley Cubbler"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
    \key c \major
    \time 6/8
    \clef "bass"
    
    | R2. * 7

    | g4. ~ g8 a16 ( b ) d ( e )
    | g8. fs e8 a,16 ( b ) d8
    | cs4 ~ cs16 a' e' ( fs ) e d, d'8
    | cs8. b a8 g16 fs e8

    | a,4 ~ a16 e' b' ( cs ) e,, fs g ( e )
    | a8. b cs e

    | d4 a8 d4 a'8
    | d4. ~ d8 d16 a d,8

    | g,4 b8 \glissando g'' fs e
    | d8 a,16 ( b ) d ( e ) g8 a16 b8.
    | cs,4 ~ cs16 a' e' ( fs ) e d, d'8
    | cs8. b a8 g16 fs e8

    | a,4 ~ a16 e' b' ( cs ) e,, fs g ( e )
    | a8. b cs e
    | a'16 a,, a a'' a,, a b'' a,, a b'' a,, a
    | g''16 a,, a g'' a,, a fs''8 e d
    | e16 a,, a e'' a,, a e''8 a,,16 b cs8

    | d4 a8 d4 a'8
    | d4. ~ d8 d16 a d,8

    | f,2.
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
