\version "2.25.10"

\include "helpers/settings.ily"

\header {
  title = "For You"
  composer = "Aftermath"
  arranger = "Ben Rosen, bass"
}

instrumental = \relative e {
  \repeat volta 2 {
    e2 e4. e8 ~ |
    e4 \glissando b b2 |
    gs2 gs4. gs8 ~ |
    gs4 a4
      a2 * 1/2 \glissando
      \single \hideNotes
      \tweak X-offset #0 \tweak X-extent #'( 0 . 0 )
      e'2 * 1/2 |
  }
}

chorus_end = \relative a, {
  a4. e'8 ~ e4 a ~ |
  a8 e4. a,4 e'8 a |
  b,4. fs'8 ~ fs4 b ~ |
  b8 a4. gs4 ds |
}

chorus = \relative ds {
  \repeat percent 2 {
    \repeat unfold 4 { ds8 }
  } |

  \repeat percent 2 {
    \repeat unfold 4 { cs8 }
  } |

  \repeat percent 2 {
    \repeat unfold 4 { b8 }
  } |

  \chorus_end

  e8 \repeat unfold 7 { e, } |

  \repeat percent 2 {
    \repeat unfold 4 { fs8 }
  } |

  \repeat percent 2 {
    \repeat unfold 4 { a8 }
  } |

  b4 b e ds |

  \chorus_end

  \instrumental
}

music = \relative e' {
  \tempo 4 = 176
  \key e \major
  \time 4/4
  \clef "bass"

  \partial 2
  r2 |

  \compressMMRests {
    R1 * 11 |
  }

  r2 e8 b4. \glissando |

  \repeat volta 2 {
    \repeat percent 2 {
      \repeat unfold 4 { e,8 }
    } |

    \repeat percent 2 {
      \repeat unfold 4 { b8 }
    } |

    \repeat percent 2 {
      \repeat unfold 4 { a8 }
    } |

    \alternative {
      \volta 1 {
        \repeat percent 2 {
          \repeat unfold 4 { b8 }
        } |
      }

      \volta 2 {
        a ( b ) b b \repeat unfold 4 { b }
      }
    }
  }

  \mark \default

  \compressMMRests {
    R1 * 8 |
  }

  \repeat volta 2 {
    e2 e4. e8 ~ |
    e4 \glissando b b2 |

    \alternative {
      \volta 1 {
        a2 a4. a8 ~ |
        a4 b4 b2 |
      }

      \volta 2 {
        \repeat percent 2 {
          \repeat unfold 4 { a8 }
        } |
        a8 ( b ) b b \repeat unfold 4 { b } |
      }
    }
  }

  \mark \default

  \repeat percent 2 {
    \repeat unfold 4 { e8 }
  } |

  \chorus

  \mark \default

  e4 r8 e ~ \repeat unfold 4 { e } |

  \repeat volta 2 {
    gs4 r8 gs ~ \repeat unfold 4 { gs } |
    cs,4 r8 cs ~ \repeat unfold 4 { cs } |
    \repeat unfold 4 { b8 } \repeat unfold 4 { ds } |
    e4 r8 e ~ \repeat unfold 4 { e } |

    gs4 r8 gs ~ \repeat unfold 4 { gs } |
    cs,4 r8 cs ~ \repeat unfold 4 { cs } |
    \repeat unfold 4 { b8 } r8 g4. |

    \alternative {
      \volta 1 {
        e4 e'8 e ~ \repeat unfold 4 { e }
      }

      \volta 2 {
        \mark \default

        e,4 e'8 e \repeat unfold 4 { e }
      }
    }
  }

  \chorus

  \repeat volta 2 {
    e4 e8 e ~ \repeat unfold 4 { e } |
    b4 b8 b ~ \repeat unfold 4 { b } |

    \alternative {
      \volta 1 {
        gs4 gs8 gs ~ \repeat unfold 4 { gs } |
        \repeat unfold 4 { a } cs cs ds ds |
      }

      \volta 2 {
        \repeat percent 2 {
          \repeat unfold 4 { gs,8 }
        } |

        \repeat percent 2 {
          \repeat unfold 4 { a8 }
        } |
      }
    }
  }

  fs4 fs ~ fs8 fs fs a8 ~ |
  a1 |
  fs4 fs4 ~ fs8 fs8 fs8 a8 ~ |
  \repeat unfold 3 { a1 ~ } |

  a1 |

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
