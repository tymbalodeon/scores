\version "2.24.0"

\include "settings.ily"
\include "style.ily"

\header {
  title = "For You"
  composer = "Aftermath"
}

music = \relative e' {
    \tempo 4 = 176
    \key e \major
    \time 4/4
    \clef "bass"

    \partial 2
    r2 |

    % measures 1-12
    \compressMMRests {
      R1 * 11 |
    }

    % measure 13
    r2 e8 b4. \glissando |

    \repeat volta 2 {
      % measure 14
      \repeat unfold 8 { e,8 } |

      % measure 15
      \repeat unfold 8 { b } |

      % measure 16
      \repeat unfold 8 { a } |

      \alternative {
        \volta 1 {
        % measure 17
          \repeat unfold 8 { b } |
        }

        \volta 2 {
          % measure 18
          a ( b ) b b \repeat unfold 4 { b }
        }
      }
    }

    % measures 19-25
    \compressMMRests {
      R1 * 8 |
    }
    \repeat volta 2 {
        e2 e4. e8 ~ |
        e4 b4 b2
      }
    \alternative { {
            | % 29
            a2 a4. a8 ~ | \barNumberCheck #30
            a4 b4 b2 }
        {
            | % 31
            a8 a8 a8 a8 a8 a8 a8 a8 | % 32
            a8 ( b8 ) _\markup{ \bold\teeny {H} } b8 b8 b8 b8 b8 b8 }
        } | % 33
    e8 e8 e8 e8 e8 e8 e8 e8 | % 34
    ds8 ds8 ds8 ds8 ds8 ds8 ds8 ds8 | % 35
    cs8 cs8 cs8 cs8 cs8 cs8 cs8 cs8 | % 36
    b8 b8 b8 b8 b8 b8 b8 b8 | % 37
    a4. e'4. a4 ~ | % 38
    a8 e4. a,4 e'8 a8 | % 39
    b,4. fs'4. b4 ~ | \barNumberCheck #40
    b8 a4. gs4 ds4 | % 41
    e8 e,8 e8 e8 e8 e8 e8 e8 | % 42
    fs8 fs8 fs8 fs8 fs8 fs8 fs8 fs8 | % 43
    a8 a8 a8 a8 a8 a8 a8 a8 | % 44
    b4 b4 e4 ds4 | % 45
    a4. e'4. a4 ~ | % 46
    a8 e4. a,4 e'8 a8 | % 47
    b,4. fs'4. b4 ~ | % 48
    b8 a4. gs4 ds4 \repeat volta 2 {
        | % 49
        e2 e4. e8 ~ | \barNumberCheck #50
        e4 b4 b2 | % 51
        a2 a4. a8 ~ }
    \alternative { {
            | % 52
            a4 b4 b2 }
        {
            | % 53
            a4 b4 b2 }
        } | % 54
    e4 r8 e8 ~ e8 e8 e8 e8 \repeat volta 2 {
        | % 55
        gs4 r8 gs8 ~ gs8 gs8 gs8 gs8 | % 56
        cs,4 r8 cs8 ~ cs8 cs8 cs8 cs8 | % 57
        b8 b8 b8 b8 ds8 ds8 ds8 ds8 | % 58
        e4 r8 e8 ~ e8 e8 e8 e8 | % 59
        gs4 r8 gs8 ~ gs8 gs8 gs8 gs8 | \barNumberCheck #60
        cs,4 r8 cs8 ~ cs8 cs8 cs8 cs8 | % 61
        b8 b8 b8 b8 r8 g4. }
    \alternative { {
            | % 62
            e4 e'8 e8 ~ e8 e8 e8 e8 }
        {
            | % 63
            e,4 e'8 e8 e8 e8 e8 e8 }
        } | % 64
    ds8 ds8 ds8 ds8 ds8 ds8 ds8 ds8 | % 65
    cs8 cs8 cs8 cs8 cs8 cs8 cs8 cs8 | % 66
    b8 b8 b8 b8 b8 b8 b8 b8 | % 67
    a4. e'4. a4 ~ | % 68
    a8 e4. a,4 e'8 a8 | % 69
    b,4. fs'4. b4 ~ | \barNumberCheck #70
    b8 a4. gs4 ds4 | % 71
    e8 e,8 e8 e8 e8 e8 e8 e8 | % 72
    fs8 fs8 fs8 fs8 fs8 fs8 fs8 fs8 | % 73
    a8 a8 a8 a8 a8 a8 a8 a8 | % 74
    b4 b4 e4 ds4 | % 75
    a4. e'4. a4 ~ | % 76
    a8 e4. a,4 e'8 a8 | % 77
    b,4. fs'4. b4 ~ | % 78
    b8 a4. gs4 ds4 \repeat volta 2 {
        | % 79
        e2 e4. e8 ~ | \barNumberCheck #80
        e4 b4 b2 }
    \alternative { {
            | % 81
            gs2 gs4. gs8 ~ | % 82
            gs4 a4 a2 }
        {
            | % 83
            gs4 gs4 ~ gs8 gs8 gs8 a8 ~ | % 84
            a8 a8 a8 a8 a8 a8 a8 a8 }
        } \repeat volta 2 {
        | % 85
        e'4 e8 e8 ~ e8 e8 e8 e8 | % 86
        b4 b8 b8 ~ b8 b8 b8 b8 }
    \alternative { {
            | % 87
            gs4 gs8 gs8 ~ gs8 gs8 gs8 gs8 | % 88
            a8 a8 a8 a8 cs8 cs8 ds8 ds8 }
        {
            | % 89
            gs,8 gs8 gs8 gs8 gs8 gs8 gs8 gs8 | \barNumberCheck #90
            a8 a8 a8 a8 a8 a8 a8 a8 }
        } | % 91
    fs4 fs4 ~ fs8 fs8 fs8 a8 ~ | % 92
    a1 | % 93
    fs4 fs4 ~ fs8 fs8 fs8 a8 ~ | % 94
    a1 ~ | % 95
    a1 ~ | % 96
    a1 ~ | % 97
    a1 \bar "|."
    }

PartPOneVoiceOneChords =  \chordmode {
    | % 1
    s8 s16 s16 s16 s16 s8*5 | % 2
    s1*11 | % 13
    s2 s8 s4. \repeat volta 2 {
        | % 14
        e8:5 s8 s8 s8 s8 s8 s8 s8 | % 15
        b8:5 s8 s8 s8 s8 s8 s8 s8 | % 16
        a8:5 s8 s8 s8 s8 s8 s8 s8 }
    \alternative { {
            | % 17
            b8:5 s8 s8 s8 s8 s8 s8 s8 }
        {
            | % 18
            b8:5 s8 s8 s8 s8 s8 s8 s8 }
        } | % 19
    s1*8 \repeat volta 2 {
        | % 27
        e2:5 s4. s8 | % 28
        b4:5 s4 s2 }
    \alternative { {
            | % 29
            a2:5 s4. s8 | \barNumberCheck #30
            s4 s4 s2 }
        {
            | % 31
            a8:5 s8 s8 s8 s8 s8 s8 s8 | % 32
            s8 s8 s8 s8 s8 s8 s8 s8 }
        } | % 33
    e8:5 s8 s8 s8 s8 s8 s8 s8 | % 34
    b8:sus4 s8 s8 s8 s8 s8 s8 s8 | % 35
    a8:9 s8 s8 s8 s8 s8 s8 s8 | % 36
    b8:sus4 s8 s8 s8 s8 s8 s8 s8 | % 37
    a4.:5 s4. s4 | % 38
    s8 s4. s4 s8 s8 | % 39
    b4.:5 s4. s4 | \barNumberCheck #40
    s8 s4. s4 s4 | % 41
    e8:5 s8 s8 s8 s8 s8 s8 s8 | % 42
    b8:sus4 s8 s8 s8 s8 s8 s8 s8 | % 43
    a8:9 s8 s8 s8 s8 s8 s8 s8 | % 44
    b4:sus4 s4 s4 s4 | % 45
    a4.:5 s4. s4 | % 46
    s8 s4. s4 s8 s8 | % 47
    b4.:5 s4. s4 | % 48
    s8 s4. s4 s4 \repeat volta 2 {
        | % 49
        e2:5 s4. s8 | \barNumberCheck #50
        b4:5 s4 s2 | % 51
        a2:5 s4. s8 }
    \alternative { {
            | % 52
            b4:5 s4 s2 }
        {
            | % 53
            b4:5 s4 s2 }
        } | % 54
    e4:5 s8 s8 s8 s8 s8 s8 \repeat volta 2 {
        | % 55
        b4:5 s8 s8 s8 s8 s8 s8 | % 56
        a4:5 s8 s8 s8 s8 s8 s8 | % 57
        s8 s8 s8 s8 s8 s8 s8 s8 | % 58
        e4:5 s8 s8 s8 s8 s8 s8 | % 59
        b4:5 s8 s8 s8 s8 s8 s8 | \barNumberCheck #60
        a4:5 s8 s8 s8 s8 s8 s8 | % 61
        s8 s8 s8 s8 s8 s4. }
    \alternative { {
            | % 62
            e4:5 s8 s8 s8 s8 s8 s8 }
        {
            | % 63
            e4:5 s8 s8 s8 s8 s8 s8 }
        } | % 64
    b8:sus4 s8 s8 s8 s8 s8 s8 s8 | % 65
    a8:9 s8 s8 s8 s8 s8 s8 s8 | % 66
    b8:sus4 s8 s8 s8 s8 s8 s8 s8 | % 67
    a4.:5 s4. s4 | % 68
    s8 s4. s4 s8 s8 | % 69
    b4.:5 s4. s4 | \barNumberCheck #70
    s8 s4. s4 s4 | % 71
    e8:5 s8 s8 s8 s8 s8 s8 s8 | % 72
    b8:sus4 s8 s8 s8 s8 s8 s8 s8 | % 73
    a8:9 s8 s8 s8 s8 s8 s8 s8 | % 74
    b4:sus4 s4 s4 s4 | % 75
    a4.:5 s4. s4 | % 76
    s8 s4. s4 s8 s8 | % 77
    b4.:5 s4. s4 | % 78
    s8 s4. s4 s4 \repeat volta 2 {
        | % 79
        e2:5 s4. s8 | \barNumberCheck #80
        b4:5 s4 s2 }
    \alternative { {
            | % 81
            a2:5 s4. s8 | % 82
            b4:5 s4 s2 }
        {
            | % 83
            gs4:m5 s4 s8 s8 s8 s8 | % 84
            a8:5 s8 s8 s8 s8 s8 s8 s8 }
        } \repeat volta 2 {
        | % 85
        e4:5 s8 s8 s8 s8 s8 s8 | % 86
        b4:5 s8 s8 s8 s8 s8 s8 }
    \alternative { {
            | % 87
            gs4:m5 s8 s8 s8 s8 s8 s8 | % 88
            a8:5 s8 s8 s8 s8 s8 s8 s8 }
        {
            | % 89
            gs8:m5 s8 s8 s8 s8 s8 s8 s8 | \barNumberCheck #90
            a8:5 s8 s8 s8 s8 s8 s8 s8 }
        } | % 91
    fs4:m5 s4 s8 s8 s8 s8 | % 92
    a1:5 | % 93
    fs4:m5 s4 s8 s8 s8 s8 | % 94
    a1:5 | % 95
    s1 | % 96
    s1 | % 97
    s1 \bar "|."
    }

PartPOneVoiceTwo =  \relative c' {
    \clef "percussion" \numericTimeSignature\time 4/4 \key e \major
    \transposition c s1 | % 2
    \clef "bass" s1*12 \repeat volta 2 {
        s1*2 s1 }
    \alternative { {
            s1 }
        {
            s1 }
        } | % 19
    s1*8 \repeat volta 2 {
        s1 s1 }
    \alternative { {
            s1*2 }
        {
            s1*2 }
        } s1*5 s1*5 s1*6 \repeat volta 2 {
        s1*3 }
    \alternative { {
            s1 }
        {
            s1 }
        } s1 \repeat volta 2 {
        s1*4 s1*3 }
    \alternative { {
            s1 }
        {
            s1 }
        } s1*5 s1*5 s1*5 \repeat volta 2 {
        s1 s1 }
    \alternative { {
            s1*2 }
        {
            s1*2 }
        } \repeat volta 2 {
        s1*2 }
    \alternative { {
            s1*2 }
        {
            s1*2 }
        } s1 s1*6 \bar "|."
    }

\layout {
  \context {
    \Score \consists #(set-bars-per-line '(4))
  }
}

\score {
  \new Staff \with {
    instrumentName = "Bass Guitar"
  } {
    \music
  }
}
