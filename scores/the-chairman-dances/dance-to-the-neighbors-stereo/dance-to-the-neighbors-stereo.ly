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
    | e8 e' b r r2
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
