intro = \relative c'' \new Voice \with {
  \consists "Pitch_squash_engraver"
} {

  \improvisationOn
  \repeat percent 3 { c4. c8 r2 } |
  \improvisationOff r2 r4
}

melody = \relative c'' {
  \intro g4 |

  fs' fs fs fs |
  fs8 e d4 r8 d d e |
  fs e d4 r2 |
  fs8 e d4 r4 a |

  fs'8( e) fs e fs4 a |
  a8 e f( e) d4 d8 e |
  fs?16 fs d8 fs2.~ |
  fs4 r a,8 a4. |

  fs'1( |
  e) |
  r2 r8 fs, fs d'~ |

  d4 d8 d~ d e4 fs8~ |
  fs fs4. r8 fs fs fs(~ |
  fs8 d4) d8 d16 b8. b4~ |
  b2 r4 fs |

  d'8 d4 d8~ d fs4 g8( |
  fs4) fs8 g~ g fs4 fs8 |
  e d r e d r r4 |
  e8 d r e d r r8 fs~ |

  fs fs4 fs8( e8) d4. |
  r2 d8 d4. |

  b1( |
  as) |
  r2 r8 fs fs d' |

  d2 r8 e d fs~ |
  fs fs4 e8~ e d4 d8 |
  a'8. fs fs8 g8. fs fs8 |
  a8. fs fs8 e8. d e8 |

  fs16( e) d4 e8 fs16( e) d4. |
  r2 r8. a' a8 |
  a8.( fs) fs8~( fs e) fs4~ |
  fs2 r |

  f16( e) d4 d8 f16( e) d4. |
  fs?16( e) d4 d8 fs16( e) d4. |
  d8.( b) b8~ b a b4~ |
  b2 r |

  f'16( e) d4 d8 f16( e) d4. |
  fs?16( e) d4 d8 fs16( e) d4 d8 |
  a'8.( fs) fs8~ fs e fs8( g16 fs~ |
  fs2) r2 |

  \new CueVoice \relative c' {
    bf8 d g bf d g r4 |
    b,,?8 d g b d g r4 |
    fs4. d8 r2 |
    r4 a d r |
  }
}
