\version "2.25.21"

\include "helpers/settings.ily"

\header {
  title = "Safe Haven"
  composer = "Aftermath"
  arranger = "Ben Rosen, bass"
}

riff = \relative fs {
  fs8 d a' e as fs cs' b ~ |
  b8 d8 b8 g8 fs8 fs8 e8 a,8 |
  d8 d a' e as fs cs' b ~ |
  b8 d b g fs fs e a, |
}

pre_riff = {
  e4 e r8 fs r g ~ |
  \repeat unfold 8 { g8 } |
  e,4 e r8 fs r g ~ |
  g8 g g g g g g e |

  \mark \default

  a4 a r8 e' a g ~ |
  g4 r8 g8 ( fs8 ) ( d8 ) d8 e8 |

  \repeat volta 2 {
    a,4 a' r8 e a g ~ |
    g4 r8 g ( fs ) ( d8 ) d8 e8 |
  }
}

music = \relative fs {
  \key d \major
  \time 4/4
  \clef "bass"

  \compressMMRests {
    R1 * 2 |
  }

  \mark \default

  \riff

  \mark \default

  d8 d r d fs fs r fs |
  b8 b r a g g fs a, |
  d8 d r d fs fs r fs |
  b8 b r d fs, fs e e |

  d8 d r d cs cs r cs |
  b8 b r b a a e' fs |
  d8 d r d cs cs r cs |
  g8 g r g a a cs d |


  \pre_riff

  \mark \default

  \riff

  \mark \default

  d8 d r d fs fs r fs |
  b8 b r a g g fs a, |
  d8 d r d fs fs r fs |
  b8 b r e16 ( d ) fs,8 fs e e |

  d8 d r d cs cs r cs |
  b8 b r b a a e' fs |
  d8 d r d cs cs r cs |
  g8 g r g a a cs d |

  \pre_riff

  \repeat volta 2 {
    \mark \default

    d8 d d d a a a as |
    b8 b b a g g fs e |
  }

  \mark \default

  d'4 r8 d fs4 r8 fs |
  b4 r8 a16 ( b ) ( a8 ) g16 ( a ) ( g8 ) a, |
  d4 r8 d fs4 r8 fs |
  b4 r8 b fs'16 -> e d b -> a fs e8 -> |

  d4 r8 d cs4 r8 cs |
  b4 r8 b a a e' fs |
  d4 r8 d cs4 r8 cs |
  g4 r8 g a a b cs |

  d8 d r cs16 d e8 e r d16 e |
  fs8 fs r e16 fs g8 fs16 g a8 g16 a |
  d8 d r d cs8. cs16 ( d8 ) cs |
  g8 g r g g16 ( a8 ) a16 ~ a
  \once \override NoteHead.style = #'cross d,16
  fs8 |

  d4 d8. d16 cs8 cs d cs |
  b4 b8. b16 a8 a e' fs |
  d4 d8. d16 cs8 cs d cs |
  g4 g8. g16 a8 a b cs |

  \mark \default

  fs8 d a' e as fs cs' b ~ |
  b8 d b g fs fs e a, |
  d8 d a' e as fs cs' b ~ |
  b8 d b g fs fs e a, |

  d8 d a' e as fs cs' b ~ |
  b8 d b g fs fs e e |
  d8 d r d cs cs r cs |
  b8 b r b a a e' fs |

  d8 d r d cs cs r cs |
  g8 g r g a a b cs |
  fs8 d a' e as fs cs' b ~ |
  b8 d b g fs fs e a, |

  d8 -\markup \italic "rit." d a' e as fs cs' b ~ |
  b8 d b g fs fs e a, |
  d1 ~ |
  d1

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
