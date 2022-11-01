base = {
  s1 * 4 |
}

twice_base =  {
  \repeat unfold 2 {
    \base
  }
}

intro = {
  \base
}

part_one = {
  \twice_base
  s1 * 3 |
}

part_two = {
  \twice_base
  s1 * 5 |
}

part_three = {
  \repeat unfold 2 {
    \twice_base
  }
}

instrumental = {
  \repeat volta 2 {
    s1 * 2 |
    \alternative {
      \volta 1 {
        s1 * 2 |
      } \volta 2 {
        s1 * 2 |
      }
    }
  }
}

part_four = {
  \repeat unfold 4 {
    \base
  }
  s1 * 2 |
}

part_five = {
  \repeat unfold 4 {
    \base
  }
  s1 |
}

outro = {
  \repeat unfold 4 {
    \base
  }
}

structure = {
  \key d \major
  \time 4/4

  \intro
  \part_one
  \part_two
  \part_three
  \instrumental
  \part_four
  \part_five
  \outro
  \bar "|."
}
