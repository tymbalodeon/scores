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
  \twice_base
  s1 * 5 |
}

part_two = {
  \repeat unfold 2 {
    \twice_base
  }
  \repeat volta 2 {
    \base
  }
}

part_three = {
  s1 * 2 |
  \repeat unfold 8 {
    \base
  }
  s1 |
}

outro = {
  \repeat unfold 2 {
    \repeat volta 2 {
      \base
    }
  }
}

structure = {
  \key d \major
  \time 4/4

  \intro
  \part_one
  \part_two
  \part_three
  \outro
}
