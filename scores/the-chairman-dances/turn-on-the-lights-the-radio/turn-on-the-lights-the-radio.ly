\version "2.25.5"

\include "settings.ily"

\header {
  title = "Turn On The Lights The Radio"
  composer = "The Chairman Dances (Eric Krewson)"
}

key_signature = {
  \key c \major
}

c_pattern = \relative c' {
  | r8 <g c e> -. <g c e> -. r <g c e> -. <g c e> -. <g c e> -. <g c e> --
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
  | r8 <c e a> -. r4 r8 <c e a> -. r <c e a> --
}

upper_tag = \relative c' {
  | <g c e>4 -. r <e'' g>16 c <e g> c <e g>4
}

upper_intro = {
  \repeat unfold 2 \c_minor_pattern
}

upper_verse = {
  | r8 <g c e!> -. <g c e> -. r <g c e> -. <g c e> -. <g c e> -. <g c e> --
  \c_pattern
  \repeat unfold 4 \g_pattern
  \repeat unfold 2 \upper_tag
}

upper_verse_one = {
  \repeat volta 2 {
    \upper_verse

    | R1
  }
}

upper_verse_two = {
  \repeat volta 2 {
    \upper_verse
  }
}

upper_chorus = {
  \repeat unfold 2 \a_minor_pattern
  \repeat unfold 2 \c_pattern
  \repeat unfold 2 \g_pattern
  \repeat unfold 2 \a_minor_pattern
  \repeat unfold 2 \f_pattern
}

upper_staff = \relative c' {
  \key_signature

  \upper_intro
  \upper_verse_one
  \upper_chorus

  \upper_intro
  \upper_verse_two
  \upper_chorus

  \upper_intro
  | r8 <g c e!> -. <g c e> -. r <g c e> -. <g c e> -. <g c e> -. <g c e> --
  \c_pattern
}

intro_pattern = \relative c, {
  | c4 g'8 -. g, ~ g4 g'8 -. g -.
}

bass_pattern = \relative c {
  | c4 g'8 -. g, ~ g4 g'8 -. g -.
}

lower_tag = \relative c, {
  | c4 -. r4 r2
}

lower_intro = {
  \repeat unfold 2 \intro_pattern
}

lower_verse = {
    \repeat unfold 2 \bass_pattern
    \transpose c g, \repeat unfold 4 \bass_pattern
    \repeat unfold 2 \lower_tag
}

lower_verse_one = {
  \repeat volta 2 {
    \lower_verse

    | R1
  }
}

lower_verse_two = {
  \repeat volta 2 {
    \lower_verse
  }
}

lower_chorus = {
  \transpose c a, \repeat unfold 2 \bass_pattern
  \repeat unfold 2 \bass_pattern
  \transpose c g, \repeat unfold 2 \bass_pattern
  \transpose c a, \repeat unfold 2 \bass_pattern
  \transpose c f, \repeat unfold 2 \bass_pattern
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

  \lower_intro
  \repeat unfold 2 \bass_pattern
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  }
  <<
    \new Staff = "upper" \upper_staff
    \new Staff = "lower" \lower_staff
  >>
}
