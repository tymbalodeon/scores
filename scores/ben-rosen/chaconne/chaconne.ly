\version "2.24.0"

\include "settings.ily"
\include "violin.ily"

\header {
  title = "Chaconne"
  composer = "Ben Rosen"
}

key_and_time = {
  \tempo 4 = 88
  \key fs \minor
  \time 3/4
}

upper_staff = \relative c'' {
  \key_and_time
  \clef "treble" \time 3/4 \key a \major | % 1
  a2 ( _\p fs4 | % 2
  gs2 b4 | % 3
  as2 g4 | % 4
  gs2. | % 5
  gs2 fs4 | % 6
  es2 d4 | % 7
  ds2. | % 8
  cs2. ) | % 9
  a2. ( | \barNumberCheck #10
  b2 a4 | % 11
  gs2. | % 12
  g2. | % 13
  fs2 es4 | % 14
  fs2 ds4 | % 15
  es4 fs4 gs4 | % 16
  a2 gs4 ) | % 17
  fs4 ( gs2 | % 18
  b2 g4 | % 19
  gs2 e4 | \barNumberCheck #20
  ds2 g4 | % 21
  gs4 fs2 | % 22
  gs4 as2 | % 23
  fs2 b4 ~ | % 24
  b2. ) | % 25
  a4 ( fs2 | % 26
  gs4 es2 | % 27
  gs4 as2 | % 28
  cs4 b4 as4 | % 29
  gs2 a4 | \barNumberCheck #30
  fs2 e4 | % 31
  es2. | % 32
  fs4 gs4 b4 ) | % 33
  a2. | % 34
  gs4. a8 gs4 | % 35
  as2. | % 36
  b4. fs8 b4 | % 37
  gs2. | % 38
  es4 e4 es4 | % 39
  fs8 ( es8 ds8 a'8 gs8 fs8 ) | \barNumberCheck #40
  cs4 gs'4 es4 | % 41
  fs2. | % 42
  gs4 es4 gs4 | % 43
  e4. ( g8 gs8 fs8 ) | % 44
  ds4. e8 ds4 | % 45
  b8 ( cs8 d8 cs8 d8 cs8 ) | % 46
  c4 ds4 c4 | % 47
  cs2. ( | % 48
  <es, c'>4 ) -> r2 | % 49
  c'4 _\f fs4 ( cs8 a8 | \barNumberCheck #50
  r4 r8 ) gs'8 ( cs,8 b8 ~ | % 51
  b8 ) r8 r4 as'8 ( e8 | % 52
  ds8 b4 gs'4 b,8 ) | % 53
  r4 r8 <d gs>8 ( fs8 cs8 ) | % 54
  r4 r8 \clef "bass" es,8 r4 | % 55
  \once \omit TupletBracket
  \times 6/4  {
    <ds' e>8 ( -> a8 -> fs8 -> a,8 ) -> }
  | % 56
  R2. | % 57
  \clef "treble" ds''4 -> cs4 <fs, as>8 ( e8 ) | % 58
  R2. | % 59
  <es d'>8 ( gs4 ds8 <es a>8 b'8 | \barNumberCheck #60
  as8 ds8 ) r8 ds,8 ( d8 <gs b>8 | % 61
  a8 fs8 ) r4 gs8 ( ds'8 | % 62
  as'8 ) -> r8 \ottava #1 gs8 ( ds'8 as'8 ) -> \ottava #0 r8 | % 63
  cs,,8 ( _\< ds8 es8 gs8 a8 c8 | % 64
  \ottava #1 cs8 ds8 es8 gs8 a8 \ottava #0 c8 ) _\! | % 65
  a,,8 _\markup{ \small\italic {sub.} } _\mf c8 d4 r8 a8 | % 66
  gs4 a4 r8 d,8 | % 67
  e8 ds8 as8 d8 cs8 as8 | % 68
  b8 cs8 as8 b8 <es fs>4 | % 69
  d8 gs,8 as4 b8 <d fs a>8 | \barNumberCheck #70
  cs4 gs8 a8 gs4 | % 71
  fs2 r4 | % 72
  r2 <es a>4 -. -> _\f | % 73
  d''8 cs8 c4 a8 gs8 | % 74
  as8 b8 ds8 d8 fs,8 es8 | % 75
  e4 g4 gs16 b16 ds,16 d16 | % 76
  cs4 c8 b8 as8 a8 | % 77
  <gs es'>8 fs'8 b8 ds,8 a'4 | % 78
  fs8 es8 g8 gs8 c8 b8 | % 79
  es,8 as8 a4 gs16 cs,8 d16 | \barNumberCheck #80
  e4 a,8 gs8 g8 es8 | % 81
  r4 d'8 cs8 c4 | % 82
  gs'8 g8 cs8 c8 b4 | % 83
  r4 fs8 es8 r4 | % 84
  a8 gs8 g4 e8 ds8 | % 85
  es8 fs8 b8 as8 a4 | % 86
  fs8 es8 g8 gs8 cs8 c8 | % 87
  <as e'>4 gs8 a8 d8 fs,8 | % 88
  a8 as8 ds8 g,8 as8 b8 | % 89
  e8 gs,8 b8 c8 cs4 | \barNumberCheck #90
  ds,8 e8 a8 cs,8 g'4 | % 91
  e8 ds8 es8 fs8 b8 ds,8 | % 92
  a'4 fs8 es8 g8 gs8 | % 93
  d'8 ( _\ff cs8 c4 a8 gs8 | % 94
  as8 b8 ds8 d8 fs,8 es8 | % 95
  e4 g4 gs16 b16 ds,16 d16 | % 96
  cs4 c8 b8 as8 a8 ) | % 97
  d'8 ( cs8 b4 a8 gs8 | % 98
  e'8 ds8 d4 b8 as8 ) | % 99
  <fs b fs'>16 d'16 as16 a16 gs16 g16 fs16 es16 <b e b'>16 g'16 ds16 d16
  | \barNumberCheck #100
  cs16 c16 b16 as16 <a c>8 d8 ds8 as'16 a16 | % 101
  gs8 ( a8 d8 fs,8 c'8 as8 | % 102
  b8 e8 gs,8 d'4 c8 ) | % 103
  <gs c>16 ds16 fs16 a16 as16 cs16 ds16 fs16 gs16 b16 g16 fs16 | % 104
  es16 e16 ds16 d16 <gs, b cs>16 e'16 c16 b16 as16 a16 gs16 g16 | % 105
  as,16 _\fff b16 a'16 fs16 d16 ds16 d'16 cs16 b16 e16 as,16 fs'16 | % 106
  fs,16 g'16 as16 g16 as16 g16 as16 g16 c16 as16 g16 fs16 | % 107
  es16 ds16 b16 gs16 g16 as16 es16 ds16 d16 es16 c16 as16 | % 108
  b16 gs16 g'16 fs16 d16 b16 d16 b16 c16 d16 c16 d16 | % 109
  fs16 gs16 fs16 gs16 fs16 cs16 fs16 cs16 c'16 cs16 c16 cs16 |
  \barNumberCheck #110
  as16 fs16 as16 fs16 gs16 a16 g16 e16 c'16 cs16 c16 b16 | % 111
  a16 d16 gs,16 e'16 \clef "bass" e,16 es16 ds16 c16 gs16 a16 gs16 g16
  | % 112
  es16 as16 e16 c'16 c,16 cs16 c16 gs16 e16 es16 e16 ds16 | % 113
  fs'2 ( -> _\ff <fs b cs>4 | % 114
  <es gs cs>2 <g c>4 | % 115
  <fs as>2 <e fs>4 | % 116
  <ds fs>2 <e a>4 | % 117
  <fs b>2 <ds gs>4 | % 118
  <cs es>2 <gs' b>4 | % 119
  <ds fs>2. | \barNumberCheck #120
  <gs, c es>2. ) | % 121
  <fs' e'>2 ( <g b c>4 | % 122
  <gs as d>2 <es b'>4 | % 123
  <gs cs>2 <fs b>4 | % 124
  <g cs>2 <d as'>4 | % 125
  <d fs gs>2 <cs es>4 | % 126
  <b c ds fs>2. | % 127
  <a b cs es gs>2. ~ ~ ~ ~ ~ | % 128
  <a b cs es gs>2. ) ^\fermata | % 129
  \clef "treble" a'''2 ( _\pp fs4 | \barNumberCheck #130
  gs2 b4 | % 131
  as2 g4 | % 132
  gs2. | % 133
  gs2 fs4 | % 134
  es2 d4 | % 135
  ds2. | % 136
  cs2. ) | % 137
  a2. ( | % 138
  b2 a4 | % 139
  gs2. | \barNumberCheck #140
  g2. | % 141
  fs2 es4 | % 142
  fs2 ds4 | % 143
  es2. ~ _\> | % 144
  es2. | % 145
  <fs, a cs fs>2. ~ ~ ~ ~ | % 146
  <fs a cs fs>2. ) _\! \bar "|."
}

PartPTwoVoiceFive =  \relative fs' {
  \clef "bass" \time 3/4 \key a \major | % 1
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

PartPTwoVoiceSix =  \relative cs {
  \clef "bass" \time 3/4 \key a \major s4*27 s4*15 | % 15
  cs2. ~ | % 16
  cs2 b4 | % 17
  a2 b4 | % 18
  gs2 d'4 | % 19
  cs4 ds2 | \barNumberCheck #20
  b4 gs2 | % 21
  b2 d4 | % 22
  cs2 e4 | % 23
  ds2 fs4 | % 24
  cs2. | % 25
  a2 d4 | % 26
  b2. | % 27
  cs2 b4 | % 28
  as2. | % 29
  b4 cs2 | \barNumberCheck #30
  c4 d2 | % 31
  cs2. ~ | % 32
  cs4 es2 | % 33
  fs2. | % 34
  es4 e4 ds4 | % 35
  cs2. | % 36
  b4 gs4 b4 | % 37
  b8 cs8 es8 fs8 a8 gs8 | % 38
  b,4 cs4 b4 | % 39
  ds2. | \barNumberCheck #40
  es4 b4 cs4 | % 41
  d4. a8 c8 b8 | % 42
  b4. ds8 b4 | % 43
  cs8 fs8 e8 ds8 b8 d8 | % 44
  cs4 ds4 cs4 | % 45
  d2. | % 46
  ds4 b4 ds4 | % 47
  cs8 b8 a8 gs8 fs8 es8 | % 48
  cs4 -> s4*11 s2. s1*3 s2. s1*3 | % 62
  \clef "treble" s2. s1*3 | % 67
  \clef "bass" s2. s2*9 s1*3 s2. s1*3 s2. s4*9 | % 87
  es'8 fs8 b8 ds,8 fs8 g8 s2. s1*3 s2. s1*3 | % 98
  g8 fs8 es4 d8 cs8 s2. s2. s2. | % 102
  ds8 e8 a8 cs,8 g'4 s2. s1. | % 106
  \clef "treble" s2. | % 107
  \clef "bass" s2. s2. | % 109
  \clef "treble" s2. | \barNumberCheck #110
  \clef "bass" s2. s2. s1. s2. s4*9 s4*9 s2. s1. s2. s4*9 s1. s1*6
  s2*9 | % 144
  <a,, a'>2. s1. \bar "|."
}

lower_staff = \relative c {
  \clef "bass"
  \key_and_time
  | c1
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
      \new Staff = "upper" \upper_staff
      \new Staff = "lower" \lower_staff
    >>
  >>
}
