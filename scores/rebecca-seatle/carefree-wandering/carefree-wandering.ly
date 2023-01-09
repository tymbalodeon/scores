\version "2.24.0"

\include "settings.ily"

\header {
  title = "Carefree Wandering"
  composer = "Rebecca Seatle"
  arranger = "Ben Rosen, bass"
}

music = \relative fs {
  \key b \minor
  \time 3/4
  \clef "bass"

  \compressMMRests {
    R2. * 4 |
  }

  r4 r4 fs4 |
  b2. ~ |
  b2. |
  d,2. |

  e2. |
  b2 cs4 |
  d2 e4 |
  g,2 g4 |

  fs2 fs4 |
  b2 cs4 |
  d4 e4 fs4 |
  g2 g4 |

  fs2 fs4 |
  b,4 b4 b4 |
  b4 cs4 d4 |
  fs,4 fs4 fs4 |

  fs4 gs4 as4 |
  b4 \tuplet 3/2 { b'4 fs8 } \tuplet 3/2 { b4 fs8 } |
  b,4 cs4 d4 |
  fs4 fs4 fs4 |

  fs4 gs4 as4 |
  b4 \tuplet 3/2 { b4 fs8 } \tuplet 3/2 { b4 fs8 } |
  b,4 cs4 d4 |
  fs,4 fs4 fs4 |

  fs4 gs4 as4 |
  b4 b4 \tuplet 3/2 { b4 fs8 } |
  b4 cs4 d4 |
  fs4 fs4 \tuplet 3/2 { fs4 cs8 } |

  fs4 e4 d4 |
  b2. ~ |
  b2. |
  s1. |

  b4 ~ \tuplet 3/2 { b4 fs'8 } \tuplet 3/2 { b4 fs8 } |
  d4 \tuplet 3/2 { fs4 b8 } fs8 r8 |
  g4 \tuplet 3/2 { b4 e8 ~ } e4 |
  cs2. |

  b,4 ~ \tuplet 3/2 { b4 fs'8 } \tuplet 3/2 { b4 fs8 } |
  d4 \tuplet 3/2 { fs4 b8 } fs8 r8 |
  g4 \tuplet 3/2 { b4 fs'8 } \tuplet 3/2 { e4 b8 } |

  cs2 cs4 |
  b,2 cs4 |
  d2 e4 |
  g,2 g4 |

  fs2 fs4 |
  b2 cs4 |
  d4 e4 fs4 |
  g2 g4 |

  fs2 fs4 |
  b,4 b4 b4 |
  b4 cs4 d4 |
  fs,4 fs4 fs4 |

  fs4 gs4 as4 |
  b4 \tuplet 3/2 { b'4 fs8 } \tuplet 3/2 { b4 fs8 } |
  b,4 cs4 d4 |
  fs4 fs4 fs4 |

  fs4 gs4 as4 |
  b4 \tuplet 3/2 { b4 fs8 } \tuplet 3/2 { b4 fs8 } |
  b,4 cs4 d4 |
  fs,4 fs4 fs4 |

  fs4 gs4 as4 |
  b4 b4 \tuplet 3/2 { b4 fs8 } |
  b4 cs4 d4 |
  fs4 fs4 \tuplet 3/2 { fs4 cs8 } |

  fs4 e4 d4 |
  b2. ~ |
  b2. |
  s1. |

  b2. ~ |
  b2. |
  g2. |
  fs2. |

  b2. ~ |
  b2. |
  g2. |
  fs2. |

  b2 cs4 |
  d2 e4 |
  g,2 g4 |
  fs2 fs4 |

  b2 cs4 |
  d4 e4 fs4 |
  g2 g4 |
  fs2 fs4 |

  b,4 b4 b4 |
  b4 cs4 d4 |
  fs,4 fs4 fs4 |
  fs4 gs4 as4 |

  b4 b4 b4 |
  b4 cs4 d4 |
  fs,4 fs4 fs4 |
  fs4 gs4 as4 |

  b4 \tuplet 3/2 { b'4 fs8 } \tuplet 3/2 { b4 fs8 } |
  b,4 cs4 d4 |
  fs4 fs4 fs4 |
  fs4 gs4 as4 |

  b4 \tuplet 3/2 { b4 fs8 } \tuplet 3/2 { b4 fs8 } |
  b,4 cs4 d4 |
  fs,4 fs4 fs4 |
  fs4 gs4 as4 |

  b4 b4 \tuplet 3/2 { b4 fs8 } |
  b4 cs4 d4 |
  fs4 fs4 \tuplet 3/2 { fs4 cs8 } |
  fs4 e4 d4 |

  \repeat unfold 3 { b2. ~ } |
  b2.

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
