\version "2.24.0"

\include "settings.ily"

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
        % measure 30
        b4 b r8 cs ( d ) g ~ |

        % measure 31
        g8 g r g ~ g g g d |

        % measure 32
        fs4 fs d8 fs ( g ) ( a ) ~ |

        % measure 33
        a8 d r cs ~ cs d,  a'4

        \alternative {
            \volta 1 {
                % measure 34
                b,4 b r8 cs ( d ) g ~ |

                % measure 35
                g8 g r g ~ g g g d |

                % measure 36
                fs4 fs d8 fs ( g ) ( a ) ~ |

                % measure 37
                a8 cs d e ~ e d cs d |
            }

            \volta 2 {
                % measure 38
                b,4 b r8 cs ( d ) g ~ |

                % measure 39
                g8 g r g ~ g g g d |

                % measure 40
                fs4. d8 ~ d4 cs |

                % measure 41
                a4. g8 ~ g4 fs |
            }
        }
    }

    \repeat volta 2 {
        % measure 42
        d'4 4 d8 d4 \glissando g,8 ~ |

        % measure 43
        g8 g g g ~ g g g4 \glissando |

        % measure 44
        b4 b b8 b4 \glissando g8 ~ |

        % measure 45
        g8 g g g ~ g g g4 \glissando |
        }

        % measure 46
        d'4 d r8 a' r d, |

    % measure 47
    r8 d r d ~ d e fs4 |

    % measure 48
    g4 g r8 a r g ~ |

    % measure 49
    g4 r8 g ~ g g cs ( d ) ~ |

    % measure 50
    d4 d ~ d8 d4. ~ |

    % measure 51
    d4. d8 ~ d4 a |

    % measure 52
    g4 g
    \once \override NoteHead.style = #'cross a,8
    \once \override NoteHead.style = #'cross a
    fs'8 g |

    % measure 53
    r8 g r g ~ g fs e4

    % measure 54
    d4 d r8 a' g fs ~

    % measure 55
    fs4. fs8 ~ fs4 e8 fs

    % measure 56
    g4 r8 a ~ a4 cs ~

    % measure 57
    cs8 a4. r2

    % measure 58
    r4 fs ~ fs8 fs r4

    % measure 59
    r4 r8 b ~ b4 a |

    % measure 60
    g4 g
    \once \override NoteHead.style = #'cross a,8
    \once \override NoteHead.style = #'cross a
    fs' g |

    % measure 61
    r8 g r g ~ g fs e4 |

    \repeat volta 2 {
      % measure 62
      d4 d d8 d4 \glissando g,8 ~ |

      % measure 63
      g8 g g g ~ g g g4 \glissando |

      % measure 64
      b4 b4 b8 b4 \glissando g8 ~ |

      \alternative {
        \volta 1 {
          % measure 65
          g8 g g g ~ g g g4 \glissando |
        }

        \volta 2  {
          % measure 66
          g8 g g g ~ g g g4 |
        }
      }
    }

    \repeat volta 2 {
      % measure 67
      b4 b r8 cs ( d ) g ~ |

      % measure 68
      g8 g r g ~ g g g d |

      % measure 69
      fs4 fs d8 fs ( g ) ( a ) ~ |

      % measure 70
      a8 d r cs ~ cs d, a'4 |

      \alternative {
        \volta 1 {
          % measure 71
          b,4 b r8 cs ( d ) g ~ |

          % measure 72
          g8 g r g ~ g g g d |

          % measure 73
          fs4 fs d8 fs ( g ) ( a ) ~ |

          % measure 74
          a8 cs d e ~ e d cs d8 |
        }

        \volta 2 {
          % measure 75
          b,4 b r8 cs ( d ) g ~ |

          % measure 76
          g8 g r g ~ g g g d  |

          % measure 77
          fs4. d8 ~ d4 cs |

          % measure 78
          a4. g8 ~ g4 fs |
        }
      }
    }

    \repeat volta 2 {
      % measure 79
      d'4 d d8 d4 \glissando g,8 ~ |

      % measure 80
      g8 g g g ~ g g g4 \glissando |

      % measure 81
      b4 b b8 b4 \glissando g8 ~ |

      % measure 82
      g8 g g g ~ g g g4 \glissando |
    }

    \repeat volta 2 {
      % measure 83
      d'2 d |

      % measure 84
      g,2 g |

      % measure 85
      b2 b |

      % measure 86
      g2 g |
    }

    \repeat volta 2 {
      % measure 87
      b2 b |

      % measure 88
      a2 a |


      \alternative {
        \volta 1 {
          % measure 89
          g2 g |

          % measure 90
          d'2 cs |
        }

        \volta 2 {
          % measure 91
          g1 ~ :8 |

          % measure 92
          g1 :8 |
        }
      }
    }

    \repeat volta 2 {
      % measure 93
      b4. b8 ~ b2 |

      % measure 94
      a4. a8 ~ a2 |

      \alternative {
        \volta 1 {
          % measure 95
          g4. g8 ~ g2 |

          % measure 96
          d'2 cs |
        }

        \volta 2 {
          % measure 97
          g1 ~ :8 |

          % measure 98
          g1 ~ :8 |
        }
      }
    }

    % measure 99
    g2 ~ :8 g4. :8 g8 ~ -> |

    % measure 100
    g1 ~ |

    % measure 101
    g1 |

    % measures 102-126
    \compressMMRests {
      R1 * 24 |
    }

    \bar "|."
  }

\score {
  \new Staff \with {
    instrumentName = "Bass guitar"
  } {
    \music
  }
}
