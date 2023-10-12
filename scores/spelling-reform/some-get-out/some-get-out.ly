\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Some Get Out"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c'' {
  \key e \major
  \time 4/4

  | R1 * 4
  | R1 * 4
  | R1 * 4

  | R1 * 8
  | R1 * 7

  | r2 r8 e gs ( e )
  | r e8 r4 r2

  \repeat unfold 2 {
    | <e, b'>8. <cs gs'>16 ~ <cs gs'>8 <b fs'> ~ <b fs'> <a e'>8 ~ <a e'>4
  }

  \repeat volta 2 {
    | R1 * 2

    \repeat unfold 2 {
      | <e' b'>8. <cs gs'>16 ~ <cs gs'>8 <b fs'> ~ <b fs'> <a e'>8 ~ <a e'>4
    }
  }

  | R1 * 4

  | r16 b' cs ( ds ) b cs ( ds ) b cs ( ds ) b cs ( ds ) b cs ( ds )
  | b16 fs' b, b fs' b, b fs' b, b fs' b, b fs' b, b
  | e16 ds b e ds b e ds b e ds b e ds b e
  | b16 gs e' b gs e' b gs e' b gs e' b gs e' b

  | gs16 b cs ( ds ) b cs ( ds ) b cs ( ds ) b cs ( ds ) b cs ( ds )
  | b16 fs' b, b fs' b, b fs' b, b fs' b, b fs' b, b
  | e16 ds b e ds b e ds b e ds b e ds b e
  | b16 gs e' b gs e' b gs e' b gs e' b gs e' b

  \repeat volta 2 {
    | r8 b16 ( cs ) gs'4 ~ gs2
    | r8 a,16 ( b ) fs'4 ~ fs2
    | r8 gs,16 ( a ) e'4 ~ e2

    \alternative {
      \volta 1 {
        | r8 e,16 ( fs ) gs fs8. ~ fs2
      }

      \volta 2 {
        | R1
      }
    }
  }

  | r16 b cs ( ds ) b cs ( ds ) b cs ( ds ) b cs ( ds ) b cs ( ds )
  | b16 fs' b, b fs' b, b fs' b, b fs' b, b fs' b, b
  | e16 ds b e ds b e ds b e ds b e ds b e

  | r16 b cs ( ds ) b cs ( ds ) b cs ( ds ) b cs ( ds ) b cs ( ds )
  | b16 fs' b, b fs' b, b fs' b, b fs' b, b fs' b, b
  | e16 ds b e ds b e ds b e ds b e ds b fs ~
  | fs8. b16 ~ b8. cs16 ~ cs8. fs16 ~ fs4

  \repeat volta 4 {
    | << { R1 } { s4 ^\markup \italic "3x" } >>
    | r2 r4 gs
    | b1 ~
    | R1
  }

  | R1 * 4

  | R1 * 16

  \bar "|."
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
