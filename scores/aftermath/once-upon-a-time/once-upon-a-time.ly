\version "2.24.0"

\include "settings.ily"
\include "style.ily"

\header {
  title = "Once Upon A Time"
  composer = "Aftermath"
}

music = \relative d {
  \key d \major
  \time 4/4
  \clef "bass"

  % measures 1-24
  \compressMMRests {
    R1 * 24 |
  }

  \repeat volta 2 {
    % measure 25
    d4 d d8 d4 \glissando g,8 ~ |

    % measure 26
    g8 g g g ~ g g g4 \glissando |

    % measure 27
    b4 b b8 b4 \glissando g8 ~ |
    \alternative {
      \volta 1 {

        % measure 28
        g8 g g g ~ g g g4 \glissando |
      }

      \volta 2 {
        % measure 29
        g8 g g g ~ g g g4 |
      }
    }
  }

  \repeat volta 2 {
                 | \barNumberCheck #30
                 b4 b4 r8 cs8 ( _\markup{ \bold\teeny {H} } d8 ) g8 ~ | % 31
                 g8 g8 r8 g8 ~ g8 g8 g8 d8 _\markup{ \bold\teeny {0} } | % 32
                 fs4 fs4 d8 fs8 ( _\markup{ \bold\teeny {H} } g8 ) ( a8 ) ~
                 _\markup{ \bold\teeny {S} } | % 33
                 a8 d8 r8 cs8 ~ cs8 d,8 _\markup{ \bold\teeny {0} } a'4 }
  \alternative { {
    | % 34
    b,4 b4 r8 cs8 ( _\markup{ \bold\teeny {H} } d8 ) g8 ~ | % 35
    g8 g8 r8 g8 ~ g8 g8 g8 d8 _\markup{ \bold\teeny {0} } | % 36
    fs4 fs4 d8 fs8 ( _\markup{ \bold\teeny {H} } g8 ) ( a8 ) ~
    _\markup{ \bold\teeny {S} } | % 37
    a8 cs8 d8 e8 ~ e8 d8 cs8 d8 }
                 {
                   | % 38
                   b,4 b4 r8 cs8 ( _\markup{ \bold\teeny {H} } d8 ) g8 ~ | % 39
                   g8 g8 r8 g8 ~ g8 g8 g8 d8 _\markup{ \bold\teeny {0} } |
                   \barNumberCheck #40
                   fs4. d8 ~ d4 cs4 | % 41
                   a4. g8 ~ g4 fs4 }
               } \repeat volta 2 {
                 | % 42
                 d'4 d4 d8 d4 \glissando g,8 ~ | % 43
                 g8 g8 g8 g8 ~ g8 g8 \once \override Glissando.style = #'zigzag g4
                 \glissando | % 44
                 b4 b4 b8 \once \override Glissando.style = #'zigzag b4
                 \glissando g8 ~ | % 45
                 g8 g8 g8 g8 ~ g8 g8 \once \override Glissando.style = #'zigzag g4
                 \glissando }
  | % 46
  d'4 d4 r8 a'8 r8 d,8 | % 47
  r8 d8 r8 d8 ~ d8 e8 fs4 | % 48
  g4 g4 r8 a8 r8 g8 ~ | % 49
  g4 r8 g8 ~ g8 g8 cs8 ( _\markup{ \bold\teeny {H} } d8 ) ~ |
  \barNumberCheck #50
  d4 d4 ~ d8 d4. ~ | % 51
  d4. d8 ~ d4 a4 | % 52
  g4 g4 \once \override NoteHead.style = #'cross a,8 \once \override
  NoteHead.style = #'cross a8 fs'8 g8 | % 53
  r8 g8 r8 g8 ~ g8 fs8 e4 | % 54
  d4 d4 r8 a'8 g8 fs8 ~ | % 55
  fs4. fs8 ~ fs4 e8 fs8 | % 56
  g4 r8 a8 ~ a4 cs4 ~ | % 57
  cs8 a4. r2 | % 58
  r4 fs4 ~ fs8 fs8 r4 | % 59
  r4 r8 b8 ~ b4 a4 | \barNumberCheck #60
  g4 g4 \once \override NoteHead.style = #'cross a,8 \once \override
  NoteHead.style = #'cross a8 fs'8 g8 | % 61
  r8 g8 r8 g8 ~ g8 fs8 e4 \repeat volta 2 {
    | % 62
    d4 d4 d8 d4 \glissando g,8 ~ | % 63
    g8 g8 g8 g8 ~ g8 g8 \once \override Glissando.style = #'zigzag g4
    \glissando | % 64
    b4 b4 b8 \once \override Glissando.style = #'zigzag b4
    \glissando g8 ~ }
  \alternative { {
    | % 65
    g8 g8 g8 g8 ~ g8 g8 \once \override Glissando.style =
    #'zigzag g4 \glissando }
                 {
                   | % 66
                   g8 g8 g8 g8 ~ g8 g8 g4 }
               } \repeat volta 2 {
                 | % 67
                 b4 b4 r8 cs8 ( _\markup{ \bold\teeny {H} } d8 ) g8 ~ | % 68
                 g8 g8 r8 g8 ~ g8 g8 g8 d8 _\markup{ \bold\teeny {0} } | % 69
                 fs4 fs4 d8 fs8 ( _\markup{ \bold\teeny {H} } g8 ) ( a8 ) ~
                 _\markup{ \bold\teeny {S} } | \barNumberCheck #70
                 a8 d8 r8 cs8 ~ cs8 d,8 _\markup{ \bold\teeny {0} } a'4 }
  \alternative { {
    | % 71
    b,4 b4 r8 cs8 ( _\markup{ \bold\teeny {H} } d8 ) g8 ~ | % 72
    g8 g8 r8 g8 ~ g8 g8 g8 d8 _\markup{ \bold\teeny {0} } | % 73
    fs4 fs4 d8 fs8 ( _\markup{ \bold\teeny {H} } g8 ) ( a8 ) ~
    _\markup{ \bold\teeny {S} } | % 74
    a8 cs8 d8 e8 ~ e8 d8 cs8 d8 }
                 {
                   | % 75
                   b,4 b4 r8 cs8 ( _\markup{ \bold\teeny {H} } d8 ) g8 ~ | % 76
                   g8 g8 r8 g8 ~ g8 g8 g8 d8 _\markup{ \bold\teeny {0} } | % 77
                   fs4. d8 ~ d4 cs4 | % 78
                   a4. g8 ~ g4 fs4 }
               } \repeat volta 2 {
                 | % 79
                 d'4 d4 d8 d4 \glissando g,8 ~ | \barNumberCheck #80
                 g8 g8 g8 g8 ~ g8 g8 \once \override Glissando.style = #'zigzag g4
                 \glissando | % 81
                 b4 b4 b8 \once \override Glissando.style = #'zigzag b4
                 \glissando g8 ~ | % 82
                 g8 g8 g8 g8 ~ g8 g8 \once \override Glissando.style = #'zigzag g4
                 \glissando }
  \repeat volta 2 {
    | % 83
    d'2 d2 | % 84
    g,2 g2 | % 85
    b2 b2 | % 86
    g2 g2 }
  \repeat volta 2 {
    | % 87
    b2 b2 | % 88
    a2 a2 }
  \alternative { {
    | % 89
    g2 g2 | \barNumberCheck #90
    d'2 cs2 }
                 {
                   | % 91
                   g1 ~ :8 | % 92
                   g1 :8 }
               } \repeat volta 2 {
                 | % 93
                 b4. b8 ~ b2 | % 94
                 a4. a8 ~ a2 }
  \alternative { {
    | % 95
    g4. g8 ~ g2 | % 96
    d'2 cs2 }
                 {
                   | % 97
                   g1 ~ :8 | % 98
                   g1 ~ :8 }
               } | % 99
  g2 ~ :8 g4. :8 g8 ~ -> | \barNumberCheck #100
  g1 ~ | % 101
  g1 | % 102
  s1*24 \bar "|."
}

PartPOneVoiceTwo =  \relative b, {
  \clef "bass" \numericTimeSignature\time 4/4 \key d \major
  \transposition c | % 1
  s1*24 \repeat volta 2 {
    s1*3 }
  \alternative { {
    s1 }
                 {
                   s1 }
               } \repeat volta 2 {
                 s1*4 }
  \alternative { {
    s1 s1*3 }
                 {
                   s1*3 s1 }
               } \repeat volta 2 {
                 s1*4 }
  s1 s1*3 | \barNumberCheck #50
  b2 b4. b8 ~ | % 51
  b8 b8 ~ b4 ~ b8 b8 r4 s1 s1*3 | % 56
  r4 d4 ~ d8 d4. | % 57
  d4. d8 g8 fs4 d8 | % 58
  b2 b4 r8 b8 | % 59
  r8 cs8 ( _\markup{ \bold\teeny {H} } d4 ) ~ d8 d4. s1*2 \repeat
  volta 2 {
    s1*3 }
  \alternative { {
    s1 }
                 {
                   s1 }
               } \repeat volta 2 {
                 s1*3 s1 }
  \alternative { {
    s1*4 }
                 {
                   s1 s1*3 }
               } \repeat volta 2 {
                 s1*3 s1 }
  \repeat volta 2 {
    s1*4 }
  \repeat volta 2 {
    s1*2 }
  \alternative { {
    s1 s1 }
                 {
                   s1*2 }
               } \repeat volta 2 {
                 s1*2 }
  \alternative { {
    s1 s1 }
                 {
                   s1*2 }
               } s1*3 | % 102
  s1*24 \bar "|."
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
