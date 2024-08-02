\version "2.25.17"

bass_pattern = \relative c {
  \clef "bass"

  \repeat unfold 2 {
    | c4.  g8 ~ g4 r
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

turnOnTheLightsTheRadioBass = \relative c {
  | \bass_pattern

  \repeat volta 2 {
    | \bass_pattern
    \repeat unfold 2 {
      | \transpose c g \bass_pattern
    }
    | c4 -. r r2

    \alternative {
      \volta 1 {
        | c4 -. r r2
        | R1
      }

      \volta 2 {
        | R1
      }
    }
  }

  | \bass_chorus

  \repeat volta 2 {
    | \bass_pattern
    \repeat unfold 2 {
      | \transpose c g \bass_pattern
    }
    | c4 -. r r2
    | c4 -. r r2
  }

  | \bass_chorus

  | \bass_pattern

  \repeat volta 2 {
    \repeat unfold 2 {
      | \transpose c bf, \bass_pattern
    }
  }

  \repeat volta 2 {
    | bf4. ^\markup \italic "(drums)" f8 ~ f4 r
    | \repeat unfold 3 { bf4. f8 ~ f4 r }
  }

  \repeat volta 2 {
    | bf4. ^\markup \italic "(vocals)" f8 ~ f4 r
    | \repeat unfold 3 { bf4. f8 ~ f4 r }
  }

  \repeat unfold 2 {
    | c'4. gf8 ~ gf4 r
    | gf'4. c,8 ~ c4 r
  }

  | bf4 -> -. r r2

  \bar "|."
}
