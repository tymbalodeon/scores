\version "2.25.20"

leastOfTheseBass = \relative c {
    \key f \major
    \time 2/4
    \clef "bass"

    | R2 * 2
    | R2 * 7

    | r8. bf16 bf' a g f

	\mark \default

    | f,4 g
    | a2
    | <bf f'>2
    | d4 f8 g

    | f,4 g
    | a2
    | <bf f'>4. bf8
    | bf'8 a g f

    | f,4 g
    | a2
    | <bf f'>2
    | d4 f8 e,

    | f4 g
    | a2
    | <bf f'>4. bf8
    | bf'8 a g16 f e d

    | c8 c4 g8
    | e4 a8 c
    | d8 d4 a8
    | d4 g16 f e d

    | c8 c8 ~ c8. g16
    | c4 e,

    | R2 * 4

	\mark \default

    | R2 * 16

	\mark \default

    | a16 -. a -. a -. a -. a -. a -. a -- e' --
    | a16 -. a -. a -. a -. a -. a -. a -- e --

    | g16 -. g -. g -. g -. g -. g -. g -- d --
    | g,16 -. g -. g -. g -. g -. g -. g -- d' --

    | g,16 -. g -. g -. g -. g -. g -. g -- d' --
    | g,16 -. g  -. g -- d' -- g, -- d' -- g, -- gs --

    | a16 -. e -. a -. e -. a -. e -. a -. e -.
    | a16 -. e -. a -. e -. a -. e -. a -- e' --

    | a16 -. e -. a -. e -. a -. e -. a -. e -.
    | a16 -. e -. a -. e -. a -. c, -- e -- g --

    | d16 -. d -. d -. d -. d -. d -. d -- b --
    | g16 -. g -. g -. g -. g -. g -. g -- e --

    | g'16 -- f -- ( e -- ) f -- e -- d -- c -- bf --
    | e16 -- d -- c -- bf -- a -- g -- f -- g --

    | f2 ~
    | f2
    | <bf f'>2 ~
    | <bf f'>2

    | R2 * 3
    | r8. bf16 bf' a g f

	\mark \default

    \repeat volta 4 {
      | f,8. f'16 g,8. g'16
      | a,4. a'8
      | <bf, f'>2 ~
      | <bf f'>8. bf16 bf' a g f
    }

    | f,8. f'16 g,8. g'16
    | a,2
    | <bf f'>2 ~
    | <bf f'>2

    \bar "|."
  }
