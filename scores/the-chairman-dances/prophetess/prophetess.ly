\version "2.25.3"

\include "settings.ily"

\header {
  title = "Prophetess"
  composer = "The Chairman Dances"
}

instrumental = \relative f, {
  \repeat volta 2 {
    f2.  r8 bf'' |
    a8 f4 c8 ~ c a4. |
  }
}

slaps = \relative f {
  f,2 ~ f8 f4 f'8 ~

  f8 f c'' f,, f f r c ~ |
  c8 c ef' c, c c r af' ~ |
  af8 af ef'' af,, af af r ef ~ |
  ef8 ef g' ef, ef ef r f, ~ |

  f8 f a' f, f f r c' ~ |
  c8 c g'' c,, c c r af ~ |
  af8 af c' af, af af r ef' ~ |
  ef8 ef bf'' ef,, ef ef r8

}

music = \relative f {
  \tempo 4 = 160
  \key f \major
  \time 4/4
  \clef "bass"

  \partial 4
  r4

  \compressMMRests {
    R1 * 7 |
  }

  r2 r4 r8 f8 ~

  \repeat volta 2 {
    f8 a4 c8 ~ c8 f,8 g8 c,8 ~ |
    c8 ef4 c8 ~ c8 bf4 af8 ~ |
    af8 bf4 c8 ~ c8 af4 g'8 ~ |
    g8 ef4 bf'8 ~ bf8 c4 g8 ~ |
    g8 f4 c'8 ~ c8 bf4 f'8 ~ |
    f8 ef4 bf'8 ~ bf8 af4 g8 ~ |
    g8 ef4 f8 ~ f8 bf,4 bf,8 |

    \alternative {
      \volta 1 {
        c8 ef4 g8 ~ g8 ef4 f8 \laissezVibrer |
      }

      \volta 2 {
        c8 ef4 g8 ~ g8 ef4 f'8 ~ |
      }
    }
  }

  f8 c4 a8 ~ a8 c4 g'8 ~ |
  g8 ef4 g8 ~ g8 ef4 af,8 ~ |
  af8 bf4 c8 ~ c8 af4 ef'8 ~ |
  ef8 d4 bf8 ~ bf8 g4 f'8 ~ |
  f8 a4 c,8 ~ c8 a4 ef8 ~ |
  ef8 g4 ef8 ~ ef8 c4 af8 ~ |
  af8 bf4 c8 ~ c8 af4 g'8 ~ |
  g8 ef4 bf'8 ~ bf8 f'4 a8 ~

  \repeat volta 2 {
    a4. f8 ef8 f4 f,8 |
    g8 bf4 ef,8 ~ ef8 c4 af8 ~ |
    af8 bf4 c8 ~ c8 af4 g'8 ~ |

    \alternative {
      \volta 1 {
        g8 ef8 g8 bf8 c8 ef4 a8 \laissezVibrer |
      }

      \volta 2 {
        g,8 \repeatTie ef4 af,8 ~ af8 g4 f8 ~ |
      }
    }
  }

  f1 ~

  \instrumental

  \slaps

  f'8 ~ |

  f2 r2 |
  r8 bf,16 c16 ef8 c8 ef8 f4 af,8 ~ |
  af2 r2 |
  r8 ef'8 g8 ef8 g8 af8 bf8 f8 ~ |

  f2 r2 |
  r8 bf,16 c16 ef8 e8 f8 bf8 a8 af8 ~ |
  af2 r2 |
  r8 ef'8 g8 ef8 g8 af8 bf8 c8 ~ |

  c8 ef16 d16 c4 ~ c8 ef16 d16 c4 ~ |
  c4. a8 bf8 bf8 f8 a8 |
  g8 ef4. r2 |
  r4 ef,8 ef8 g8 af8 bf8 f8 ~ |

  f2 r2 |
  r8 bf,16 c16 ef8 e8 f8 bf8 a8 af8 ~ |
  af2 r2 |
  r8 f,8 g8 af8 c8 ef8 g8 f8 ~ |

  f8 f8 ef8 f8 ~ f8 f8 ef8 c8 ~ |
  c8 c8 bf8 c8 ~ c8 c8 bf8 af8 ~ |
  af8 af8 g8 af8 ~ af8 f'8 r8 g8 ~ |
  g8 ef4 bf'8 ~ bf8 c4 f,8 ~ |

  f8 f8 ef8 f8 ~ f8 af8 r8 c,8 ~ |
  c8 c8 bf8 c8 ef8 f8 af8 af,8 ~ |
  af8 af8 g8 af8 ~ af8 f'8 r8 ef8 ~ |
  ef8 d4 af8 ~ af8 g4 f8 ~ |

  f4 f'8 f8 ef8 f8 r8 c8 ~ |
  c8 c8 c'8 c8 bf8 c8 r8 af,8 ~ |
  af8 af8 af'8 af8 g8 af8 bf8 g8 ~ |
  g8 ef4 bf'8 ~ bf8 c4 g8 ~ |

  g8 f4 c'8 ~ c8 bf4 f'8 ~ |
  f8 ef4 bf'8 ~ bf8 af4 g8 ~ |
  g8 ef4 f8 ~ f8 bf,4 bf,8 |
  c8 ef4 af,8 ~ af8 g4 f8 ~ |

  f1 ~

  \instrumental

  \slaps

  f8 ~ |

  f1 ~

  \instrumental

  f2 ~ f8 f4 f'8 ~ |
  f4 r2. |

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Instrument"
  } {
    \music
  }
}
