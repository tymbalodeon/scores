\version "2.25.20"

\include "helpers/settings.ily"

\header {
  title = "Benediction"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

music = \relative a, {
  \clef "bass"
  \tempo 4 = 88
  \key a \major
  \time 6/8

  | a2. ~ \tuplet 4/6 { a8 b''16 fs16 } \tuplet 4/6 { a16 e16 ~ e8 \glissando }
  | a,,2. ~
  | a4. ~ a4 ~ a16 e16
  | a2. ~

  | \tuplet 4/6 { a8 b''16 fs16 }
  | \tuplet 4/6 { a16 e16 a,8 \glissando }
  | e,2. ~
  | e4. b'4.

  \repeat volta 2 {
    e'2. ~
    e8 a,16 ( b16 ) e16 b16 e16 ( fs8 ) e8 b16
    a,8 e'16 b'8 a,16 ~ e''16 ( fs8 ) cs16
    ~ cs8
    a'16 ( b8 )  fs16 ~ fs8 cs'16 d16 cs16
    d16 cs8
  }


  \tuplet 4/6  {
    a,8 a'8 gs8 e8 }

  \tuplet 4/6  {
    fs,8 \acciaccatura { b8*2/3 ( } cs8 ) b8 e,8 }


  \tuplet 4/6  {
    d8 a'8 gs8 fs8 }

  e8. d8 e,16 cs'8 b8 a8
  e''2. ~
  e8 a,16 ( b16 ) e16 b16 e16 ( fs8 ) e8 b16
  a,8 e'16 b'8 a,16 ~ e''16 ( fs8 )  cs16 ~
  cs8
  a'16 ( b8 )  fs16 ~ fs8 cs'16 d16 cs16 d16
  cs8

  \tuplet 4/6  {
    r8 b16 fs16 }

  \tuplet 4/6  {
    a16 e16 fs16 cs16 }


  \tuplet 4/6  {
    e16 b16 cs16 a16 }

  \tuplet 4/6  {
    b16 fs16 a16 e16 }


  \tuplet 4/6  {
    a,16 e8. ~ }
  e4. ~
  e4. r4. \repeat volta 2 {

    e''2. ~
    e8 a,16 ( b16 ) ) e16 b16 e16 (
     fs8 ) e8 b16
    a,8 e'16 b'8 a,16 ~ e''16 ( fs8 )  cs16
    ~ cs8
    a'16 ( b8 )  fs16 ~ fs8 cs'16 d16 cs16
    d16 cs8 }
  \repeat volta 2 {

    \tuplet 4/6  {
      r8 b16 fs16 }

    \tuplet 4/6  {
      a16 e16 fs16 cs16 }


    \tuplet 4/6  {
      e16 b16 cs16 a16 }

    \tuplet 4/6  {
      b16 fs16 a16 e16 }


    \tuplet 4/6  {
      a,16 e8. ~ }
    e4. ~ }
  \alternative { {

    e4. r4. }
                 {

                   e4. r4 e16 f16 }
               }
  fs4. fs'4. ~
  fs4 ~ fs16 cs16 fs8 cs8 a16 as16
  b4 ~ b16 fs'16 b16 ( cs16 ~  cs8. ) a16
  b4 ~ b16 fs16 b8 a8 e,16 f16
  \tuplet 4/6  {
    fs8 cs'8 \acciaccatura { gs'8*2/3 ( } a8 )
    gs8 }


  \times 3/2  {
    fs8 e8 }
  cs8 b8 a16 as16
  b8. fs'16 cs'16 a16 b8 cs8 d8

  \tuplet 4/6  {
    e16 fs16 gs16 a16 }

  \tuplet 4/6  {
    gs16 fs16 a,16 gs16 }

  fs8. fs16 fs16 cs16 fs8. fs16 fs16 cs16
  fs8 gs8 a8 gs8 fs8 a,16 as16
  r8 d'4 ~ d8 cs4 ~
  cs8 b4 ~ b8 a4
  cs,8. cs16 cs16 gs16 cs8 e,16 ( fs16 )
  gs8
  cs8 gs'8 e'8 fs8 gs8 a8
  \tuplet 4/6  {
    r8 b16 fs16 }

  \tuplet 4/6  {
    a16 e16 fs16 cs16 }


  \tuplet 4/6  {
    e16 b16 cs16 a16 }

  \tuplet 4/6  {
    b16 fs16 a16 e16 }

  R2. \bar "."
}

PartPOneVoiceTwo =  \relative a, {
  \clef "bass" \time 6/8 \key a \major \transposition c s1*6 \repeat
  volta 2 {
    s8*15 a4 ~ a16 a16 ~
    a4 ~ a16 e16 ~ e4. }
  s2. s8*33 a4 ~ a16 a16 ~
  a4 ~ a16 e16 ~ e4. s1*3 \repeat volta 2 {
    s2. s8*9 a4 ~ a16 a16 ~
    a4 ~ a16 e16 ~ e4. }
  \repeat volta 2 {
    s2. s1. }
  \alternative { {
    s2. }
                 {
                   s2. }
               } s1. s4*15 s4*9
  b'4 b8 a4 a8
  gs4 gs8 fs4 fs8 s1.
  e2. -> s1. \bar "|."
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
