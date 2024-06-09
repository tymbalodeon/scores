\version "2.25.16"
intro = \chordmode {
  e2. |
  s2. * 2  |
  s4. a |
}

verse = \chordmode {
  e2. |
  s4. a |
  e2. |
  s4. a |

  e4. fs |
  b2.:sus  |
  b4. a |
  e2. |

  s4. a |
  e2. |
  s4. a |
  e4. b |

  e2.  |
  s4. \parenthesize a |

}

changes = \chords {
  \intro

  \verse
  e4. \parenthesize a |
  s4. g |

  \transpose e c \verse
  c2. |
  s4. a |
}
