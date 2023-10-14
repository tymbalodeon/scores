\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "What's So Hard About Pretending"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c'' {
    \key fs \major
    \time 2/2

    | R1 * 4
    | R1 * 8

    | R1 * 7
    | cs2 ds2
    | fs,1 ~
    | fs1

    | R1 * 7

    | R1 * 2

    | r2 fs'4 ( as ) ~
    | as2 cs,4 ( fs ) ~
    | fs1
    | R1

    | r2 fs4 ( as ) ~
    | as2 cs4 ( fs, ) ~
    | fs1
    | R1

    | R1 * 9

    | R1 * 17

    | R1 * 2

    | r2 \ottava #1 fs'4 as ~
    | as2 cs,4 fs ~
    | fs1 \ottava #0
    | R1

    | r2 \ottava #1 fs4 as ~
    | as2 cs4 fs, ~
    | fs1 \ottava #0
    | R1

    | R1 * 5
    | r2 r4 as, ~
    | as1 ~
    | as1 ~
    | as1

    | R1 * 2
    | r2 r4 b,8 as
    | r8 gs r fs r gs r as ~

    | as4 fs ~ fs2 ~
    | fs1
    | R1
    | fs'8 es4 ds8 ~ ds cs4 as8 ~

    | as4 fs4 ~ fs2 ~
    | fs1
    | R1
    | r2 as4. ( b8 ) (

    | as1 )
    | R1 * 2
    | as'1
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
