\version "2.25.11"

\include "helpers/settings.ily"

\header {
  title = "Northern Lights"
  composer = "Rebecca Seatle"
  arranger = "Ben Rosen, bass"
}

verse = \relative b, {
  b2 b'4 r8 fs |
  b,2 b'8 b, d ds |
  e2 \glissando e, |
  fs2 g |
}

chorus = \relative e, {
  \repeat volta 2 {
    e8 b'' g' fs e fs, r e ~ |
    e8 e, a ( b ) ~ b d ( e ) e, ~ |
    e8 b'' g' fs e b r g ~ |
    g4 d'8 a ~ a d,4. |

    e,8 b'' g' fs e fs, r e ~ |
    e8 e, a ( b ) ~ b g4 e8 ~

    \alternative {
      \volta 1 {
        e8 b'' g' fs e b r g ~ |
        g4 d' a d,
      }

      \volta 2 {
        e,8 b'' g' fs e d cs b |
        a8 g fs e d cs b a
      }
    }
  }

  e1 ~ |
  e1 |
}

music = \relative b, {
  \tempo 4 = 140
  \key b \minor
  \time 4/4
  \clef "bass"

  \repeat volta 2 {
    \verse
  }

  \mark \default

  b2 a' |
  g2 fs4 e8 d |
  e2 d |
  cs2 c |

  b4 b a a |
  g4 g fs fs |
  e4 e fs fs |
  g4 g a a |

  \mark \default

  \repeat volta 2 {
    b2 b'4 r8 fs |
    b,2 b'8 b, d ds |

    \alternative {
      \volta 1 {
        e2 \glissando e, |
        fs2 g |
      }

      \volta 2 {
        e'4 r8 fs r g r4 |
        a4 b cs d8 e |
      }
    }
  }

  << {

    r2 a ~ |
    a2

  } \\ {

    e,,1 |
    s2

  } >>

  g''8 fs4. |
  e2 d |
  cs2 c |
  b8 fs b, e, a e' a fs ( |

  g8 ) d g, fs ~ fs cs' fs d8 |
  e4. e8 b4 e, ~ |
  e2 e |
  fs'2 fs |

  g2 g |
  a2 a |
  b1 |

  \mark \default

  \chorus

  \mark \default

  \repeat percent 4 {
    \repeat unfold 4 { b8 }
  } |

  \repeat unfold 4 { a8 } \repeat unfold 4 { g } |

  \repeat percent 2 {
    \repeat unfold 4 { fs8 }
  } |

  \repeat unfold 4 { e8 } \repeat unfold 4 { d } |
  \repeat unfold 4 { c8 } \repeat unfold 4 { b } |
  \repeat unfold 4 { a8 } \repeat unfold 4 { g } |
  \repeat unfold 4 { f8 } \repeat unfold 4 { g } |

  a4. a8 cs ( e ) a4 ~ |
  a1 |

  \mark \default

  \repeat volta 2 {
    \verse
  }

  b,2 a' |
  g2 fs4 e8 d |
  e2 d |
  cs2 c |

  b4 b a a |
  g4 g fs fs |
  e4 e fs fs |
  g4 g a a |

  fs'2 fs |
  g2 g |
  a2 a |
  b1 |

  \mark \default

  \chorus

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
