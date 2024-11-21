\version "2.25.20"

\include "helpers/settings.ily"

\header {
  title = "Every Nights A Promise"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

music = \relative d {
  \tempo 4 = 100
  \key d \major
  \time 4/4
  \clef "bass"

  d2. cs4 |
  b2. b4 |
  e2. e4 |
  d2. a4 |

  d2. cs4 |
  b2. b4 |
  e2 ~ e8 e fs8 g |
  a2. ~ a8 a,16 ( b ) |

  e2 ~ e8 e, fs g |
  a2 a8 a b cs |
  d4 d cs cs |
  b4 b fs b |

  e4 e e8 e, fs g |
  a4 a a8 a b cs |
  d4 d a a |
  b4 b a a |

  g2 \once \override NoteHead.style = #'diamond g'' |
  \once \override NoteHead.style = #'diamond b2
  \once \override NoteHead.style = #'diamond d,4.
  a,16 ( b ) |
  <d a'>2. cs4 |
  b2. b4 |

  e2 ~ e8 e fs g |
  d2. a4 |
  d2. cs4 |
  b2. b4 |

  e2 ~ e8 e g gs |
  a2. ~ a8 a,16 ( b ) |
  e2 ~ e8 e, fs g |
  a2 a8 a b cs |

  d4 d cs cs |
  b4 b fs b |
  e4 e e8 e, fs g |
  a4 a a'8 a, b cs |

  d4 d a a |
  b4 b a a4 |
  g2. a4 |
  <d a'>1 |

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
