\version "2.25.19"
makePercent =
#(define-music-function (note) (ly:music?)
  "Make a percent repeat the same length as NOTE."
  (make-music 'PercentEvent
   'length (ly:music-length note)))

mutedStrum = \override NoteHead.style = #'cross

intro = \relative c'' \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \repeat percent 4 {
    \improvisationOn
    c8 c c
    \mutedStrum
    b16 b b b
    \improvisationOn
    c
    \mutedStrum
    b b
    \improvisationOn
    c
    \mutedStrum
    b
    \improvisationOn
    \parenthesize c16 |
  }
  \repeat percent 3 {
    \improvisationOn
    c8 c c c16 c~ c c c8 c16 c
    \mutedStrum
    b
    \improvisationOn
    \parenthesize c |
  }
  \improvisationOff
  \makePercent s2.
  r8 b |
}

verse = \relative c'' {
  fs8 e16 fs~ fs4 r4. b,8 |
  fs'16 e8 fs16~ fs4 r4. fs8~ |
  fs fs e cs~ cs a r a~ |
  a a4 b16 cs~ cs4 b8 cs |

  b2. gs8 b~ |
  b4 r r
  \new CueVoice {
    gs'8^\markup { \italic "after D.S. only" } e~ |
    e cs4. r2 |
  }
  r2 r4 r8 b |
}

chorus = \relative c'' {
  fs8. e16~ e8 b~ b4 r8 e |
  fs8. e16~ e8 a,~ a4 r8 e'16 fs~ |
  fs8. e16~ e8 cs~ cs a r a |
  a8. b16~ b4 r b8 cs |

  b2. gs8 b~ |
  b4 r r fs'16 gs8.~ |
  gs8 e4 cs8~ cs4 r4 |
  <<
    \new CueVoice {
      r2^\markup { \italic \teeny "after D.S. only" } r4
      b8 cs |
    }
  >>
}

solo = \relative c'' \new CueVoice {
  \hideNotes
  \once \override Glissando.minimum-length = #2.5
  \once \override Glissando.springs-and-rods =
  #ly:spanner::set-spacing-rods
  \grace fs16 \glissando
  \unHideNotes
  gs8 b4 \appoggiatura b16 cs8 gs4 b8 cs |
  gs b b gs \appoggiatura b16 cs4 b8 gs |
  cs,8 e4 \appoggiatura e16 fs8 cs4 e8( fs) |
  cs e e cs \appoggiatura fs16 gs4 fs8( e) |

  b8 cs e \appoggiatura e16 fs8~ fs e4. |
  r8 \appoggiatura fs16 gs8 fs( gs) fs( e) cs4 |
  b8 cs e \appoggiatura e16 fs8~ fs e4. |
  r8 \appoggiatura b16 cs8 b( cs) b gs fs4 |
}

DSalCoda = {
  s1 * 7 |
  s1_\markup { \italic "D.S. al Coda without repeats" }
}

melody = {
  \intro
  \repeat volta 2 {
    \verse
  }
  \chorus
  \bar "||"
  <<
    \solo
    \DSalCoda
  >>
  \bar "||"
}

melodyCoda = \relative c'' {
  \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details #'((Y-offset . 115))
  \repeat volta 2 {
    \once \override Score.RehearsalMark.font-size = #0.5
    \mark \markup { \musicglyph "scripts.coda" }
    b2.^\markup { \box \normal-text "repeat ad lib. and fade out" } gs8 b~ |
    b4 r r fs'16 gs8.~ |
    gs8 e4 cs8~ cs4 r4 |
    r2 r4 b8 cs |
  }
}
