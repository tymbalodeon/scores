\version "2.24.0"

\include "settings.ily"

\header {
  title = "A Promise"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

verse = \relative fs, {
  \repeat volta 2 {
    | r4 fs2 -> cs'4
    | fs'8 ds4 cs8 ~ cs fs, ( gs ) b ~
    | b4 cs, ~ -> cs8 ds' ( e ) ds ~

    \alternative {
      \volta 1 {
        | ds8 fs, ( gs ) b gs fs ds cs
        | gs4 ds' b'8 as gs16 fs ds8 ~
        | ds4 cs b as
        | << {

          r4 <b' fs'> ~ <b fs'>8 b \glissando ( fs' ) ds' ~
          ds8 ~ <fs, ds'>4 cs'8 ~ cs b gs fs

        } \\ {

          e,,2 e ~
          e4 e2.

        } >>
      }

      \volta 2 {
        | ds''8 \repeatTie fs, ( gs ) b cs, ( ds ) fs4
        | gs,4 ds' b''8 as gs16 fs ds8 ~
        | ds4 cs b as
        | << {

          e1 \harmonic
          <as' cs>8 ( <gs b>4 ) <fs as>8 ~ <fs as> <e gs>4.

        } \\ {

          r4 e,,2 e4 ~
          e1

        } >>
      }
    }
  }
}

riff_base = \relative b {
  | r4 b -> r8 ds' fs, ( gs ) ~
  | gs8 cs fs, b ds, gs cs, fs
  | r4 gs, -> r8 cs ( ds ) fs ~
}

riff_volta_one = \relative fs' {
  | fs8 gs cs, fs b, ds fs, ( gs )
}

riff_volta_two = \relative fs' {
  | fs8 \repeatTie gs fs ds cs ( b ) gs fs
}

music = \relative c,  {
  \clef "bass"
  \tempo 4 = 140
  \key b \major

  \partial 4
  | r4

  \verse

  \repeat volta 2 {
    \riff_base

    \alternative {
      \volta 1 {
        \riff_volta_one
      }

      \volta 2 {
        \riff_volta_two
      }
    }
  }

  \verse

  \repeat volta 3 {
    \riff_base

    \alternative {
      \volta 1 {
        \riff_volta_one
      }

      \volta 2 {
        \riff_volta_two
      }

      \volta 3 {
        r8 \acciaccatura { b'' } cs  b gs fs ds cs ( b )
      }
    }
  }

  \verse

  | a4 e' a,8 cs a e' ~
  | e8 gs4 b8 ~ b cs b4
  | b,4 fs' b,8 fs' b, ds'
  | b,8 e' b, ds' b, b' fs4

  | a,4 e' a,8 cs a e' ~
  | e8 gs4 b8 cs e cs4
  | b,4 fs' b,8 fs' b, ds'
  | b,8 e' b, ds' b, b' fs4

  | a,4 e'' a,,8 fs'' gs b
  | a,,8 cs'' a,, ds'' a,, e''' ds4
  | b,,4 fs' b,8 fs' b, ds'
  | b,8 e' b, ds' b, b' fs4

  \repeat volta 2 {
    | a,4 gs'2. ~
    | gs4 gs2.
  }

  | r2 <b, fs'>2 ~
  | <b fs'>1

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
