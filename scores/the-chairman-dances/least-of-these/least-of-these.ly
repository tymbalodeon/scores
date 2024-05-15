\version "2.25.15"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Least of These"
  subtitle = "The Chairman Dances"
  composer = "Eric Krewson"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
    \key f \major
    \time 4/4
    \clef "bass"

    | R1 * 2

    | R1 * 7
    | r4 r8 bf bf' a g f

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

    | a8 -. a -. a -. a -. a -. a -. a -- e' --
    | a8 -. a -. a -. a -. a -. a -. a -- e --

    | g8 -. g -. g -. g -. g -. g -. g -- d --
    | g,8 -. g -. g -. g -. g -. g -. g -- d' --

    | g,8 -. g -. g -. g -. g -. g -. g -- d' --
    | g,8 -. g  -. g -- d' -- g, -- d' -- g, -- gs --

    | a8 -. e -. a -. e -. a -. e -. a -. e -.
    | a8 -. e -. a -. e -. a -. e -. a -- e' --

    | a8 -. e -. a -. e -. a -. e -. a -. e -.
    | a8 -. e -. a -. e -. a -. c, -- e -- g --

    | d8 -. d -. d -. d -. d -. d -. d -- b --
    | g8 -. g -. g -. g -. g -. g -. g -- e --

    | g'8 -- f -- ( e -- ) f -- e -- d -- c -- bf --
    | e8 -- d -- c -- bf -- a -- g -- f -- g --

    | f1 ~
    | f1
    | <bf f'>1 ~
    | <bf f'>1

    | R1 * 4
    | R1 * 3
    | r4 r8 bf bf' a g f

    \repeat volta 2 {
      | f,4. f'8 g,4. g'8
      | a,2. a'4
      | <bf, f'>1 ~
      | <bf f'>4. bf8 bf' a g f
    }

    | f,4. f'8 g,4. g'8
    | a,1
    | <bf f'>1 ~
    | <bf f'>2. r4

    \bar "|."
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
