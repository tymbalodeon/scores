\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Meriwether Lewis On The Divide"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c'' {
    \key fs \major
    \time 2/2

    | R1 * 4
    | R1 * 16
    | R1 * 16
    | R1 * 10
    | R1 * 4

    | R1 * 4
    | R1 * 6
    | r2 r4 r8 ds16 as ~
    | as2 gs

    | fs1 ~
    | fs1
    | R1 * 6

    | R1 * 3
    | r8 as b fs' ~ fs b,4 as8 ~
    | as b4 fs'8 ~ fs b,4 as8 ~

    | as1
    | R1 * 2
    | r8 as b fs' ~ fs b,4 gs'8 ~
    | gs cs,4 as'8 ~ as ( cs4 ) fs,8 ~
    | fs1

    | R1 * 3

    \tempo "slower"

    | R1 * 7
    | r2 r2 \fermata

    | R1 * 15
    | r2 r4 cs (

    | fs1 )
    | R1 * 3
    | r4 r8 \acciaccatura gs16 as8 ~ as2

    | R1 * 3
    | r4 r8 as ~ as4. fs'8 ~
    | fs4. cs8 ~ cs4 cs8 fs, ~

    | fs1 ~
    | fs4. fs16 ( cs ) ~ cs4 as8 gs ~
    | gs1 ~
    | gs1

    |
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
