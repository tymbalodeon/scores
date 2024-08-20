\version "2.25.17"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "Dance to the Neighbor's Stereo"
    subtitle = "The Chiarman Dances"
    composer = "Eric Krewson"
    arranger = "Ben Rosen, bass"
}

music = \relative c {
    \key fs \minor
    \clef "bass"

    | fs4 fs fs8 cs fs cs
    | e4 e e8 b e b
    | fs'4 fs fs8 cs fs cs
    | e4 e e8 b e b

    | fs'4 fs fs8 cs fs cs
    | e4 e e8 e a as
    | b8 fs b,4 b'8 fs b, c

    | cs!8 cs cs cs cs cs cs cs

    | fs4 fs fs8 cs' fs, cs'
    | e,4 e r8 b' r b
    | fs4 fs fs8 cs' fs, cs'
    | e,4 e r8 b r b

    | fs'4 fs fs8 cs' fs, cs'
    | e,4 e e8 e a as
    | b8 fs b,4 b'8 fs b, c
    | cs!8 cs' cs, cs cs' cs, cs cs'

    | fs,,8 fs' fs, r fs fs' fs, fs'
    | e,8 e' e, r r e' e, e'
    | fs,8 fs' fs, r fs fs' fs, fs'
    | a, a' gs, gs' fs, fs' e, e'

    | fs,8 fs' fs, r fs fs' fs, fs'
    | e,8 e' e, r e e a' as
    | b8 fs b,4 b'8 fs b, c
    | cs!8 cs' cs, cs cs cs' cs, cs'

    | fs,8 fs'16 fs cs8 e16 e fs8 e cs fs,
    | e8 e' b r r2
    | fs8 fs'16 fs cs8 e16 e fs8 e cs fs,
    | e8 e' b r r e b e,

    | fs8 fs'16 fs cs8 e16 e fs8 e cs fs,
    | e8 e' b r e e, a as
    | b8 fs b,4 b'8 fs b, c
    | cs!8 cs cs cs cs cs cs cs

    | fs,8 fs' fs, r fs fs' fs, fs'
    | e,8 e' e, r r e' e, e'
    | fs,8 fs' fs, r fs fs' fs, fs'
    | a, a' gs, gs' fs, fs' e, e'

    | fs,8 fs' fs, r fs fs' fs, fs'
    | e,8 e' e, r e e a' as
    | b8 fs b,4 b'8 fs b, c
    | cs!8 cs cs cs cs cs cs cs

    | R1 * 3
    | e8 e d d cs cs b ( a )

    | d4 r8 d ~ d d fs gs
    | a4 r8 a ~ a a gs4
    | fs4 r8 fs ~ fs cs e fs
    | e8 e d d cs cs b ( a )

    | d4 r8 d ~ d d fs gs
    | a4 r8 a ~ a e gs4
    | fs4 r8 fs ~ fs cs e fs
    | e8 e d d cs cs b ( a )

    | d4 r8 d ~ d d cs b
    | a4 r8 a ~ a a gs4
    | fs4 r8 fs' ~ fs cs e fs
    | e8 e d d cs cs b ( a )

    | d4 r8 d ~ d d fs gs
    | a4 r8 a ~ a a gs4
    | fs4 r8 fs ~ fs cs e fs
    | e8 e d d cs cs b ( a )

    | d4 r8 d ~ d d cs b
    | a4 r8 a ~ a a gs4
    | fs4 r8 fs' ~ fs cs fs, cs'
    | e,8 e fs fs gs gs b cs

    | d4 a'8 \acciaccatura d16 e8 ~ e d cs d
    | cs8 a e \acciaccatura a16 b8 ~ b a e es
    | fs cs' r
}

% \markup \vspace #0.5

\score {
    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \music
    }
}
