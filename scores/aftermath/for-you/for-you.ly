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

  % measures 1-11
  \compressMMRests {
    R1 * 11 |
  }

  % measure 12
  r2 e8 b4. \glissando |

  \repeat volta 2 {
    % measure 13
    \repeat unfold 8 { e,8 } |

    % measure 14
    \repeat unfold 8 { b } |

    % measure 15
    \repeat unfold 8 { a } |

    \alternative {
      \volta 1 {
      % measure 16
        \repeat unfold 8 { b } |
      }

      \volta 2 {
        % measure 17
        a ( b ) b b \repeat unfold 4 { b }
      }
    }
  }

  % measures 18-25
  \sectionLabel "Verse"
  \compressMMRests {
    R1 * 8 |
  }

  \repeat volta 2 {
    % measure 26
    e2 e4. e8 ~ |

    % measure 27
    e4 \glissando b b2 |

    \alternative {
      \volta 1 {
        % measure 28
        a2 a4. a8 ~ |

        % measure 29
        a4 b4 b2 |
      }

      \volta 2 {
        % measure 30
        \repeat unfold 8 { a8 } |

        % measure 31
        a8 ( b ) b b \repeat unfold 4 { b } |
      }
    }
  }

  % measure 32
  \sectionLabel "Chorus"
  \repeat unfold 8 { e8 } |

  % measure 33
  \repeat unfold 8 { ds8 } |

  % measure 34
  \repeat unfold 8 { cs8 } |

  % measure 35
  \repeat unfold 8 { b8 } |

  % measure 36
  a4. e'8 ~ e4 a ~ |

  % measure 37
  a8 e4. a,4 e'8 a |

  % measure 38
  b,4. fs'8 ~ fs4 b ~ |

  % measure 39
  b8 a4. gs4 ds |

  % measure 40
  e8 \repeat unfold 7 { e, } |

  % measure 41
  \repeat unfold 8 { fs8 } |

  % measure 42
  \repeat unfold 8 { a8 } |

  % measure 43
  b4 b e ds |

  % measure 44
  a4. e'8 ~ e4 a ~ |

  % measure 45
  a8 e4. a,4 e'8 a |

  % measure 46
  b,4. fs'8 ~ fs4 b ~ |

  % measure 47
  b8 a4. gs4 ds |

  \repeat volta 2 {
    % measure 48
    e2 e4. e8 ~ |

    % measure 49
    e4 \glissando b b2 |

    % measure 50
    a2 a4. a8 ~ |

    % measure 51
    a4 b4 b2 |
  }

  % measure 52
  \sectionLabel "Verse"
  e4 r8 e ~ \repeat unfold 4 { e } |

  \repeat volta 2 {
    % measure 53
    gs4 r8 gs ~ \repeat unfold 4 { gs } |

    % measure 54
    cs,4 r8 cs ~ \repeat unfold 4 { cs } |

    % measure 55
    \repeat unfold 4 { b8 } \repeat unfold 4 { ds } |

    % measure 56
    e4 r8 e ~ \repeat unfold 4 { e } |

    % measure 57
    gs4 r8 gs ~ \repeat unfold 4 { gs } |

    % measure 58
    cs,4 r8 cs ~ \repeat unfold 4 { cs } |

    % measure 59
    \repeat unfold 4 { b8 } r8 g4. |

    \alternative {
      \volta 1 {
      % measure 60
        e4 e'8 e ~ \repeat unfold 4 { e }
      }

      \volta 2 {
        % measure 61
        \sectionLabel "Chorus"
        e,4 e'8 e \repeat unfold 4 { e }
      }
    }
  }

  % measure 62
  \repeat unfold 8 { ds8 } |

  % measure 63
  \repeat unfold 8 { cs8 } |

  % measure 64
  \repeat unfold 8 { b8 } |

  % measure 65
  a4. e'8 ~ e4 a ~ |

  % measure 66
  a8 e4. a,4 e'8 a |

  % measure 67
  b,4. fs'8 ~ fs4 b ~ |

  % measure 68
  b8 a4. gs4 ds |

  % measure 69
  e8 \repeat unfold 7 { e, } |

  % measure 70
  \repeat unfold 8 { fs8 } |

  % measure 71
  \repeat unfold 8 { a8 } |

  % measure 72
  b4 b e ds |

  % measure 73
  a4. e'8 ~ e4 a ~ |

  % measure 74
  a8 e4. a,4 e'8 a |

  % measure 75
  b,4. fs'8 ~ fs4 b ~ |

  % measure 76
  b8 a4. gs4 ds |

  \repeat volta 2 {
    % measure 77
    e2 e4. e8 ~ |

    % measure 78
    e4 \glissando b b2 |

    % measure 79
    gs2 gs4. gs8 ~ |

    % measure 80
    gs4 a4 a2 |
  }

  \repeat volta 2 {
      % measure 81
      e'4 e8 e ~ \repeat unfold 4 { e } |

      % measure 82
      b4 b8 b ~ \repeat unfold 4 { b } |

      \alternative {
        \volta 1 {

          % measure 83
          gs4 gs8 gs ~ \repeat unfold 4 { gs } |

          % measure 84
          \repeat unfold 4 { a } cs cs ds ds |
        }

        \volta 2 {
          % measure 85
          \repeat unfold 8 { gs,8 } |

          % measure 86
          \repeat unfold 8 { a8 } |
        }
      }
    }

  % measure 87
  fs4 fs ~ fs8 fs fs a8 ~ |

  % measure 88
  a1 |

  % measure 89
  fs4 fs4 ~ fs8 fs8 fs8 a8 ~ |

  % measures 90-92
  \repeat unfold 3 { a1 ~ } |

  % measure 93
  a1 |

  \bar "|."
}

\layout {
  \context {
    \Score
    \consists
    #(set-bars-per-line
      '(13 4 14 4
        4 4 4 4
        4 4 5 4
        4 4 4 4
        4 5))
  }
}

\score {
  \new Staff \with {
    instrumentName = "Bass Guitar"
  } {
    \music
  }
}
