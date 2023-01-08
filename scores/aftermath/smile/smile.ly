\version "2.24.0"

\include "settings.ily"
\include "style.ily"

\header {
  title = "Smile"
  composer = "Aftermath"
}

music = \relative f {
  \tempo 4=144
  \key f \major
  \time 4/4
  \clef "bass"

  % measures 1-24
  \compressMMRests {
    R1 * 24 |
  }

  \repeat volta 2 {
    | % 25
    f4 f4 f8 f4 f8 ~ | % 26
    f8 c8 f8 f8 ~ f8 f8 f4 | % 27
    bf4 bf4 ~ bf8 bf8 f8 bf,8 ~ | % 28
    bf8 bf4 bf8 ~ bf8 bf8 f'8 bf8 ~ }
  \alternative { {
    | % 29
    bf4 bf4 ~ bf8 c8 df8 ef8 ~ | \barNumberCheck #30
    ef8 df4 c8 ~ c8 df8 c4 }
                 {
                   | % 31
                   bf2. f8 bf8 ~ | % 32
                   bf4 f8 bf8 ~ bf2 }
               } | % 33
  d,4 d4 ~ d8 d8 ( f8 ) _\markup{ \bold\teeny {S} } bf8 ~ | % 34
  bf8 bf4 bf8 ~ bf8 bf8 bf4 | % 35
  a4 a4 a8 a8 r4 | % 36
  e8 e4 c8 ~ c8 f8 f8 e8 | % 37
  d4 d4 ~ d8 d8 ( f8 ) _\markup{ \bold\teeny {S} } bf8 ~ | % 38
  bf8 bf4 bf8 ~ bf8 bf8 c8 bf8 | % 39
  a4 a4 a8 a8 r4 | \barNumberCheck #40
  e8 e4 c8 ~ c8 f8 f8 e8 \repeat volta 2 {
    | % 41
    d4 _ "Play 4 times" d4 ~ d8 d8 ( _\markup{ \bold\teeny {S} } f8
    ) bf8 ~ | % 42
    bf8 bf4 bf8 ~ bf8 bf8 bf4 | % 43
    a4. f8 ~ f4 a4 | % 44
    e8 e4 c8 ~ c8 f8 f8 e8 }
  \repeat volta 2 {
    | % 45
    f4 f4 f8 f4 f8 ~ | % 46
    f8 c8 f8 f8 ~ f8 f8 f4 | % 47
    bf4 bf4 ~ bf8 bf8 f8 bf,8 ~ | % 48
    bf8 bf4 bf8 ~ bf8 bf8 f'8 bf8 ~ }
  \alternative { {
    | % 49
    bf4 bf4 bf8 c8 df8 ef8 ~ | \barNumberCheck #50
    ef8 df4 c8 ~ c8 df8 c4 }
                 {
                   | % 51
                   bf2. f8 bf8 ~ | % 52
                   bf4 f8 bf8 ~ bf2 }
               } | % 53
  bf1 ~ | % 54
  bf1 \bar "||"
  \key c \major c,2 c4. c8 ~ | % 56
  c4 b4 b2 | % 57
  a1 ~ | % 58
  a4 e'4 a8 e8 a,4 | % 59
  c2 c4. c8 ~ | \barNumberCheck #60
  c4 e2 g4 | % 61
  a2. e'8 c8 ~ | % 62
  c8 a8 d8 c8 ~ c2 | % 63
  c,2 c4. d8 ~ | % 64
  d4 e2 g4 | % 65
  a2. e8 a,8 ~ | % 66
  a8 a4. a'8 e8 a,4 | % 67
  c2 c4. e8 ~ | % 68
  e4 g2 gs4 | % 69
  a1 ~ | \barNumberCheck #70
  a1 \repeat volta 2 {
    | % 71
    c,2 c4. c8 ~ | % 72
    c4 b4 b2 | % 73
    e2 e4. e8 ~ | % 74
    e8 b8 e,2 g4 }
  \alternative { {
    | % 75
    a2 a4. b8 ~ | % 76
    b4 c2 d4 | % 77
    f2. c8 f8 ~ | % 78
    f8 c8 f4 f8 e8 d4 }
                 {
                   | % 79
                   a2 a4. e'8 ~ | \barNumberCheck #80
                   e4 d4 c8 d8 c4 | % 81
                   f2. c8 f8 ~ | % 82
                   f4 e8 f8 e4 b4 }
               } | % 83
  c2 c4. c8 ~ | % 84
  c4 b4 b2 | % 85
  e,2 e4. e'8 ~ | % 86
  e8 b8 e,4 g4 gs4 | % 87
  a2. b8 c8 | % 88
  d4 c4 b8 c8 b4 | % 89
  f2. c'8 f8 ~ | \barNumberCheck #90
  f8 c8 f4 f8 e8 d4 | % 91
  c2 c2 | % 92
  b2 b2 | % 93
  e,2 e4. e'8 ~ | % 94
  e8 b8 e,2 g4 | % 95
  a2. b8 c8 | % 96
  d4 e2 g4 | % 97
  f2. c8 f8 ~ | % 98
  f4 f4 f8 e8 d4 | % 99
  c1 ~ | \barNumberCheck #100
  c1 ~ | % 101
  c1 ~ | % 102
  c1 \bar "|."
}

\layout {
  \context {
    \Score \consists #(set-bars-per-line '(4))
  }
}

\score {
  \new Staff \with {
    instrumentName = "Bass guitar"
  } {
    \music
  }
}
