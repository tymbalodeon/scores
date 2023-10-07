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
  | R1 * 2

  \repeat volta 2 {
    | d8. e16 r g' ( fs8 ) -. b,, -. d' -. cs16 g8.
    | d8. e16 r e, ( g8 ) -. d''16 d cs8 -. b16 a8.
    | a,8. a16 r \ottava #1 b'' ( cs8 ) -. \ottava #0  e,, -. fs -. g'16 cs,8.
    | a,8. a16 r b' ( cs8 ) -. e,, -. fs -. g -. b -.

    | d8. e16 r g' ( fs8 ) -. b,, -. d' -. cs16 g8.
    | d8. e16 r e, ( g8 ) -. d''16 d cs8 -. b16 a8.
    | a,8. a16 r \ottava #1 b'' ( cs8 ) -. \ottava #0 e,, -. fs -. g'16 e,, ( g8 -. )
    \alternative {
      \volta 1 {
        | c8. c'16 r g ( a8 ) -. e'16 es fs8 -. c,16 ds8.
      }

      \volta 2 {
        | c8. c'16 r g ( a8 ) -. e'16 es fs8 -. c,16 d?8.
      }
    }
  }
}

end = \relative e {
  | R1 * 7
  | r2. r8 e \glissando

  \repeat volta 2 {
    | e,8 -. r e -. r e -. r e -. r
    | e8 -. r e -. r e -. r e -> ( f )
    | e8 -. r e -. r e -. r e -. r
    | e8 -. r e -. r e ( -> f ) e -> ( f )
    | e8 -. r e -. r e -. r e -. r
    | e8 -. r e -. r e -. r e -> ( g )
  }

  | e8 -. r e -. r e -. r e -. r
  | e8 -. r e -. r e -. r r16 e ( fs ) a
  | fs' -> e -> d -> r r4 r2
}

music = \relative d {
  \key e \minor
  \time 4/4
  \clef "bass"

  \verse

  | R1 * 4

  | ef1 ~
  | ef2. ef4
  | d'1
  \time 2/4
  | R2
  \time 4/4

  \verse

  | R1 * 4

  | ef,1 ~
  | ef2. bf'4
  | d1
  \time 2/4
  | R2
  \time 4/4

  \end

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
