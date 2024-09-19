\version "2.25.19"

\include "helpers/settings.ily"

\header {
  title = "Smile"
  composer = "Aftermath"
  arranger = "Ben Rosen, bass"
}

chorus = \relative f {
  \repeat volta 2 {
    f4 f f8 f4 f8 ~ |
    f8 c f f ~ f f f4 |
    bf4 bf ~ bf8 bf f bf, ~ |
    bf8 bf4 bf8 ~ bf bf f' bf ~

    \alternative {
      \volta 1 {
        bf4 bf ~ bf8 c df ef ~ |
        ef8 df4 c8 ~ c df c4 |
      }

      \volta 2 {
        bf2. \repeatTie f8 bf ~ |
        bf4 f8 bf8 ~ bf2
      }
    }
  }
}

music = \relative f {
  \tempo 4 = 144
  \key f \major
  \time 4/4
  \clef "bass"

  \compressMMRests {
    R1 * 24 |
  }

  \chorus

  d4 d ~ d8 d ( f ) bf ~ |
  bf8 bf4 bf8 ~ bf bf bf4 |
  a4 a a8 a r4 |
  e8 e4 c8 ~ c f f e |

  d4 d ~ d8 d ( f ) bf8 ~ |
  bf8 bf4 bf8 ~ bf bf c bf |
  a4 a a8 a r4 |
  e8 e4 c8 ~ c f f e

  \repeat volta 2 {
    d4 d ~ d8 d ( f ) bf ~ |
    bf8 bf4 bf8 ~ bf bf bf4 |
    a4. f8 ~ f4 a |
    e8 e4 c8 ~ c f f e
  }

  \chorus

  bf'1 ~ |
  bf1 |

  \key c \major

  c,2 c4. c8 ~ |
  c4 b b2 |
  a1 ~ |
  a4 e' a8 e a,4 |

  c2 c4. c8 ~ |
  c4 e2 g4 |
  a2. e'8 c ~ |
  c8 a d c ~ c2 |

  c,2 c4. d8 ~ |
  d4 e2 g4 |
  a2. e8 a, ~ |
  a8 a4. a'8 e a,4 |

  c2 c4. e8 ~ |
  e4 g2 gs4 |
  a1 ~ |
  a1 |

  \repeat volta 2 {
    c,2 c4. c8 ~ |
    c4 b4 b2 |
    e2 e4. e8 ~ |
    e8 b8 e,2 g4

    \alternative {
      \volta 1 {
        a2 a4. b8 ~ |
        b4 c2 d4 |
        f2. c8 f ~ |
        f8 c8 f4 f8 e d4
      }

      \volta 2 {
        a2 a4. e'8 ~ |
        e4 d c8 d c4 |
        f2. c8 f ~ |
        f4 e8 f e4 b |
      }
    }
  }

  c2 c4. c8 ~ |
  c4 b b2 |
  e,2 e4. e'8 ~ |
  e8 b e,4 g gs |

  a2. b8 c |
  d4 c b8 c b4 |
  f2. c'8 f ~ |
  f8 c f4 f8 e d4 |

  c2 c |
  b2 b |
  e,2 e4. e'8 ~ |
  e8 b e,2 g4 |

  a2. b8 c |
  d4 e2 g4 |
  f2. c8 f ~ |
  f4 f f8 e d4 |

  \repeat unfold 3 { c1 ~ } |
  c1 |

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
