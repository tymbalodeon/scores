\version "2.25.19"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Purple Harvest"
  composer = "Daniel Barritt-Levine"
}

trumpet = \relative c'' {
  \time 5/8

  | << { R8 * 5 } s4^\markup \box "X" >>
  | ef8 df c g4
  | af4 bf8 ef e
  | r4 fs,8 ~ fs4
  | r8 fs g cs4
  | g8 c!4 r
}

trombone = \relative c' {
  \time 5/8
  \clef "bass"

  | R8 * 5
  | ef8 df c f,4
  | af4 bf8 ef e
  | r4 gs,8 ~ gs4
  | r8 fs g! cs4
  | g8 c!4 r
}

electricGuitar = \relative c'' {
  \time 5/8

  | r4 ^\markup \box "Xi11" r8 gs as
  | as fs b e!4
  | a,!8 b g cs4
  | d,4. r4
  | d8 e c ~ c4
  | bf'4 f8 c' e
}

keyboard = \relative c' {
  \time 5/8
  \clef "bass"

  | bf4 e,8 ~ e4
  | b'8 bf4 af
  | cs,4. a!8 g
  | b'4. r4
  | r8 bf e, r d
  | f8 c4 d8 c
}

\score {
  <<
    \new StaffGroup {
      <<
        \new Staff \with {
          instrumentName = "Trumpet"
          \numericTimeSignature
        } {
          \compressMMRests
          \trumpet
        }

        \new Staff \with {
          instrumentName = "Trombone"
          \numericTimeSignature
        } {
          \compressMMRests
          \trombone
        }
      >>
    }

    \new StaffGroup {
      <<
        \new Staff \with {
          instrumentName = "Electric Guitar"
          \numericTimeSignature
        } {
          \compressMMRests
          \electricGuitar
        }

        \new Staff \with {
          instrumentName = "Keyboard"
          \numericTimeSignature
        } {
          \compressMMRests
          \keyboard
        }
      >>
    }
  >>
}
