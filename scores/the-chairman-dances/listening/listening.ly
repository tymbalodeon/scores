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
    | d8. -- e16 -. r g' ( fs8 ) -. b,, -. d' -. cs16 g8.
    | d8. -- e16 -. r e, ( g8 ) -. d''16 d cs8 -. b -. a -.
    | a,8. -- a16 -. r b'' ( cs8 ) -. e,, -. fs -. g'16 cs,8.
    | a,8. -- a16 -. r b' ( cs8 ) -. e,, -. fs -. g -. b -.

    | d8. -- e16 -. r g' ( fs8 ) -. b,, -. d' -. cs16 g8.
    | d8. -- e16 -. r e, ( g8 ) -. d''16 d cs8 -. b -. a -.
    | a,8. -- a16 -. r b'' ( cs8 ) -. e,, -. fs -. g'16 cs,8.
    | c,8. -- c'16 -. r g ( a8 ) -. e'16 ( fs ) d ( e ) g, ( a8. )
  }
}

chorus = \relative ef {
  | R1 * 4

  | ef1 ~
  | ef2. ef4
  | d'1
  \time 2/4
  | R2
  \time 4/4
}

end = \relative e {
  | R1 * 7
  | r2. e4

  \repeat volta 2 {
    | e,8 -. r e -. r e -. r e -. r
    | e8 -. r e -. r e -. r e ( f )
    | e8 -. r e -. r e -. r e -. r
    | e8 -. r e -. r e ( f ) e ( f )
    | e8 -. r e -. r e -. r e -. r
    | e8 -. r e -. r e -. r e ( g )
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

  \chorus

  \verse

  \chorus

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
