\version "2.25.24"

\include "helpers/settings.ily"

\header {
  title = "Carefree Wandering"
  composer = "Rebecca Seatle"
  arranger = "Ben Rosen, bass"
}

music = \relative fs {
  \key b \minor
  \time 6/4
  \clef "bass"

  \compressMMRests {
    R1. * 3 |
  }

  r1 r4 fs |

  b1. |
  d,2. e |
  b2 cs4 d2 e4 |
  g,2 g4 fs2 fs4 |

  b2 cs4 d e fs |
  g2 g4 fs2 fs4 |
  b,4 b b b cs d |
  fs,4 fs fs fs gs as |

  b4 \tuplet 3/2 { b' fs8 } \tuplet 3/2 { b4 fs8 } b,4 cs d |
  fs4 fs fs fs gs as |
  b4 \tuplet 3/2 { b fs8 } \tuplet 3/2 { b4 fs8 } b,4 cs d |
  fs,4 fs fs fs gs as |

  b4 b \tuplet 3/2 { b fs8 } b4 cs d |
  fs4 fs \tuplet 3/2 { fs cs8 } fs4 e d |
  b1. |
  R1. |

  b4 ~ \tuplet 3/2 { b4 fs'8 } \tuplet 3/2 { b4 fs8 }
    d4 \tuplet 3/2 { fs b8 } fs r |
  g4 \tuplet 3/2 { b e8 ~ } e4 cs2. |
  b,4 ~ \tuplet 3/2 { b4 fs'8 } \tuplet 3/2 { b4 fs8 }
    d4 \tuplet 3/2 { fs4 b8 } fs8 r8 |
  g4 \tuplet 3/2 { b4 fs'8 } \tuplet 3/2 { e4 b8 } cs2 cs4 |

  b,2 cs4 d2 e4 |
  g,2 g4 fs2 fs4 |
  b2 cs4 d4 e fs |
  g2 g4 fs2 fs4 |

  b,4 b b b4 cs d |
  fs, fs fs fs4 gs as |
  b4 \tuplet 3/2 { b' fs8 } \tuplet 3/2 { b4 fs8 } b,4 cs d |
  fs4 fs fs fs gs as |

  b \tuplet 3/2 { b fs8 } \tuplet 3/2 { b4 fs8 } b,4 cs d |
  fs,4 fs fs fs gs as |
  b b \tuplet 3/2 { b fs8 } b4 cs d |
  fs4 fs \tuplet 3/2 { fs cs8 } fs4 e d |

  b1. |
  R1. |

  \repeat unfold 2 {
    b1. |
    g2. fs2. |
  }

  b2 cs4 d2 e4 |
  g,2 g4 fs2 fs4 |
  b2 cs4 d e fs |
  g2 g4 fs2 fs4 |

  b,4 b b b cs d |
  fs,4 fs fs fs gs as |
  b4 b b b cs d |
  fs,4 fs fs fs gs as |

  b4 \tuplet 3/2 { b' fs8 } \tuplet 3/2 { b4 fs8 } b,4 cs d |
  fs4 fs fs fs gs as |
  b4 \tuplet 3/2 { b fs8 } \tuplet 3/2 { b4 fs8 } b,4 cs d |
  fs,4 fs fs fs gs as |

  b4 b \tuplet 3/2 { b fs8 } b4 cs d |
  fs4 fs \tuplet 3/2 { fs cs8 } fs4 e d |
  b1. |
  R1. |

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
