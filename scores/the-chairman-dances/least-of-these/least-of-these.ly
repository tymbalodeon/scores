\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Least of These"
  subtitle = "The Chairman Dances"
  composer = "Eric Krewson"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
    \key c \major
    \time 4/4
    \clef "bass"

    | R1 * 2

    | R1 * 7
    | r4. bf8 bf'8 a g f

    | f,2 g
    | a1
    | <bf f'>1
    | d2 f4 g

    | f,2 g
    | a1
    | <bf f'>2. bf4
    | bf'4 a g f

    | f,2 g
    | a1
    | <bf f'>1
    | d2 f4 e,

    | f2 g
    | a1
    | <bf f'>2. bf4
    | bf'4 a g8 f e d

    | c4 c2 g4
    | e2 a4 c
    | d4 d2 a4
    | d2 g8 f e d

    | c4 c4 ~ c4. g8
    | c2 e,

    | R1 * 8
    | R1 * 16

    | a8 -. a -. a -. a -. a -\markup \italic "sim." a a e'
    | a8 a a a a a a e

    | g8 g g g g g g g
    | g8 g g g g g g d

    | g,8 g g g g g g g
    | g8 g g g g g g g

    | a8 e a e a e a e
    | a8 e a e a e a e
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
