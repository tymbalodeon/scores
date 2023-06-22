\version "2.25.5"

\include "helpers/settings.ily"

\header {
  title = "A Promise"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

loco = _\markup \italic "loco"

verse_base = \relative fs, {
  | r4 fs2 -> cs'4
  | fs'8 ds4 cs8 ~ cs fs, ( gs ) b ~
  | b4 cs, ~ -> cs8 ds' ( e ) ds ~
  | ds8 fs, ( gs ) b gs fs ds cs

  | gs4 ds' b'8 as gs16 fs ds8 ~
  | ds4 cs b as
  << {

    | r4
      \ottava #1
      <b' fs'> ~ <b fs'>8 b \glissando ( fs' ) ds' ~
    | ds8 ~ <fs, ds'>4 cs'8 ~ cs b gs fs
      \ottava #0

  } \\ {

    | e,,2 \loco e ~
    | e4 e2.

  } >>

  | r4 fs2 -> cs'4
  | fs'8 ds4 cs8 ~ cs fs, ( gs ) b ~
}

verse_end = \relative gs, {
  | gs4 ds'
    \ottava #1
    b''8 as gs16 fs ds8 ~
  | ds4
    \ottava #0
    cs b as
  | << {

    e1 \harmonic
    \ottava #1
    <as' cs>8 ( <gs b>4 ) <fs as>8 ~ <fs as> <e gs>4.
    \ottava #0

  } \\ {

    r4 e,,2 e4 ~ \loco
    e1

  } >>
}

verse_one = \relative b {
  \verse_base

  | b4 cs, ~ -> cs8 ds' ( e ) ds ~
  | ds8 fs, ( gs ) b cs, ( ds ) fs4

  \verse_end
}

verse_two = \relative b {
  \verse_base

  | b4 cs, ~ -> cs8 ds' ( e ) fs ~
  | fs8 fs, ( gs ) b cs, ( ds ) fs4

  \verse_end
}

verse_three = \relative b {
  \verse_base

  | b4 cs, ~ -> cs8 ds' ( e ) fs
  | e8 ( ds ) cs b cs, ( ds ) fs4

  \verse_end
}

riff_base = \relative b {
  | r4 b -> r8
    \ottava #1
    ds' fs, ( gs ) ~
  | gs8 cs fs, b ds, gs cs, fs
    \ottava #0
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
  r4

  \verse_one

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

  \verse_two


  \repeat volta 3 {
    \riff_base

    \alternative {
      \volta 1,3 {
        \riff_volta_one
      }

      \volta 2 {
        \riff_volta_two
      }

      \volta 4 {
        r8
        \ottava #1
        \acciaccatura { b''' -"Solo" } cs  b gs fs ds cs ( b )
        \ottava #0
      }
    }
  }

  \verse_three

  | a,4 e' a,8 cs a e' ~
  | e8 gs4 b8 ~ b cs b4
  | b,4 fs' b,8 fs' b, ds'
  | b,8 e' b, ds' b, b' fs4

  | a,4 e' a,8 cs a e' ~
  | e8 gs4 b8 ( cs ) e cs4
  | b,4 fs' b,8 fs' b, ds'
  | b,8 e' b, ds' b, b' fs4

  | a,4
    \ottava #1 e''
    a,8 \loco
    fs' gs b
  |  a,8 \loco
    cs'
    a,
    ds'
    a,
    e'' ds4
    \ottava #0
  | b,,4 fs' b,8 fs' b, ds'
  | b,8 e' b, ds' b, b' fs4

  \repeat volta 6 {
    | a,4 gs'2. ~
    | gs4 gs2.
  }

  | r2 <b, fs'>2 ~
  | <b fs'>1

  \bar "|."
}

\layout {
  \context {
    \Staff
    \remove Ottava_spanner_engraver
  }
  \context {
    \Voice
    \consists Ottava_spanner_engraver
  }
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
