\version "2.24.0"

\include "settings.ily"

\header {
  title = "Brother"
  composer = "Rebecca Seatle"
  arranger = "Ben Rosen, bass"
}

music = \relative cs {
  \tempo 4=120
  \key cs \minor
  \time 4/4
  \clef "bass"

  \repeat volta 2 {
    |
    cs8. gs'16 r8 ds'8 ( e2 ) ~
    |
    e8 cs'4 gs8 ~ gs4 ds4
    \glissando |
    b,8. fs'16 r8 cs'8 ( b2 ) ~ |
    b8 ds4 gs8 ~ gs4 b,4 }
  |
  cs,2. r8 e'8 ~ |
  e8 cs8 r8 ds8 ~ ds8 bs8 ~ bs4 |
  cs,2. r8 a'8 ~ |
  a8 a8 r8 gs8 ~ gs2 |
  cs,2. r8 e'8 ~ |
  e8 a8 r8 ds,8 ~ ds8 gs8 ~ gs4 |
  cs,,2. r8 a8 ~ |
  a8 a8 r8 gs8 ~ gs2 \repeat volta 2 {
    |
    cs8  e'16 e16 e8 ds16 ds16 ds8 cs16 cs16 a8
    gs8 |
    e8 cs'16 cs16 cs8 a16 a16 a8 gs16 gs16 e8 ds8 |
    cs8 b'16 b16 b8 gs16 gs16 gs8 e16 e16 ds8 cs8 |
    gs8 cs16 cs16 cs8 b16 b16 b8 gs16 gs16 fs8 e8 }
  |
  cs'2. r8 e'8 ~ |
  e8 cs8 r8 ds8 ~ ds8 bs8 ~ bs4 |
  cs,2. r8 a'8 ~ |
  a8 a8 r8 gs8 ~ gs2 |
  cs,2. r8 e'8 ~ |
  e8 a8 r8 ds,8 ~ ds8 gs8 ~ gs4 |
  cs,,2. r8 a8 ~ |
  a8 a8 r8 gs8 ~ gs2 \repeat volta 2 {
    |
    cs8 e'16 e16 e8 ds16 ds16 ds8 cs16 cs16 a8 gs8 |
    e8 cs'16 cs16 cs8 a16 a16 a8 gs16 gs16 e8 ds8 |
    cs8 b'16 b16 b8 gs16 gs16 gs8 e16 e16 ds8 cs8 |
    gs8 cs16 cs16 cs8 b16 b16 b8 gs16 gs16 fs8 e8 }
  |
  cs'2. r8 e'8 ~ |
  e8 cs8 r8 ds8 ~ ds8 bs8 ~ bs4 |
  cs,2. r8 a'8 ~ |
  a8 a8 r8 gs8 ~ gs2 |
  cs,2. r8 e'8 ~ |
  e8 a8 r8 ds,8 ~ ds8 gs8 ~ gs4 |
  cs,,2. r8 a8 ~ |
  a8 a8 r8 gs8 ~ gs2 \repeat volta 2 {
    |
    cs8  e16 e16 e8 fs8 gs8 b8 r4 |
    cs,8 e16 e16 e8 fs8 gs8 e'8 cs8 r8 |
    a,8 cs16 cs16 cs8 e8 fs8 gs8 r4 |
    a,8 cs16 cs16 e8 cs8 b8 ds8 fs8 r8 }
  |
  cs2. r8 e'8 ~ |
  e8 cs8 r8 ds8 ~ ds8 bs8 ~ bs4 |
  cs,2. r8 a'8 ~ |
  a8 a8 r8 gs8 ~ gs2 |
  cs,2. r8 e'8 ~ |
  e8 a8 r8 ds,8 ~ ds8 gs8 ~ gs4 |
  cs,,2. r8 a8 ~ |
  a8 a8 r8 gs8 ~ gs2 |
  s1*12 \repeat volta 2 {
    |
    cs8.  gs'16 r8 ds'8 ( e2 ) ~ |
    e8 cs'4 gs8 ~ gs4  ds4
    \glissando |
    b,8. fs'16 r8 cs'8 ( b2 ) ~ |
    b8 ds4 gs8 ~ gs4 b,4 }
  |
  cs,2. r8 e'8 ~ |
  e8 cs8 r8 ds8 ~ ds8 bs8 ~ bs4 |
  cs,2. r8 a'8 ~ |
  a8 a8 r8 gs8 ~ gs2 |
  cs,2. r8 e'8 ~ |
  e8 a8 r8 ds,8 ~ ds8 gs8 ~ gs4 |
  cs,,2. r8 a8 ~ |
  a8 a8 r8 gs8 ~ gs2 \repeat volta 2 {
    |
    cs8 e'8 ( ds8 ) b8 cs8 fs,8 gs8 b8 |
    cs,8 e'8 ( ds8 ) b8 cs8 fs,8 gs8 e8 |
    b8 e'8 ( ds8 ) cs8 gs8 b8 e,8 fs8 }
  \alternative { {
    |
    b,8 e'8 ( ds8 ) cs8 gs8 b8 e,8 fs8 }
                 {
                   |
                   b,4 r4 r2 }
               } |
  a4 r8 a8 ~ a8 r8 a4 ~ |
  a2 a4 b4 |
  cs4 r8 cs8 ~ cs8 r8 cs4 ~ |
  cs2 cs4 b4 |
  a4 r8 a8 ~ a8 r8 a4 ~ |
  a2 a4 b4 |
  cs4 _ "rit." r8 cs8 ~ cs8 r8 cs4 ~ |
  cs1 \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
