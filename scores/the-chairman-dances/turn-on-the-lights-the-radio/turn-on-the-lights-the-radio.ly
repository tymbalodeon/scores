\version "2.25.11"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Turn on the Lights, the Radio"
  subtitle = "The Chairman Dances"
  composer = "Eric Krewson"
}

key_signature = {
  \key c \major
}

c_pattern = \relative c' {
  | r8 <g c e> -. <g c e> -. r <g c e> -. <g c e> -. <g c e> -. <g c e> --
}

c_pattern_inverted = \relative c' {
  | r8 <c e g> -. <c e g> -. r <c e g> -. <c e g> -. <c e g> -. <c e g> --
}

g_pattern = \relative c' {
  | r8 <g b d> -. <g b d> -. r <g b d> -. <g b d> -. <g b d> -. <g b d> --
}

f_pattern = \relative c' {
  | r8 <a c f> -. <a c f> -. r <a c f> -. <a c f> -. <a c f> -. < a c f> --
}

c_minor_pattern = \relative c' {
  | r8 <g c ef> -. <g c ef> -. r <g c ef> -. <g c ef> -. <g c ef> -. <g c ef> --
}

a_minor_pattern = \relative c' {
  | r8 <c e a> -. <c e a> -. r <c e a> -. <c e a> -. <c e a> -. <c e a> --
}

upper_tag = \relative c' {
  | <g c e>4 -. r <e'' g>16 c <e g> c <e g>4
}

upper_intro = {
  \repeat unfold 2 \c_minor_pattern
}

upper_verse_one = \relative g {
  \repeat volta 2 {
    | r8 <g c e!> -. <g c e> -. r <g c e> -. <g c e> -. <g c e> -. <g c e> --
    \c_pattern
    \repeat unfold 4 \g_pattern
    \upper_tag
    \alternative {
      \volta 1 {
        | <g c e>4 -. r <e'' g>16 c <e g> c <e g>4
        | R1
      }

      \volta 2 {

        | R1
      }
    }
  }
}

upper_verse_two = \relative g {
  \repeat volta 2 {
    | r8 <g c e!> -. <g c e> -. r <g c e> -. <g c e> -. <g c e> -. <g c e> --
    \c_pattern
    \repeat unfold 4 \g_pattern
    \upper_tag
    | <g c e>4 -. r <e'' g>16 c <e g> c <e g>4
  }
}

upper_chorus = {
  \repeat unfold 2 \a_minor_pattern
  \repeat unfold 2 \c_pattern_inverted
  \repeat unfold 2 \g_pattern
  \repeat unfold 2 \a_minor_pattern
  \repeat unfold 2 \f_pattern
}

upper_coda = {
  \upper_intro
  | r8 <g c e!> -. <g c e> -. r <g c e> -. <g c e> -. <g c e> -. <g c e> --
  \c_pattern

  \key bf \major

  \repeat volta 2 {
    \transpose c bf \repeat unfold 2 \c_minor_pattern
    | r8 <f' bf d!> -. <f bf d> -. r <f bf d> -. <f bf d> -. <f bf d> -. <f bf d> --
    \transpose c bf \c_pattern
  }

  \repeat volta 2 {
    <<
      \transpose c bf \repeat unfold 2 \c_minor_pattern
      s1 ^\markup \italic "(drums)"
    >>
    | r8 <f bf d!> -. <f bf d> -. r <f bf d> -. <f bf d> -. <f bf d> -. <f bf d> --
    \transpose c bf \c_pattern
  }

  \repeat volta 2 {
    <<
      \transpose c bf \repeat unfold 2 \c_minor_pattern
      s1 ^\markup \italic "(vocals)"
    >>
    | r8 <f bf d!> -. <f bf d> -. r <f bf d> -. <f bf d> -. <f bf d> -. <f bf d> --
    \transpose c bf \c_pattern
  }

  | \repeat unfold 4 { r4 <a, c ef gf> -. <a c ef gf>8 -. <a c ef gf> -. <a c ef gf> -. <a c ef gf> -- }
  | <bf d f>4 -. r r2

  | \bar "|."
}

upper_staff = \relative c' {
  \key_signature

  \upper_intro

  \sectionLabel "Verse"
  \upper_verse_one

  \sectionLabel "Chorus"
  \upper_chorus

  \upper_intro

  \sectionLabel "Verse"
  \upper_verse_two

  \sectionLabel "Chorus"
  \upper_chorus

  \sectionLabel "Coda"
  \upper_coda
}

bass_pattern = \relative c, {
  | c4 g'8 -. g, ~ g4 g'8 -. g -.
}

lower_tag = \relative c, {
  | c4 -. r4 r2
}

lower_intro = {
  \repeat unfold 2 \bass_pattern
}

lower_verse_one = {
  \repeat volta 2 {
    \repeat unfold 2 \bass_pattern
    \transpose c g \repeat unfold 4 \bass_pattern
    \lower_tag

    \alternative {
      \volta 1 {
        \lower_tag
        | R1
      }

      \volta 2 {
        | R1
      }
    }
  }
}

lower_verse_two = {
  \repeat volta 2 {
    \repeat unfold 2 \bass_pattern
    \transpose c g \repeat unfold 4 \bass_pattern
    \repeat unfold 2 \lower_tag
  }
}

lower_chorus = {
  \transpose c a \repeat unfold 2 \bass_pattern
  | \repeat unfold 2 \relative c { c4 g'8 -. g, ~ g4 g'8 -. g -. }
  \transpose c g \repeat unfold 2 \bass_pattern
  \transpose c a \repeat unfold 2 \bass_pattern
  \transpose c f \repeat unfold 2 \bass_pattern
}

lower_coda = {
  \lower_intro
  \repeat unfold 2 \bass_pattern

  \key bf \major

  \repeat unfold 3 {
    \repeat volta 2 {
      \transpose c bf \repeat unfold 4 \bass_pattern
    }
  }

  | \repeat unfold 4 { gf4 c8 c, ~ c4 c'8 c }
  | bf4 -. r r2

  \bar "|."
}

lower_staff = \relative c {
  \clef bass
  \key_signature

  \lower_intro
  \lower_verse_one
  \lower_chorus

  \lower_intro
  \lower_verse_two
  \lower_chorus

  \lower_coda
}

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

bass = \relative c {
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


\book {
  \score {
    \new PianoStaff \with {
      instrumentName = "Piano"
    }
    <<
      \new Staff = "upper" \upper_staff
      \new Staff = "lower" \lower_staff
    >>
  }
}

\book {
  \bookOutputSuffix "bass"

  \score {
    \new Staff \with {
      instrumentName = "Bass"
    }
    \bass
  }
}
