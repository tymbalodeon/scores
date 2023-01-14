\version "2.24.0"

\include "settings.ily"

\header {
  title = "Safe From Sadness"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

extra_rests = {
  \time 2/4
  R1 |

  \time 4/4
}

music = \relative fs, {
  \key fs \major
  \numericTimeSignature
  \time 4/4
  \clef "bass"

  \compressMMRests {
    R1 * 6 |
    \extra_rests
    R1 * 8 |
    \extra_rests
    R1 * 3 |
    \extra_rests
    R1 * 6 |
  }

  fs2. fs4 |
  gs2. gs4 |
  ds'2 ~ ds8. ds es8 |
  fs2. ds'4 |

  as1 ~ |
  as4 as, cs2 |
  b2 ~ b4. fs8 |
  b2 ~ b8. b cs8 |

  fs2. fs,4 |
  gs2. gs4 |
  ds'2 ~ ds8 es16 fs8. as8 |
  ds2 ~ ds4. es16 ( fs16 ) ~ |

  <as, fs'>2 ~ <as fs'>4. fs8 |
  as,2. as4 |

  \time 2/4

  cs2 |

  \time 4/4

  b ~ b4. fs8 |
  b2 ~ b8. b cs8 |

  fs2. fs,4 |
  gs2. gs4 |
  ds'2 ~ ds8. ds es8 |
  fs2 ~ fs4 ds' |

  as2 ~ as4. fs8 |
  as,2. gs4 |

  \time 2/4

  cs2 |

  \time 4/4

  b2 ~ b4. fs8 |
  b2 ~ b8. b cs8 |
  fs2. fs4 |

  \time 2/4

  ds'4 ds |

  \time 4/4

  <b fs'>2 ~ <b fs'>4. fs8 |

  b4 cs ds es |
  fs2. fs,,4 |

  \time 2/4

  ds'4 ds4 |

  \time 4/4

  <b fs'>2 ~ <b fs'>4. fs'8 |

  \acciaccatura { cs'16 } ds8 ds cs cs b as ds, es |
  fs2. fs,4 |

  \time 2/4

  ds'4 ds4 |

  \time 4/4

  <b fs'>2 ~ <b fs'>4. fs8 |

  b4 cs ds es |
  fs2. fs,4 |
  ds'4 ds e e |
  b'2 ~ b4. fs8 |

  b2 ~ b8 fs b as |
  gs2 gs8. ds16 ~ ds4 |
  gs,1 |

  \time 2/4

  gs4 as4 |

  \time 4/4

  b2 ~ b4. fs8 |
  b2 ~ b4 ~ b16 fs fs b ~ |
  b2 ~ b16 b b b ~ b8 cs |

  fs8. fs cs8 fs,8. fs' fs,16 fss16 |
  gs8. gs ds'8 gs8. gs ds8 |
  b8. b fs8 b8. b fs8 |
  b8 b cs cs ds ds es es |

  fs8. fs cs8 fs,8. fs' fs,16 fss16 |
  gs8. gs ds'8 gs16 as8 gs8. ds8 |
  b8. b fs'8 b8. b fs8 |
  \acciaccatura { cs'16 } ds8 ds cs cs b as ds, es |

  fs8. fs cs8 fs,8. fs' fs,16 fss16 |
  gs8. gs ds'8 gs16 as8 gs8. ds8 |
  b8. b fs8 b8. b fs8 |
  b8 as16 b16 cs8 b16 cs16
  ds8 cs16 ds16 es8 ds16 es16 |

  fs8. fs cs8 fs,8. fs' fs,16 fss16 |
  gs8 ds' b' as gs ds gs, as |
  <b fs'>1 ~ |
  <b fs'>1 |

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
