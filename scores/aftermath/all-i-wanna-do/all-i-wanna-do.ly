\version "2.25.4"

\include "settings.ily"

\header {
  title = "All I Wanna Do"
  composer = "Aftermath"
  arranger = "Ben Rosen, bass"
}

instrumental = \relative b, {
  \mark \default

  \repeat volta 2 {
    b4 b r8 cs r d ~ |
    d8 d d d ~ d d d a |
    g'4 g g8 fs r e ~ |

    \alternative {
      \volta 1 {
        e8 e e e ~ e e e ( d ) |
      }

      \volta 2 {
        e8 e e ( d ) e b' e, ( d ) |
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

  g,4

  \repeat volta 2 {
    g4 g8 b cs d ~ |
    d8 d d d ~ d d d a |

    \alternative {
      \volta 1,2 {
        fs'4 fs fs8 fs a, b ~ |
        b8 b r a ~ a a a fs ( |
        g4 )
      }

      \volta 3 {
        fs'4 fs fs8 fs cs fs, ~ |
        fs8 fs fs fs ~ fs fs fs ( e ) |
      }
    }
  }

  \instrumental

  \mark \default

  \repeat volta 2 {
    b'4 b r8 cs r d ~ |
    d8 d d d ~ d d d a |

    \alternative {
      \volta 1 {
        g'4 g g8 fs r e ~ |
        e8 e e e ~ e e e ( d ) |
      }

      \volta 2 {
        g4 * 1/2 \glissando
          \single \hideNotes
          \tweak X-offset #2 \tweak X-extent #'( 0 . 0 )
          d4 * 1/2
        r4 r8 fs r e |
        r8 e r e r e e ( d ) |
      }
    }
  }

  \mark \default

  g,4 g g8 b cs d ~ |
  d8 d d d ~ d d d a |
  fs'4 fs fs8 fs a, b ~ |
  b8 b r a ~ a a a fs ( |

  g4 ) g g8 b cs d ~ |
  d8 fs g a ~ a g fs g |
  fs4 fs fs8 fs a, b ~ |
  b8 b r a ~ a a a fs ( |

  g4 ) g g8 b cs d ~ |
  d8 fs ( \glissando a ) d ~ d a g4 |
  fs4 fs fs8 fs r fs ~ |
  fs8 cs fs as cs e d cs |

  \instrumental

  \mark \default

  g,4 g g8 b cs d ~ |
  d8 d d d ~ d d d a |
  fs'4 fs fs8 fs a, b ~ |
  b8 b r a ~ a a a fs |

  g4 g g8 b cs d ~ |
  d8 fs ( \glissando a ) d ~ d a g4 |
  fs4 fs fs8 fs cs fs, ~ |
  fs8 fs fs fs ~ fs fs fs ( e ) |

  g4 g g8 b cs d ~ |
  d8 d d d ~ d d d a |
  fs'4 fs fs8 fs a, b ~ |
  b8 b r a ~ a a a fs ( |

  \mark \default

  g4 ) g g8 b cs d ~ |
  d8 fs g a ~ a g fs ( g ) |
  fs4 fs fs8 fs a, b ~ |
  b8 b r a ~ a a a fs ( |

  g4 ) g g8 b cs d ~ |
  d8 fs ( \glissando a ) d ~ d a g4 |
  fs4 fs fs8 fs a, b ~ |
  b8 b r a ~ a a a fs ( |

  g4 ) g g8 b cs d ~ |
  d8 fs ( \glissando a ) d e ( fs ) e ( d ) |
  \repeat unfold 4 { fs,8 } fs fs cs fs |
  \repeat unfold 4 { fs8 } fs fs fs cs |

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
