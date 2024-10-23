\version "2.25.19"
verse = \relative c'' {
  r4 g g g |
  g8. f16 f8 f r d d d |
  d( c) c c c c bf bf |
  c bf bf bf~ bf4  d8 d |
  c4 c c8 bf c8 c |
  bf bf4 bf8~ bf g4 bf8~ |
  bf2 r |
  r2 r8
}

chorus = \relative c'' {
  bf4 bf8 |

  bf4 f f f8 f |
  f( d) d d r bf' bf bf |
  bf4 g8 g~ g g4. |
  r2 r8 bf4 bf8 |

  bf4 f f8 f f f~ |
  f d4. r8 bf' bf bf |
  bf4 g8 g~ g g4. |
  r2 r8 bf4 bf8 |
}

melody = \relative c'' {
  \verse
  \chorus
}
