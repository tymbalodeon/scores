\version "2.25.13"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Lobby"
  composer = "Ashley Cubbler"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
    \key d \major
    \time 6/8
    \clef "bass"
    
    | R2. * 7

    | g4. ~ g8 a16 ( b ) d ( e )
    | g8. fs e8 a,16 ( b ) d8
    | cs8. a'16 e' ( fs ) ( e ) d, a' ( b ) d d,
    | cs'8. b a8 g16 fs e8

    | a,4 ~ a16 e' b' ( cs ) e,, ( fs ) ( g ) ( e )
    | a8. b cs e

    | d4 a8 d4 a'8
    | d4. ~ d8 d16 a d,8 \glissando

    | g,4 b8 \glissando g'' fs e
    | d8 a,16 ( b ) d ( e ) g8 a16 ( b8. ) \glissando
    | cs,8. a'16 e' ( fs ) ( e ) d, a' ( b ) d d,
    | cs'8. b a8 g16 fs e8

    | a,4 ~ a16 e' b' ( cs ) e,, ( fs ) ( g ) ( e )
    | a8. b cs e
    | a'8 a,,16 a''8 a,,16 b''8 a,,16 b''8 a,,16
    | g''8 a,,16 g''8 a,,16 fs''8 e d
    | e8 a,,16 e''8 a,,16 e''8 a,,16 b cs8

    | d4 a8 d4 a'8
    | d4. ~ d8 d16 a d,8

    \bar "||"
    \key g \major

    | f,4. ~ f8 f g
    | a8. e' a8. e16 a,8
    | g8. g' b,16 b8 b8 g16
    | d'8. d8 g,16 g'8 e d

    | g,8. g8 ( e16 ) ( g16 ) g8 g ( e16 ) (
    | g16 ) g g g8 ( e16 ) ( g ) a ( b ) d g ( a )
    | fs'16 fs fs d ( d, ) d fs' fs fs d ( d, ) d
    | fs'16 d ( d, ) a'' d, ( d, ) fs' d d, a'' c, ( b )

    | a8. e,16 fs ( g ) a8 b c
    | e8. e, fs g
    | a16 c'8 a, e16 a8 g fs
    | e8 g'' fs e b e,

    \bar "||"
    \key d \major

    | a,4 ~ a16 e' b' ( cs ) e,, ( fs ) ( g ) ( e )
    | a8. b cs e
    | a'8 a,,16 a''8 a,,16 b''8 a,,16 b''8 a,,16
    | g''8 a,,16 g''8 a,,16 fs''8 e a,

    | d,4 a8 d4 a'8
    | d2.

    | R2. * 2

    | g,,4 b8 \glissando g'' fs e
    | d8 a,16 ( b ) d ( e ) g8 a16 ( b8. ) \glissando
    | cs,8. a'16 e' ( fs ) ( e ) d, a' ( b ) d d,
    | cs'8. b a8 g16 fs e8

    | a,4 ~ a16 e' b' ( cs ) e,, ( fs ) ( g ) ( e )
    | a8. b cs e

    | d4 a8 d4 a'8
    | d4. ~ d8 d16 a d,8 \glissando

    | g,4 b8 \glissando b'' a g
    | fs8. e16 d8 cs b a
    | cs,8. a'16 e' ( fs ) ( e ) d, a' ( b ) d d,
    | cs'8. b a8 g16 fs e8

    | a,4 ~ a16 e' b' ( cs ) e,, ( fs ) ( g ) ( e )
    | a8. b cs e
    | a'8 a,,16 a''8 a,,16 b''8 a,,16 b''8 a,,16
    | g''8 a,,16 g''8 a,,16 fs''8 e d
    | e8 a,,16 e''8 a,,16 e''8 a,,16 b cs8

    | d4 a8 d4 a'8
    | d4. ~ d8 d16 a d,8

    \bar "||"
    \key g \major

    | f,4. ~ f8 f g
    | a8. e' a8. e16 a,8
    | g8. g' b,16 b8 b8 g16
    | d'8. d8 g,16 g'8 e d

    | g,8. g8 ( e16 ) ( g16 ) g8 g ( e16 ) (
    | g16 ) g g g8 ( e16 ) ( g ) a ( b ) d g ( a )
    | fs'16 fs fs d ( d, ) d fs' fs fs d ( d, ) d
    | fs'16 d ( d, ) a'' d, ( d, ) fs' d d, a'' c, ( b )

    | a8. e,16 fs ( g ) a8 b c
    | e8. e, fs g
    | a16 c'8 a, e16 a8 g fs
    | e8 g'' fs e b e,
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
