\version "2.24.0"

\include "settings.ily"

\header {
  title = "All I Wanna Do"
  composer = "Aftermath"
  arranger = "Ben Rosen, bass"
}

verse = \relative b, {
  \mark \default

  \repeat volta 2 {
    b4 b r8 cs r d ~ |
    d d d d ~ d d d a |
    g'4 g g8 fs r e ~ |

    \alternative {
      \volta 1 {
        \repeat unfold 4 { e8 } ~ e e e ( d ) |
      }

      \volta 2 {
        e e e ( d ) e b' e, ( d ) |
      }
    }
  }
}

music = \relative g {
  \clef "bass"
  \key d \major
  \time 4/4

  \compressMMRests {
    R1 * 15
  }

  r2 r4 g4 \glissando |

  \mark \default

  \repeat volta 2 {
    g,4 g g8 b cs d ~ |
    d8 d d d ~ d d d a |

    \alternative {
      \volta 1,2 {
        fs'4 fs fs8 fs a, b ~ |
        b8 b r a ~ a a a fs |
      }

      \volta 3 {
        fs'4 fs fs8 fs cs fs, ~ |
        \repeat unfold 4 { fs8 } ~ fs fs fs ( e ) |
      }
    }
  }

  \verse

  \mark \default

  \repeat volta 2 {
    b'4 b r8 cs r d ~ |
    d d d d ~ d d d a |

    \alternative {
      \volta 1 {
        g'4 g g8 fs r e ~ |
        \repeat unfold 4 { e8 } ~ e e e ( d ) |
      }

      \volta 2 {
        \afterGrace
        g4 \glissando
        {
          \hideNotes
          d4
          \unHideNotes
        }
        r4 r8 fs r e |
        r e r e r e e ( d ) |
      }
    }
  }

  \mark \default

  g,4 g g8 b cs d ~ |
  d d d d ~ d d d a |
  fs'4 fs fs8 fs a, b ~ |
  b b r a ~ a a a fs ( |

  g4 ) g g8 b cs d ~ |
  d fs g a ~ a g fs g |
  fs4 fs fs8 fs a, b ~ |
  b b r a ~ a a a fs ( |

  g4 ) g g8 b cs d ~ |
  d fs ( \glissando a ) d ~ d a g4 |
  fs4 fs fs8 fs r fs ~ |
  fs cs fs as cs e d cs |

  \verse

  \mark \default

  g,4 g g8 b cs d ~ |
  d d d d ~ d d d a |
  fs'4 fs fs8 fs a, b ~ |
  b b r a ~ a a a fs |

  g4 g g8 b cs d ~ |
  d fs ( \glissando a ) d ~ d a g4 |
  fs4 fs fs8 fs cs fs, ~ |
  fs fs fs fs ~ fs fs fs ( e ) |

  g4 g g8 b cs d ~ |
  d d d d ~ d d d a |
  fs'4 fs fs8 fs a, b ~ |
  b b r a ~ a a a fs ( |

  \mark \default

  g4 ) g g8 b cs d ~ |
  d fs g a ~ a g fs ( g ) |
  fs4 fs fs8 fs a, b ~ |
  b b r a ~ a a a fs ( |

  g4 ) g g8 b cs d ~ |
  d fs ( \glissando a ) d ~ d a g4 |
  fs4 fs fs8 fs a, b ~ |
  b b r a ~ a a a fs ( |

  g4 ) g g8 b cs d ~ |
  d fs ( \glissando a ) d e ( fs ) e ( d ) |
  fs, fs fs fs fs fs cs fs |
  fs fs fs fs fs fs fs cs |

  fs1 ~ |
  fs1 |

  \compressMMRests {
    R1 * 8
  }

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
