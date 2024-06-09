\version "2.25.16"
pickup = {
  r4 e8 a b cs |
}

intro = {
  s2. * 3 |
  \pickup
}

verse = {
  b2. |
  r4 gs8 fs e cs |
  b e4~ e4. |
  r4 e8 a b cs |

  b gs fs e fs gs |
  fs2. |
  r4 e8 a b cs |
  b2. |

  r4 gs8 fs e cs |
  b e4~ e4. |
  r4 e8 a b cs |
  b gs e fs gs fs |

  e2. |
  \pickup
}

melody = \relative c' {
  \intro
  \verse
}
