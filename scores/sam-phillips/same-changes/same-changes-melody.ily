\version "2.25.15"
intro = {
  \new CueVoice \relative c' {
    d4 d'4 c8 d4 e8~ |
    e4 d c8 d~ d4 |
  }
  \new CueVoice \relative c' {
    r8 d d4 d4 r8 d |
    d4 d r8 d d4 |
  }
}

verse = \relative c'' {
  r4 bf8 bf8~ bf d4 c8~ |
  c c4 d8~ d e4. |
  f2 e4. d8~ |
  d2 r4 g,8 g~ |

  g f4. r8 a a a |
  a( g) g4 r8 a4 a8~ |
  a2 r |
  r2. r8 bf |

  bf bf4 bf8~ bf d4 c8~ |
  c4 c8 d~ d e4. |
  f2 e4. d8~ |
  d2 r8 a a4 |

  g f8 f~ f2 |
  r4. a8~ a a4 g8~ |
  g2 r |
  r2 a4 g8 f |
}

chorus = \relative c'' {
  g f~ f4~ f2 |
  r4. a8~ a4 f8 g |
  f4. f8~ f2 |
  r2. r8 a~ |

  a4. g8 g4. f8 |
  f4. g8 g4. f8 |
  d1 |
  R1 |
}

melody = \new Voice \relative c' {
  \intro
  \verse
  \chorus
}
