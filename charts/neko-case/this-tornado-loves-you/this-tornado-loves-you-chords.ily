intro = \chordmode {
  g1:maj  |
  s |
  s |
  b:m |
  g:maj |
}

part_one = \chordmode {
  s1  |
  s |
  b:m |
  g:maj |

  s1  |
  bf |
  d |
  s |

  b:m |
  fs:7 |
  s |
}

part_two = \chordmode {
  d |
  s |
  b:m |
  s |

  d |
  s |
  bf |
  g:maj |

  d |
  s |

  b:m |
  fs:7 |
  fs:7/as |
}

part_three = \chordmode {
  d |
  s |
  b:m |
  g:m |

  d |
  s |
  b:m |
  g:m |

  bf |
  g:maj |
  b:m |
  s |

  bf |
  g:maj |
  d |
  s |
}

instrumental = \chordmode {
  bf |
  g:maj |
  d |
  s |

  g:maj |
  d |
  s |
}

part_four = \chordmode {
  g:maj |
  s |
  b:m |
  s |

  e:m |
  g:maj |

  g:maj |
  s |
  d |
  s |

  g:maj |
  s |
  b:m |
  s |

  g:maj |
  s |
  d |
  s |
}

part_five = \chordmode {
  g:maj |
  s |
  b:m |
  g:maj |

  s1  |
  bf |
  d |
  s |
  s |

  s |
  s |
  b:m |
  a |

  g:maj |
  s |
  b:m |
  e:m |
  s |
}

tornado = \chordmode {
  \repeat unfold 2 {
    g:maj |
    s |
    d |
    s |
  }

  \repeat unfold 2 {
    g:maj/d |
    s |
    d |
    s |
  }
}

changes = \chords {
  \intro
  \part_one
  \part_two
  \part_three
  \instrumental
  \part_four
  \part_five
  \tornado
}
