\version "2.25.13"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Ciggy"
  composer = "Ashley Cubbler"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
    \key af \major
    \time 4/4
    \clef "bass"

    | R1 * 4

    | R1 * 8

    | ef16 ( f ) f bf, ( c ) c c ef f c f g ( af ) ( g ) f8 
    | af,4 af' af,8 af4 r8

    | f''8. f16 ef8. ef16 df8. df16 c4
    | bf8 af4 f8 ~ f ef df16 c bf8
    | r4 af'4 \glissando af,8 af4 r8

    | r4. c8 \glissando af'4 bf
    | af4. ef8 gf' f ef df 
    | c2 r4 ef, \glissando

    | af,2 af8 af4.
    | af2 af8 af4.
    | df4. af'8 df8 df4 af8
    | df,4 ef ff ff,

    | af2 \glissando af'8 af4 ef8
    | af,4. c8 \glissando bf'4 c
    | df,4. af'8 df8 df4 df,8
    | ff'4 ef df8 c bf af 

    | ef16 ( f ) f bf, ( c ) c c ef f c f g ( af ) ( g ) f8 
    | af,4 af' af,8 af4 r8

    | f''8. f16 ef8. ef16 df8. df16 c4
    | bf8 af4 f8 ~ f ef df16 c bf8
    | r4 af'4 \glissando af,8 af4 r8

    | r4. c8 \glissando af'4 bf
    | af4. ef8 gf' f ef df 
    | c2 r4 r8 ef,

    | af8 ef'16 af af ef8.

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
