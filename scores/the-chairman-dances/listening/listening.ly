\version "2.25.6"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Listening"
  subtitle = "The Chairman Dances"
  composer = "Eric Krewson"
  arranger = "Ben Rosen, bass"
}

verse = \relative d {
  \repeat volta 2 {
    | d8. e16 -. r g' ( fs8 ) -. b,, -. d' -. cs16 g8.
    | d8. e16 -. r e, ( g8 ) -. d''16 d cs8 -. b16 a8.
    | a,8. a16 -. r b'' ( cs8 ) -. e,, -. fs -. g'16 cs,8.
    | a,8. a16 -. r b' ( cs8 ) -. e,, fs g b

    | d8. e16 -. r g' ( fs8 ) -. b,, -. d' -. cs16 g8.
    | d8. e16 -. r e, ( g8 ) -. d''16 d cs8 -. b16 a8.
    | a,8. a16 -. r b'' ( cs8 ) -. e,, -. fs -. g'16 cs,8.
    | c,8. c'16 -. r g ( a8 ) -. e'16 fs d e g, a8.
  }
}

chorus = \relative ef {
  | R1 * 4

  | ef1 ~
  | ef2. ef4
  | d'1 ~
  | d2. r4
}

music = \relative d {
  \key c \major
  \time 4/4
  \clef "bass"

  \verse

  \chorus

  \verse

  \chorus
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
