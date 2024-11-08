\version "2.25.19"

bass_pattern = \relative c {
  \clef "bass"

  \repeat unfold 2 {
    | c4 r8 g8 ~ g4 r
  }
}

bass_chorus = {
  | \transpose c a, \bass_pattern
  | \bass_pattern
  | \transpose c g \bass_pattern
  | \transpose c a, \bass_pattern
  | \transpose c f \bass_pattern

  | \bass_pattern
}

pianoBreak =
  <<
  {
  | s2 \new CueVoice { \voiceOne { <e g>16 ^\markup \italic piano c <e g> c <e g>8 r } }
  | s2 \new CueVoice { \voiceOne { <e g>16 c <e g> c <e g>8 r } }
  }
  {
  | c8 -> r4. r2
  | c8 -> r4. r2
  }
  >>

turnOnTheLightsTheRadioBass = \relative c {
  | \bass_pattern

  \mark \default

  \repeat volta 2 {
    | \bass_pattern
    \repeat unfold 2 {
      | \transpose c g \bass_pattern
    }
    <<
    {
    | s2 \new CueVoice { \voiceOne { <e g>16 ^\markup \italic piano c <e g> c <e g>8 r } }
    }
    {
    | c8 -> r r4 r2
    }
    >>

    \alternative {
      \volta 1 {
        <<
        {
        | s2 \new CueVoice { \voiceOne { <e g>16 c <e g> c <e g>8 r } }
        }
        {
        | c8 -> r r4 r2
        }
        >>
        | R1 ^\markup \italic \tiny "[drum break]"
      }

      \volta 2 {
        | R1 ^\markup \italic \tiny "[drum break]"
      }
    }
  }

  \mark \default

  | \bass_chorus

  \mark \default

  \repeat volta 2 {
    | \bass_pattern
    \repeat unfold 2 {
      | \transpose c g \bass_pattern
    }
    \pianoBreak
  }

  \mark \default

  | \bass_chorus

  | \bass_pattern

  \mark \default

  \repeat volta 2 {
    \repeat unfold 2 {
      | \transpose c bf, \bass_pattern
    }
  }

  \mark \default

  \repeat volta 2 {
    | bf4 ^\markup \italic \tiny "[drums enter]" r8 f ~ f4 r
    | \repeat unfold 3 { bf4 r8 f ~ f4 r }
  }

  \mark \default

  \repeat volta 2 {
    | bf4 ^\markup \italic \tiny "[vocals enter]" r8 f ~ f4 r
    | \repeat unfold 3 { bf4 r8 f ~ f4 r }
  }

  \mark \default

  \repeat unfold 2 {
    | c'4 r8 gf ~ gf4 r
    | gf'4 r8 c, ~ c4 r
  }

  | bf8 -> r8 r4 r2

  \bar "|."
}
