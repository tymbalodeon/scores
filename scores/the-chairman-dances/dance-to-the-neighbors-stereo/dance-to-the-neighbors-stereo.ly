\version "2.25.22"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "Dance to the Neighbor's Stereo"
    subtitle = "The Chiarman Dances"
    composer = "Eric Krewson"
    arranger = "Ben Rosen, bass"
}

verseOne = \relative fs {
    | fs8 r fs r fs cs fs cs
    | e8 r e r e b e b
    | fs' r fs r fs cs fs cs
    | e8 r e r e b e b

    | fs'8 r fs r fs cs fs cs
    | e8 r e r e e a as
    | b8 fs b,4 b'8 fs b, c
    | cs!8 cs cs cs cs cs cs cs

    | fs8 r fs r fs cs' fs, cs'
    | e,8 r e r r b' r b
    | fs8 r fs r fs cs' fs, cs'
    | e,8 r e r r b r b

    | fs'8 r fs r fs cs fs cs
    | e8 r e r e e a as
    | b8 fs b,4 b'8 fs b, c
    | cs!8 cs' cs, cs cs' cs, cs cs'
}

chorusBase = \relative fs, {
    | fs8 fs' fs, r fs fs' fs, fs'
    | e,8 e' e, r r e' e, e'
    | fs,8 fs' fs, r fs fs' fs, fs'
    | a, a' gs, gs' fs, fs' e, e'

    | fs,8 fs' fs, r fs fs' fs, fs'
    | e,8 e' e, r e e a' as
    | b8 fs b,4 b'8 fs b, c
}

chorusOne = \relative cs {
    \chorusBase

    | cs!8 cs' cs, cs cs cs' cs, cs'
}

chorusTwo = \relative cs {
    \chorusBase

    | cs!8 cs cs cs cs cs cs cs
}

verseTwo = \relative fs {
    | fs8 fs'16 fs cs8 e16 e fs8 e cs fs,
    | e8 e' b r r2
    | fs8 fs'16 fs cs8 e16 e fs8 e cs fs,
    | e8 e' b r r e b e,

    | fs8 fs'16 fs cs8 e16 e fs8 e cs fs,
    | e8 e' b r e e, a as
    | b8 fs b,4 b'8 fs b, c
    | cs!8 cs cs cs cs cs cs cs
}

outro = \relative e {
    | R1 * 3
    \pageBreak
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
}

outroInstrumental = \relative d {
    | d4 a'8 \acciaccatura d16 e8 ~ e d cs d
    | cs8 a e \acciaccatura a16 b8 ~ b a e es
    | fs cs' r \acciaccatura fs16 gs8 ~ gs gs fs4
    | e,8 e d d cs cs b ( a )

    | d4. a'8 ~ a d ( e ) d
    | cs8 a e a, ~ a a gs4
    | fs4 r8 fs' ~ fs cs fs, cs'
    | e,8 e fs fs gs gs b cs

    | <d a'>4 r8 <d a'>8 ~ <d a'> <d a'> <d a'>4
    | <a cs'>1
}

danceToTheNeighborsStereoBass = \relative c {
    \key fs \major
    \clef "bass"

    \verseOne
    \chorusOne
    \verseTwo
    \chorusTwo

    \bar "||"
    \key a \major

    \outro
    \outroInstrumental

    \bar "|."
}

% \score {
%     \new Staff \with {
%         instrumentName = "Bass"
%         \numericTimeSignature
%     } {
%         \compressMMRests
%         \danceToTheNeighborsStereoBass
%     }
% }
