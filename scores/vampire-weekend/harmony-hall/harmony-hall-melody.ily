melody_riff = \relative c' {
  \repeat unfold 2 {
    | b8 cs16 ( ds ) fs ( gs ) \slurDown b ( cs
      b8 ) \slurNeutral \tuplet 3/2 { b16 ( cs b ) }
      \tuplet 3/2 { fs ( gs fs ) } \tuplet 3/2 { cs ( ds cs ) }
  }
  << {

  \repeat unfold 2 {
    | e8 fs16 ( gs ) b ( cs ) ds ( e
      ds8 ) \tuplet 3/2 { ds16 ( e ds ) }
      \tuplet 3/2 { b ( cs b ) } \tuplet 3/2 { fs ( gs fs ) }
  }

  } \\ {

  \repeat unfold 2 {
    | b,8 cs16 ( ds ) fs ( gs ) b ( cs
      b8 ) \tuplet 3/2 { b16 ( cs b ) }
      \tuplet 3/2 { fs ( gs fs ) } \tuplet 3/2 { cs ( ds cs ) }
  }

  } >>
}
