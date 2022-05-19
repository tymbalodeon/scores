\version "2.23.8"
\language "english"
\pointAndClickOff

\paper {
  #(set-paper-size "letter")
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.5\in
}

\header {
  tagline = ##f
  title = "Shark Smile"
  composer = "Adrianne Lenker (Big Thief)"
}

chorusMelody = {
  r2 r4 r8 b~ |
  b b4. r4 r8 b~ |
  b b \parenthesize b r r2 |
  r4 r8 a a a4 cs8 |
}

versePickup = \relative c'' { r2 r8 cs cs cs8~ | }

verseMelody = {
  \repeat volta 2 {
    cs4 cs r cs8 cs |
    cs d4 d8~ d4 r |
    d8 d4 d8 d4 d8 d~ |
    d8 d cs b8~ b cs b a~ |

    a4 r8 a a4 gs |
    r4 cs8 cs a4 a |
    gs a gs8 a4 fs8~ |
    \alternative {
      \volta 1 {
        fs4 r r8 cs' cs cs8~ |
      }
      \volta 2 {
        fs,4 r8 a a a4 cs8 |
      }
    }
  }
}

melody = \relative c'' {
  s1*4 |
  \bar "||"
  s1*7 |

  \versePickup
  \repeat segno 2 {
    \verseMelody
    \chorusMelody
  }

  s1*7 |

  \versePickup
  \repeat volta 2 {
    cs4 cs r cs8 cs |
    cs d4 d8~ d4 r |
    d8 d4 d8 d4 d8 d~ |
    d8 d cs b8~ b cs b a~ |

    a4 r8 a a4 gs |
    \alternative {
      \volta 1 {
        r4 cs8 cs a4 a |
        gs a gs8 a4 fs8~ |
        fs4 r r8 cs' cs cs8~ |
      }
      \volta 2 {
        s1*2 |
      }
    }
  }
  \time 2/4 s2 |
  \bar "||"

  \time 4/4 s1 * 6 |
  \chorusMelody
}

intro = \chordmode {
  d1 | d | d | d |
}

verseA = \chordmode {
  a1 | d | e:11 | a2 a/gs |
}

instrumentalVerseB = \chordmode {
  fs1:m | e:11 | d | d |
}

vocalVerseB = \chordmode {
  fs1 fs/cs | e |
  \alternative {
    \volta 1 {
      d |
    } \volta 2 {
      d |
    }
  }
}

finalVerseB = \chordmode {
  d | d | \time 2/4 e2:11 |
  \time 4/4 d1 | d2 e | d1 | d2 e |
  d1 | d
}

instrumentalVerse = { \verseA \instrumentalVerseB }
vocalVerse = \repeat volta 2 { \verseA \vocalVerseB }
finalVerse = \repeat volta 2 {
  \verseA
  fs1
  \alternative {
    \volta 1 {
      \chordmode {
        fs/cs | e |  d |
      }
    } \volta 2 {
      \finalVerseB
    }
  }
}

chorus = \chordmode {
  \repeat volta 2 {
    a1 | e | b:min | d |
  }
}

changes = \chords {
  \intro
  \instrumentalVerse
  \repeat volta 2 {
    \vocalVerse
    \chorus
  }
  \instrumentalVerse
  \finalVerse
  \chorus
}

\score {
  <<
    \changes
    \new Staff {
      \clef treble
      \key a \major
      \time 4/4
      \melody
    }
  >>
}
