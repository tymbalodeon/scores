intro = \chordmode {
  g1:maj  |
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
  g |
  b:m |
  s |

  bf |
  g |
  d |
  s |
}

instrumental = \chordmode {
  bf |
  g |
  d |
  s |

  g |
  d |
  s |
}

verse = \chordmode {
  \part_one
  \part_two
  \part_three
  \instrumental

  g |
  s |
  b:m |
  s |

  e:m |
  g |

  g |
  s |
  d |
  s |

  g |
  s |
  b:m |
  s |

  g |
  s |
  d |
  s |

  g |
  s |
  b:m |
  g |

  s1  |
  bf |
  d |
  s |

  d |
  s |
  b:m |
  a |

  g |
  s |
  b:m |
  e:m |
  s |

  \repeat unfold 2 {
    g |
    s |
    d |
    s |
  }

  \repeat unfold 2 {
    g:/d |
    s |
    d |
    s |
  }
}

changes = \chords {
  \intro
  \verse
}
