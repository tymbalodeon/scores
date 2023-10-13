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

  | r2 r8 b ds ( b )
  | r b8 r4 r2

  \repeat unfold 2 {
    | <b fs'>8. <gs ds'>16 ~ <gs ds'>8 <fs cs'> ~ <fs cs'> <e b'>8 ~ <e b'>4
  }

  \repeat volta 2 {
    | R1 * 2

    \repeat unfold 2 {
      | <b' fs'>8. <gs ds'>16 ~ <gs ds'>8 <fs cs'> ~ <fs cs'> <e b'>8 ~ <e b'>4
    }
  }

  | R1 * 4

  \repeat volta 2 {
    | << \parenthesize r16 -\markup \italic "1." \\ \parenthesize gs16 -\markup \italic "2." >>
    b cs ( ds ) b cs ( ds ) b cs ( ds ) b cs ( ds ) b cs ( ds )
    | b16 fs' b, b fs' b, b fs' b, b fs' b, b fs' b, b
    | e16 ds b e ds b e ds b e ds b e ds b e
    | b16 gs e' b gs e' b gs e' b gs e' b gs e' b
  }

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

  \repeat volta 2 {
    | r16 b cs ( ds ) b cs ( ds ) b cs ( ds ) b cs ( ds ) b cs ( ds )
    | b16 fs' b, b fs' b, b fs' b, b fs' b, b fs' b, b

    \alternative {
      \volta 1 {
        | e16 ds b e ds b e ds b e ds b e ds b r
      }

      \volta 2 {
        | e16 ds b e ds b e ds b e ds b e ds b fs ~
      }
    }
  }

  | fs8. b16 ~ b8. cs16 ~ cs8. fs16 ~ fs4

  \repeat volta 4 {
    | << { R1 } { s4 ^\markup \italic "3x" } >>
    | r2 r4 ds'
    | fs1
    | R1
  }

  | R1 * 4

  \repeat volta 2 {
    | <e,,, b' e gs b e>2 ~ <e b' e gs b e>4.. <cs' fs cs'>16 ~
    | <cs fs cs'>2 ~ <cs fs cs'>4.. <e, b' e gs ds'>16 ~
    | <e b' e gs ds'>4.. <e b' e gs cs>16 ~ <e b' e gs cs>4.. <e b' e gs b fs'>16 ~
    | <e b' e gs b fs'>1
  }

  \repeat volta 2 {
    | <e b' e gs b e>2 ~ <e b' e gs b e>4.. <cs' fs cs'>16 ~
    | <cs fs cs'>2 ~ <cs fs cs'>4.. <e, b' e gs ds'>16 ~

    \alternative {
      \volta 1 {
        | <e b' e gs ds'>4. <e b' e gs>16 <e b' e gs cs>16 ~ <e b' e gs cs>4. <e b' e gs>16 <e b' e gs b fs'>16 ~
        | <e b' e gs b fs'>1
      }

      \volta 2 {
        | <b' e gs ds'>1 ~
        | <b e gs ds'>1
      }
    }
  }

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
