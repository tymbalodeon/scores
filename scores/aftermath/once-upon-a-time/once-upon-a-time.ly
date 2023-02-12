\version "2.24.1"

\include "settings.ily"

\header {
  title = "Once Upon A Time"
  composer = "Aftermath"
  arranger = "Ben Rosen, bass"
}

riff = \relative d {
  \mark \default

  \repeat volta 2 {
    d4 d d8 d4 \glissando g,8 ~ |
    g8 g g g ~ g g g4 \glissando |
    b4 b b8 b4 \glissando g8 ~ |

    \alternative {
      \volta 1 {
        g8 g g g ~ g g
        g4 * 1/2 \glissando
        \single \hideNotes
        \tweak X-offset #1 \tweak X-extent #'( 0 . 0 )
        d'4 * 1/2 |
      }

      \volta 2 {
        g,8 \repeatTie g g g ~ g g g4 |
      }
    }
  }
}

chorus = \relative b, {
  \mark \default

  \repeat volta 3 {
    b4 b r8 cs ( d ) g ~ |
    g8 g r g ~ g g g d |

    \alternative {
      \volta 1 {
        fs4 fs d8 fs ( g ) ( a ) ~ |
        a8 d r cs ~ cs d,  a'4
      }

      \volta 2 {
        fs4 fs d8 fs ( g ) ( a ) ~ |
        a8 cs d e ~ e d cs d |
      }

      \volta 3 {
        fs,4. d8 ~ d4 cs |
        a4. g8 ~ g4 fs |
      }
    }
  }
}

music = \relative d {
  \key d \major
  \time 4/4
  \clef "bass"

  \compressMMRests {
    R1 * 24 |
  }

  \riff

  \chorus

  \riff

  \mark \default

  d4 d r8 a' r d, |
  r8 d r d ~ d e fs4 |
  g4 g r8 a r g ~ |

  g4 r8 g ~ g g

  << {

    \stemNeutral
    cs ( d ) ~ |
    \stemUp
    d4 d ~ d8 d4. ~ |
    d4. d8 ~ d4 a |

  } \\ {

    s4
    b,2 b4. b8 ~ |
    b8 b4. ~ b8 b r4 |

  } >>

  g'4 g
  \once \override NoteHead.style = #'cross a,8
  \once \override NoteHead.style = #'cross a
  fs'8 g |

  r8 g r g ~ g fs e4 |
  d4 d r8 a' g fs ~ |
  fs4. fs8 ~ fs4 e8 fs |

  << {
    g4. a8~ a4 cs ~ |
    cs8 a4.

  } \\ {

    r4 d, ~ d8 d4. |
    d d8
  } >>

  g fs4 d8 |

  << {
    r4 fs ~ fs8 fs r4 |
    r4 r8 b ~ b4 a |

  } \\ {

    b,2 b4. b8 |
    r cs ( d4 ) ~ d8 d4. |
  } >>

  g4 g
  \once \override NoteHead.style = #'cross a,8
  \once \override NoteHead.style = #'cross a
  fs' g |

  r8 g r g ~ g fs e4 |

  \mark \default

  \repeat volta 2 {
    d4 d d8 d4 \glissando g,8 ~ |
    g8 g g g ~ g g g4 \glissando |
    b4 b4 b8 b4 \glissando g8 ~ |

    \alternative {
      \volta 1 {
        g8 g g g ~ g g g4 \glissando |
      }

      \volta 2  {
        g8 g g g ~ g g g4 |
      }
    }
  }

  \chorus
  \riff

  \mark \default

  \repeat volta 2 {
    d'2 d |
    g,2 g |
    b2 b |
    g2 g |
  }

  \repeat volta 2 {
    b2 b |
    a2 a |

    \alternative {
      \volta 1 {
        g2 g |
        d'2 cs |
      }

      \volta 2 {
        \repeat percent 2 {
          \repeat percent 2 {
            \repeat unfold 4 { g8 }
          } |
        }
      }
    }
  }

  \repeat volta 2 {
    b4. b8 ~ b2 |
    a4. a8 ~ a2 |

    \alternative {
      \volta 1 {
        g4. g8 ~ g2 |
        d'2 cs |
      }

      \volta 2 {
        \repeat percent 2 {
          \repeat percent 2 {
            \repeat unfold 4 { g8 }
          } |
        }
      }
    }
  }

  \repeat unfold 4 { g8 } g g g g ~ -> |
  g1 ~ |
  g1 |

  \mark \default

  \compressMMRests {
    R1 * 24 |
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
