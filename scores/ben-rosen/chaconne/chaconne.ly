\version "2.24.0"

\include "settings.ily"
\include "violin.ily"
\include "upper_staff.ily"

\header {
  title = "Chaconne"
  composer = "Ben Rosen"
}

key_and_time = {
  \tempo 4 = 88
  \key fs \minor
  \time 3/4
}

lower_staff = \relative c {
  \clef "bass"
  \key_and_time
  fs2 gs4 | % 2
  es2 cs4 | % 3
  e2 e4 | % 4
  ds2 fs4 | % 5
  d2 b4 | % 6
  cs2 gs4 | % 7
  a2. | % 8
  b2. | % 9
  fs2. | \barNumberCheck #10
  es2 fs4 | % 11
  e2. | % 12
  ds2. | % 13
  d2. | % 14
  c2 fs4 | % 15
  gs4 a4 b4 | % 16
  fs4 es2 | % 17
  fs4 e2 | % 18
  es4 ds2 | % 19
  e2 g4 | \barNumberCheck #20
  gs4 es2 | % 21
  fs4 a2 | % 22
  b2 gs4 | % 23
  a4 gs2 ~ | % 24
  gs2 gs4 | % 25
  fs4 gs2 | % 26
  es4 g2 | % 27
  e2 es4 | % 28
  g2 es4 | % 29
  fs2 gs4 | \barNumberCheck #30
  a2 g4 | % 31
  gs4 a4 gs4 | % 32
  as4 a2 | % 33
  cs8 d8 cs8 c8 b8 a8 | % 34
  b4. c8 b4 | % 35
  gs4. fs8 es8 e8 | % 36
  fs4 gs4 fs4 | % 37
  fs4. a8 cs8 b8 | % 38
  gs4. es8 gs4 | % 39
  a4. fs8 b8 a8 | \barNumberCheck #40
  gs4 a4 g4 | % 41
  fs2. | % 42
  es4 a4 es4 | % 43
  gs2. | % 44
  g4. fs8 g4 | % 45
  fs2. | % 46
  fs4. e8 fs4 | % 47
  es4. _\< b8 d8 cs8 _\! | % 48
  gs4 -> cs,8 _\< gs'8 c8 _\! es8 | % 49
  R2. | \barNumberCheck #50
  e8 fs,8 r4 r4 | % 51
  r8 es8 c'8 cs8 e,8 b'8 | % 52
  a4. fs'16 ds16 <d, a'>4 | % 53
  d'8 fs4 r8 r4 | % 54
  gs8 b,4 r8 cs,4 -. -> | % 55
  R2. | % 56
  c4 -. -> cs4 ~ cs16 a'16 es'16 gs16 | % 57
  cs2 r4 | % 58
  a8 d,8 r8 c8 gs'8 ds'8 ~ | % 59
  ds8 cs8 b8 gs8 d'8 g,8 | \barNumberCheck #60
  c,,8 g'8 <b fs'>2 | % 61
  ds8 a8 <e b'>8 b'8 r4 | % 62
  \clef "treble" gs'8 ds'8 as'8 r8 gs8 ds'8 | % 63
  \once \omit TupletBracket
  \times 6/4  {
    cs,8 ds8 es8 gs8 }
  | % 64
  \once \omit TupletBracket
  \times 6/4  {
    a8 cs8 cs8 ds8 }
  | % 65
  e,4 g8 fs4. | % 66
  cs8 es8 gs8 fs8 es4 | % 67
  \clef "bass" as,8 g8 es8 fs8 gs4 | % 68
  ds8 d8 b8 d8 b8 as8 | % 69
  fs4 b8 cs8 d4 | \barNumberCheck #70
  b8 fs8 a4 cs,8 b8 ~ | % 71
  b8 d8 c4 r4 | % 72
  r2 cs4 -. -> | % 73
  gs''8 a8 d8 fs,8 c'4 | % 74
  a8 gs8 as8 b8 ds8 d8 | % 75
  gs,8 cs8 c4 b16 e,8 es16 | % 76
  g4 gs8 es8 d8 cs8 | % 77
  <gs b'>8 as'8 a4 fs8 es8 | % 78
  g8 gs8 c8 b8 ds,8 d8 | % 79
  cs4 e4 es16 gs16 c,16 b16 | \barNumberCheck #80
  as4 es'8 d8 b8 as8 | % 81
  <fs fs'>4 r4 fs'8 es8 | % 82
  e4 as4 b8 cs8 | % 83
  d8 fs,8 <c' d>8 cs8 a8 gs8 | % 84
  <d b' cs>4 r4 cs'8 c8 | % 85
  b4 gs8 g8 a8 as8 | % 86
  ds8 d8 cs4 as8 a8 | % 87
  d4 r2 | % 88
  c8 e,8 g8 gs8 cs8 es,8 | % 89
  gs8 a8 d8 fs,8 a4 | \barNumberCheck #90
  fs8 es8 r4 fs8 g8 | % 91
  c8 e,8 as4 g8 fs8 | % 92
  gs8 a8 d8 fs,8 c'4 | % 93
  \ottava #-1 d,,8 cs8 c4 a8 gs8 | % 94
  as8 b8 ds8 d8 fs,8 es8 | % 95
  e4 g4 gs16 b16 ds,16 d16 | % 96
  cs4 c'8 b8 as8 a8 | % 97
  gs4 -. -> \ottava #0 r4 c''8 b8 | % 98
  as4 g8 fs8 d'8 cs8 | % 99
  <a c>4 -. -> r4 <a c>4 -. -> | \barNumberCheck #100
  r4 <ds, gs>16 b16 as16 a16 gs16 d16 es16 cs16 | % 101
  c4 -. -> r4 es'8 fs8 | % 102
  b8 ds,8 a'4 g8 fs8 | % 103
  <es cs'>4 -. -> r4 <fs b cs>4 -. -> | % 104
  r4 <e ds'>4 -. -> r4 | % 105
  d16 ds16 gs16 g16 ds16 e16 cs'16 d16 ds16 a'16 e,8 | % 106
  \clef "treble" cs'16 fs16 g16 as16 b16 d16 b16 d16 cs16 d16 cs16 d16
  | % 107
  \clef "bass" a,16 d16 a16 d16 as16 cs16 as16 cs16 a16 fs16 ds16 d16
  | % 108
  gs,16 e16 a16 d16 cs16 d16 c'16 a16 es16 fs16 es'16 e16 | % 109
  \clef "treble" d16 g16 cs,16 a'16 a,16 as'16 a,16 as'16 as,16 ds16
  as16 ds16 | \barNumberCheck #110
  \clef "bass" es16 ds16 es16 ds16 g,16 e16 c'16 cs16 c16 b16 a16 d16
  | % 111
  gs,16 e'16 e,16 es16 ds16 b16 gs16 a16 gs16 g16 es16 as16 | % 112
  e16 c'16 c,16 cs16 fs16 gs16 e16 es16 e16 ds16 cs16 fs16 | % 113
  <fs cs'>2 -> d'4 | % 114
  cs2 e4 | % 115
  cs2 c4 | % 116
  b2 <fs cs'>4 | % 117
  <d a'>2 <b e>4 | % 118
  <cs gs'>2 <a' cs>4 | % 119
  <b, a'>2. | \barNumberCheck #120
  <cs, cs'>2. | % 121
  <d' a'>2 <a' e'>4 | % 122
  <as es'>2 <gs cs>4 | % 123
  <a e'>2 <g d'>4 | % 124
  <ds as'>2 <fs b>4 | % 125
  b,2 <as fs'>4 | % 126
  a2. | % 127
  <cs, cs'>2. ~ ~ | % 128
  <cs cs'>2. ^\fermata | % 129
  fs'''2 gs4 | \barNumberCheck #130
  es2 cs4 | % 131
  e2 e4 | % 132
  ds2 fs4 | % 133
  d2 b4 | % 134
  cs2 gs4 | % 135
  a2. | % 136
  b2. | % 137
  fs2. | % 138
  es2 fs4 | % 139
  e2. | \barNumberCheck #140
  ds2. | % 141
  d2. | % 142
  c2 fs4 | % 143
  <cs gs'>2. ~ ~ | % 144
  <cs gs'>2. | % 145
  <fs,, fs'>2. ~ ~ | % 146
  <fs fs'>2. \bar "|."
}

\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = "Violin"
    } {
      \key_and_time
      \violin
    }
    \new PianoStaff \with {
      instrumentName = "Piano"
    }
    <<
      \new Staff = "upper" {
        \key_and_time
        \upper_staff
      }
      \new Staff = "lower" \lower_staff
    >>
  >>
}
