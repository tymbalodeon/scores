\version "2.24.0"

\include "settings.ily"

\header {
  title = "A Promise"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative c,  {
  \clef "bass"
  \tempo 4 = 140
  \key b \major

  | R1

  \repeat volta 2 {
    | r4 fs2 -> cs'4
    | fs'8 ds4 cs8 ~ cs8 fs,8 ( gs8 ) b8 ~
    | b4 cs,4 ~ -> cs8 ds'8 ( e8 ) ds8 ~

    \alternative {
      \volta 1 {
        | ds8 fs,8 ( gs8 ) b8 gs8 fs8 ds8 cs8
        | gs4 ds'4 b'8 as8 gs16 fs16 ds8 ~
        | ds4 cs4 b4 as4
        | r4 <b' fs'>4  <b fs'>8 b8 ( fs'8 ) ds'8 ~
        | ds8 ~ <fs, ds'>4 cs'8 ~ cs8 b8 gs8 fs8
      }

      \volta 2 {
        | ds8 fs,8 ( gs8 ) b8 cs,8 ( ds8 ) fs4
        | gs,4 ds'4 b''8 as8 gs16 fs16 ds8 ~
        | ds4 cs4 b4 as4 s1
        | <as' cs>8 ( <gs b>4 ) <fs as>8  <fs as>8 <e gs>8  <e gs>4
      }
    }
  }

  \repeat volta 2 {
    | r4 b4 r8 ds'8 fs,8 ( gs8 ) ~
    | gs8 cs8 fs,8 b8 ds,8 gs8 cs,8 fs8
    | r4 gs,4 r8 cs8 ( ds8 ) fs8 ~

    \alternative {
      \volta 1 {
        | fs8 gs8 cs,8 fs8 b,8 ds8 fs,8 ( gs8 )
      }

      \volta 2 {
        | fs'8 gs8 fs8 ds8 cs8 ( b8 ) gs8 fs8
      }
    }
  }

  r4 fs,2 -> cs'4
  fs'8 ds4 cs8 ~ cs8 fs,8 ( gs8 ) b8 ~
  b4 cs,4 ~ -> cs8 ds'8 ( e8 ) ds8 ~
  ds8 fs,8 ( gs8 ) b8 gs8 fs8 ds8 cs8
  gs4 ds'4 b'8 as8 gs16 fs16 ds8 ~
  ds4 cs4 b4 as4
  r4 <b' fs'>4  <b fs'>8 b8 ( fs'8 ) ds'8 ~
  ds8 ~ <fs, ds'>4 cs'8 ~ cs8 b8 gs8 fs8
  r4 fs,,2 -> cs'4
  fs'8 ds4 cs8 ~ cs8 fs,8 ( gs8 ) b8 ~
  b4 cs,4 ~ -> cs8 ds'8 ( e8 ) fs8 ~
  fs8 fs,8 ( gs8 ) b8 cs,8 ( ds8 ) fs4
  gs,4 ds'4 b''8 as8 gs16 fs16 ds8 ~
  ds4 cs4 b4 as4 s1
  <as' cs>8 ( <gs b>4 ) <fs as>8  <fs as>8 <e gs>8  <e gs>4
  r4 b4 r8 ds'8 fs,8 ( gs8 ) ~
  gs8 cs8 fs,8 b8 ds,8 gs8 cs,8 fs8
  r4 gs,4 r8 cs8 ( ds8 ) fs8 ~
  fs8 gs8 cs,8 fs8 b,8 ds8 fs,8 ( gs8 )
  r4 b4 r8 ds'8 fs,8 ( gs8 ) ~
  gs8 cs8 fs,8 b8 ds,8 gs8 cs,8 fs8
  r4 gs,4 r8 cs8 ds8 fs8 ~
  fs8 gs8 fs8 ds8 cs8 ( b8 ) gs8 fs8
  r4 b4 r8 ds'8 fs,8 ( gs8 ) ~
  gs8 cs8 fs,8 b8 ds,8 gs8 cs,8 fs8
  r4 gs,4 r8 cs8 ( ds8 ) fs8 ~
  fs8 gs8 cs,8 fs8 b,8 ds8 fs,8 ( gs8 )
  r4 b4 r8 ds'8 fs,8 ( gs8 ) ~
  gs8 cs8 fs,8 b8 ds,8 gs8 cs,8 fs8
  r4 gs,4 r8 cs8 ( ds8 ) fs8
  r8 \acciaccatura { b8 ( } cs8 ) b8 gs8 fs8 ds8 cs8 ( b8 )
  r4 fs,2 -> cs'4
  fs'8 ds4 cs8 ~ cs8 fs,8 ( gs8 ) b8 ~
  b4 cs,4 ~ -> cs8 ds'8 ( e8 ) ds8 ~
  ds8 fs,8 ( gs8 ) b8 gs8 fs8 ds8 cs8
  gs4 ds'4 b'8 as8 gs16 fs16 ds8 ~
  ds4 cs4 b4 as4
  r4 <b' fs'>4  <b fs'>8 b8 fs'8 ds'8 ~
  ds8 ~ <fs, ds'>4 cs'8 ~ cs8 b8 gs8 fs8
  r4 fs,,2 -> cs'4
  fs'8 ds4 cs8 ~ cs8 fs,8 ( gs8 ) b8 ~
  b4 cs,4 ~ -> cs8 ds'8 ( e8 ) fs8
  e8 ( ds8 ) cs8 b8 cs,8 ( ds8 ) fs4
  gs,4 ds'4 b''8 as8 gs16 fs16 ds8 ~
  ds4 cs4 b4 as4 s1
  <as' cs>8 ( <gs b>4 ) <fs as>8  <fs as>8 <e gs>8  <e gs>4
  a,,4 e'4 a,8 cs8 a8 e'8 ~
  e8 gs4 b8 ~ b8 cs8 b4
  b,4 fs'4 b,8 fs'8 b,8 ds'8
  b,8 e'8 b,8 ds'8 b,8 b'8 fs4
  a,4 e'4 a,8 cs8 a8 e'8 ~
  e8 gs4 b8 cs8 e8 cs4
  b,4 fs'4 b,8 fs'8 b,8 ds'8
  b,8 e'8 b,8 ds'8 b,8 b'8 fs4
  a,4 e''4 a,,8 fs''8 gs8 b8
  a,,8 cs''8 a,,8 ds''8 a,,8 e'''8 ds4
  b,,4 fs'4 b,8 fs'8 b,8 ds'8
  b,8 e'8 b,8 ds'8 b,8 b'8 fs4 \repeat volta 2 {

    a,4 _ "Play 6 times" gs'2. ~
    gs4 gs2. }

  r2 <b, fs'>2
  <b fs'>1

  \bar "."
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
