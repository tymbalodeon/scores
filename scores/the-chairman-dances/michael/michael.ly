\version "2.24.0"

\include "settings.ily"

\header {
  title = "Michael"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative b {
  \key b \minor
  \time 6/8
  \clef "bass"

  \compressMMRests {
    R2 * 15 |

    r4. r4 b8 |
    b,8 cs8 fs8 e8 e,8 fs8 |

    r4. b4. ~ |
    b2. |
    R2. |

    r4. r8 e,8 fs8 |
    r4. b4. ~ |
    b2. |

    R4 * 9 |

    r8 b8 e8 cs8 fs8 r8 |

    R2. |

    r4. r8 e,8 fs8 |
    r4. b4. ~ |
    b2. |

    R4 * 9 |

    r8 b8 e8 r8 cs8 fs8 |

    R2. |

    r4. r8 e,8 fs8 |

    r4. b4. ~ |
    b2. |

    R1. |

    r8 d'8 d8 cs8 cs8 cs8 |
    r8 a8 a8 b8 b8 b8 |
    r8 d8 d8 cs8 cs8 cs8 |
    r8 a8 a8 b8 e,8 fs8 |
    b,8 d'8 d8 cs8 cs8 cs8 |
    r8 a8 a8 b8 fs'8 b,8 |
    r8 d8 d8 cs8 a8 b8 |
    b,8 cs8 fs8 e8 e,8 fs8 |
    r8 d''8 d8 cs8 cs8 cs8 |
    r8 a8 a8 b8 a8 b8 |
    r8 d8 d8 cs8 cs8 cs8 |
    r8 a8 a8 b8 fs8 e8 |
    b8 d'8 d8 cs8 cs8 cs8 |
    r8 a8 a8 b8 fs'8 b,8 |
    a,8 d'8 d8 cs8 a8 b8 |
    b,8 cs8 fs8 e8 e,8 fs8 |
    r8 b8 b8 r8 b8 b8 |
    r8 b8 bf8 a8 af8 g8 |
    r8 b8 b8 r8 b8 b8 |
    r8 b8 bf8 a8 af8 g8 |
    r4. r8 e8 fs8 |
    r8 b8 b8 r8 b8 b8 |
    r8 b8 bf8 a8 af8 g8 |
    r8 b8 b8 r8 b8 b8 |
    r8 b8 bf8 a8 af8 g8 |
    R4 * 9 |
    r8 b8 e8 r8 cs8 fs8 |
    R4 * 9 |
    r8 b,8 e8 cs8 fs8 r8 |
    R4 * 9 |
    r4. r8 e,8 es8 |
    fs4. a4. |
    d4. a'8 d,8 ds8 |
    e4. fs4. |
    g4. b8 d8 e8 |
    fs4. ~ fs8 e8 d8 |
    e8. d16 b8 d4. |
    r8 a16 as16 b8 d8 b8 d8 |
    fs8 a8 fs8 a8 b8 b8 |
    cs4. ~ cs8 a8 b8 |
    cs8. d16 cs8 b8 a8 b8 |
    b2. |

    \times 6/4  {
      b16 a16 b16 cs16 }

    \times 6/4  {
      \acciaccatura { cs8*2/3 ( } d16 ) cs16 b16 a16 }
    |

    \times 6/4  {
      b16 a16 b16 cs16 }

    \times 6/4  {
      \acciaccatura { cs8*2/3 ( } d16 ) cs16 b16 a16 }
    |
    \times 6/4  {
      b16 cs16 \acciaccatura { cs8*2/3 ( } d16 ) cs16 }

    \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
    \times 3/5  {
      b8 cs8 b8 a8 b8 }
    |
    a4. \acciaccatura { g8 ( } a8. ) fs16 e8 |
    d8 cs8 b8 a8 fs8 e8 |
    fs4. fs,4. |
    a4. d8 a'8 ds,8 |
    e,8 g'8 e,8 g8 b'8 g,8 |
    b8 d'8 b,8 d8 b''8 cs8 |
    d2. ~ |
    d2. |

    \bar "|."
  }
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
