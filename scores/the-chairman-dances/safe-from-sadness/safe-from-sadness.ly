\version "2.24.0"

\include "settings.ily"

\header {
  title = "Safe From Sadness"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

extra_rests = {
  \time 2/2
  R1 |

  \time 4/2
}

music = \relative fs, {
  \key fs \major
  \numericTimeSignature
  \time 4/2
  \clef "bass"

  \compressMMRests {
    R \breve * 6 |
    \extra_rests
    R \breve * 8 |
    \extra_rests
    R \breve * 3 |
    \extra_rests
    R \breve * 6 |
  }

  fs1. fs2 |
  gs1. gs2 |
  ds'1 ~ ds4. ds es4 |
  fs1. ds'2 |

  as \breve ~ |
  as2 as, cs1 |
  b1 ~ b2. fs4 |
  b1 ~ b4. b cs4 |

  fs1. fs,2 |
  gs1. gs2 |
  ds'1 ~ ds4 es8 fs4. as4 |
  ds1 ~ ds2. es8 ( fs8 ) ~ |

  <as, fs'>1 ~ <as fs'>2. fs4 |
  as,1. as2 |

  \time 2/2

  cs1 |

  \time 4/2

  b ~ b2. fs4 |
  b1 ~ b4. b cs4 |

  fs1. fs,2 |
  gs1. gs2 |
  ds'1 ~ ds4. ds es4 |
  fs1 ~ fs2 ds' |

  as1 ~ as2. fs4 |
  as,1. gs2 |

  \time 2/2

  cs1 |

  \time 4/2

  b ~ b2. fs4 b1 ~ |

  b4. b cs4 |
  fs1. fs2 |

  \time 2/2

  ds'2 ds |

  \time 4/2

  <b fs'>1 ~ <b fs'>2. fs4 |

  b2 cs ds es |
  fs1. fs,,2 |

  \time 2/2

  ds'2 ds2 |

  \time 4/2

  <b fs'>1 ~ <b fs'>2. fs'4 |

  \acciaccatura { cs'8 } ds4 ds cs cs b as ds, es |
  fs1. fs,2 |

  \time 2/2

  ds'2 ds2 |

  \time 4/2

  <b fs'>1 ~ <b fs'>2. fs4 |

  b2 cs ds es |
  fs1. fs,2 |
  ds'2 ds e e |
  b'1 ~ b2. fs4 |

  b1 ~ b4 fs b as |
  gs1 gs4. ds8 ~ ds2 |
  gs, \breve |

  \time 2/2

  gs2 as2 |

  \time 4/2

  b1 ~ b2. fs4 |
  b1 ~ b2 ~ b8 fs fs b ~ |
  b1 ~ b8 b b b ~ b4 cs |

  fs4. fs cs4 fs,4. fs' fs,8 fss8 |
  gs4. gs ds'4 gs4. gs ds4 |
  b4. b fs4 b4. b fs4 |
  b4 b cs cs ds ds es es |

  fs4. fs cs4 fs,4. fs' fs,8 fss8 |
  gs4. gs ds'4 gs8 as4 gs4. ds4 |
  b4. b fs'4 b4. b fs4 |
  \acciaccatura { cs'8 } ds4 ds cs cs b as ds, es |

  fs4. fs cs4 fs,4. fs' fs,8 fss8 |
  gs4. gs ds'4 gs8 as4 gs4. ds4 |
  b4. b fs4 b4. b fs4 |
  b4 as8 b8 cs4 b8 cs8 |
  ds4 cs8 ds8 es4 ds8 es8 |

  fs4. fs cs4 fs,4. fs' fs,8 fss8 |
  gs4 ds' b' as gs ds gs, as |
  <b fs'> \breve ~ |
  <b fs'> \breve |

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
