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
  title = "Ghost World"
  composer = "Aimee Mann"
}

changesIntro = \chordmode {
  fs2:m s8 gs4:m a8 | s1 |
}

changesVerse = \chordmode {
  \repeat unfold 3 { e2 b | fs1:m | }
  cs2:m a | e b | cs:m a | e1 |
}

changesChorus = \chordmode {
  \repeat unfold 2 { b1 | fs:m | }
  b | fs2:m a | fs:m e | b1 |
  fs:m |
}

changesChorusFirstEnding = \chordmode {
  fs2:m a |
}

changesBridge = \chordmode {
  \repeat unfold 2 { a2 e | b1 | }
  fs2:m e |
  \time 2/4
  b2 |
  \time 4/4
  \changesIntro
}

changesCoda = \chordmode {
  \cadenzaOn
  \stopStaff
  s1
  \startStaff
  \cadenzaOff
  a2 e | b1 |
  \repeat unfold 2 { b1 | fs:m | }
  b | fs2:m a
  \repeat volta 3 {
    a2 e |
    \alternative {
      \volta 1,2 { b1 | }
      \volta 3 { b1 | }
    }
  }
  \changesIntro
}

changes = \chords {
  \changesIntro
  \repeat volta 2 {
    \changesVerse
    \bar "||"
    \changesChorus
    \alternative {
      \volta 1 {
        b1 |
        \changesChorusFirstEnding
      } \volta 2 {
        b1 |
      }
    }
  }
  \changesBridge
  \bar "||"
  \changesCoda
}

melodyIntro = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \voiceTwo
  \improvisationOn
  fs4 fs8. fs16 r8 gs4 a8~ |
  a1 |
}

melodyVerse = \relative c'' {
  \segnoMark \default
  e8 b4 cs8~ cs e4 gs,8~ |
  gs e4 fs8~ fs a4 gs8~ |
  gs e4 b'8~ b4. gs8~ |
  gs gs4.~ gs4 gs8 gs~ |

  gs e4 b'8~ b4. cs16 gs~ |
  gs2. b8 e~ |
  e cs4 ds8~ ds e4 b8~ |
  b e,4 b'8~ b a4 gs8~ |

  gs e4 gs8~ gs fs4 e8~ |
  e2.
}

melodyChorusFirst = \relative c'' {
  b16 b8. |

  r8 e( fs e) e ds4 cs8~ |
  cs2 fs8( gs4.) |
  fs2 e8( fs)~ \tuplet 3/2 { fs8 e ds~ } |
  ds cs4. fs8( gs4.) |

  fs2 fs4~ \tuplet 3/2 { fs8 e ds } |
  cs2 e |
}

melodyChorusSecond = \relative c'' {
  \codaMark \default
  b8( cs)~ \tuplet 3/2 { cs8 b cs } b2 |
  r2 r8
  \override Staff.OttavaBracket.font-series = #'medium
  \set Staff.ottavation = #"8va (repeat only)"
  \ottava #1
  fs'( gs4)~ |

  gs8 fs16 e fs2. |
  \ottava #0
  \alternative {
    \volta 1 {
      R1 * 2 |
    } \volta 2 {
      r2 r4 r8 \sectionLabel "Bridge" b, |
      fs'8( gs)~ gs16 fs e8 fs( gs4) fs8~ |
    }
  }
}

melodyBridge = \relative c'' {
  fs4 r8 ds e ds cs b |
  fs'( gs)~ \tuplet 3/2 { gs e fs~ } fs gs4 fs8~ |
  fs4 r8 ds e ds cs b |
  r8 a'4.~ a2
  <<
    \new Voice {
      gs4 \tuplet 3/2 { r8 fs e~ }
      \time 2/4
      \voiceOne
      e ds4.
    }
    \\
    \new Voice \with {
      \consists "Pitch_squash_engraver"
    } {
      \voiceTwo
      \improvisationOn
      s2 |
      \time 4/4
      fs4 fs8. fs16 r8 gs4 a8~ |
      a1_\markup { \italic "D.S. al Coda" } |
    }
  >>
}

melodyCoda = \relative c'' {
  gs'4~ \tuplet 3/2 { gs8 fs e } fs gs4 fs8~ |
}

melodyChorusFinal = \relative c'' {
  \cadenzaOn
  \stopStaff
  s1
  \bar "#f"
  \startStaff
  \cadenzaOff
  \once \override Staff.KeySignature.break-visibility = #end-of-line-invisible
  \once \override Staff.Clef.break-visibility = #end-of-line-invisible
  \codaMark 1
  \melodyCoda fs2. \melodyChorusFirst |
  \repeat volta 3 {
    \melodyCoda
    \alternative {
      \volta 1,2 { fs2. r4 | }
      \volta 3 { fs4 r8 ds e ds cs b | }
    }
  }
  <<
    \new Voice {
      \voiceOne
      r8 a'4.~ a2~ |
      a2 r |
    }
    \\
    \new Voice\with {
      \consists "Pitch_squash_engraver"
    } {
      \voiceTwo
      \improvisationOn
      fs4 fs8. fs16 r8 gs4 a8~ |
      a1 |
    }
  >>
  \bar "|."
}

melody = {
  \melodyIntro
  \repeat volta 2 {
    \melodyVerse
    \sectionLabel "Chorus"
    \melodyChorusFirst
    \melodyChorusSecond
  }
  \melodyBridge
  \melodyChorusFinal
}

\score {
  <<
    \changes
    \new Staff {
      \clef treble
      \key e \major
      \time 4/4
      \melody
    }
  >>
}
