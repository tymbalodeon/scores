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
    % measure 25
    f4 f f8 f4 f8 ~ |

    % measure 26
    f8 c f f ~ f f f4 |

    % measure 27
    bf4 bf ~ bf8 bf f bf, ~ |

    % measure 28
    bf8 bf4 bf8 ~ bf bf f' bf ~

    \alternative {
      \volta 1 {
        % measure 29
        bf4 bf ~ bf8 c df ef ~ |

        % measure 30
        ef8 df4 c8 ~ c df c4 |
      }

      \volta 2 {
        % measure 31
        bf2. \repeatTie f8 bf ~ |

        % measure 32
        bf4 f8 bf8 ~ bf2
      }
    }
  }

  % measure 33
  d,4 d ~ d8 d ( f ) bf ~ |

  % measure 34
  bf8 bf4 bf8 ~ bf bf bf4 |

  % measure 35
  a4 a a8 a r4 |

  % measure 36
  e8 e4 c8 ~ c f f e |

  % measure 37
  d4 d ~ d8 d ( f ) bf8 ~ |

  % measure 38
  bf8 bf4 bf8 ~ bf bf c bf |

  % measure 39
  a4 a a8 a r4 |

  % measure 40
  e8 e4 c8 ~ c f f e

  \repeat volta 2 {
    % measure 41
    d4 d ~ d8 d ( f ) bf ~ |

    % measure 42
    bf8 bf4 bf8 ~ bf bf bf4 |

    % measure 43
    a4. f8 ~ f4 a |

    % measure 44
    e8 e4 c8 ~ c f f e
  }

  \repeat volta 2 {
    % measure 45
    f4 f f8 f4 f8 ~ |

    % measure 46
    f8 c f f ~ f f f4 |

    % measure 47
    bf4 bf ~ bf8 bf f bf, ~ |

    % measure 48
    bf8 bf4 bf8 ~ bf bf f' bf ~

    \alternative {
      \volta 1 {
        % measure 49
        bf4 bf bf8 c df ef ~ |

        % measure 50
        ef8 df4 c8 ~ c df c4
      }

      \volta 2 {
        % measure 51
        bf2. \repeatTie f8 bf ~ |

        % measure 52
        bf4 f8 bf ~ bf2 }
    }
  }

  % measure 53
  bf1 ~ |

  % measure 54
  bf1 |

  % measure 55
  \key c \major
  c,2 c4. c8 ~ |

  % measure 56
  c4 b b2 |

  % measure 57
  a1 ~ |

  % measure 58
  a4 e' a8 e a,4 |

  % measure 59
  c2 c4. c8 ~ |

  % measure 60
  c4 e2 g4 |

  % measure 61
  a2. e'8 c ~ |

  % measure 62
  c8 a d c ~ c2 |

  % measure 63
  c,2 c4. d8 ~ |

  % measure 64
  d4 e2 g4 |

  % measure 65
  a2. e8 a, ~ |

  % measure 66
  a8 a4. a'8 e a,4 |

  % measure 67
  c2 c4. e8 ~ |

  % measure 68
  e4 g2 gs4 |

  % measure 69
  a1 ~ |

  % measure 70
  a1 |

  \repeat volta 2 {
    % measure 71
    c,2 c4. c8 ~ |

    % measure 72
    c4 b4 b2 |

    % measure 73
    e2 e4. e8 ~ |

    % measure 74
    e8 b8 e,2 g4

    \alternative {
      \volta 1 {
        % measure 75
        a2 a4. b8 ~ |

        % measure 76
        b4 c2 d4 |

        % measure 77
        f2. c8 f ~ |

        % measure 78
        f8 c8 f4 f8 e d4
      }

      \volta 2 {
          % measure 78
          a2 a4. e'8 ~ |

          % measure 79
          e4 d c8 d c4 |

          % measure 80
          f2. c8 f ~ |

          % measure 81
          f4 e8 f e4 b |
      }
    }
  }

  % measure 82
  c2 c4. c8 ~ |

  % measure 83
  c4 b b2 |

  % measure 84
  e,2 e4. e'8 ~ |

  % measure 85
  e8 b e,4 g gs |

  % measure 86
  a2. b8 c |

  % measure 87
  d4 c b8 c b4 |

  % measure 88
  f2. c'8 f ~ |

  % measure 89
  f8 c f4 f8 e d4 |

  % measure 90
  c2 c |

  % measure 91
  b2 b |

  % measure 92
  e,2 e4. e'8 ~ |

  % measure 93
  e8 b e,2 g4 |

  % measure 94
  a2. b8 c |

  % measure 95
  d4 e2 g4 |

  % measure 96
  f2. c8 f ~ |

  % measure 97
  f4 f f8 e d4 |

  % measure 98
  c1 ~ |

  % measure 99
  c1 ~ |

  % measure 100
  c1 ~ |

  % measure 101
  c1

  \bar "|."
}

\layout {
  \context {
    \Score
    \consists
    #(set-bars-per-line '(27 5 4 4
                          4 4 4 6
                          4 4 4 4
                          4 4 4 4
                          4 4 4))
  }
}

\score {
  \new Staff \with {
    instrumentName = "Bass guitar"
  } {
    \music
  }
}
