\version "2.25.24"
intro = \lyricmode {
    Hey now, now
    Oh, oh, oh
}

verse_one = \lyricmode {
  Did -- n't know what time it was, the lights were low __
  I leaned back on my ra -- di -- o __
  Some cat was lay -- ing down some rock 'n' roll
  'Lot -- ta soul,' he said

  Then the loud sound did seem to fade __
  Came back like a slow voice on a wave of phase __
  That weren't no D -- J, that was ha -- zy cos -- mic jive __
}

chorus_base = \lyricmode {
  Star -- man wait -- ing in the sky
  He'd like to come and meet us
  But he thinks he'd blow our minds

  There's a Star -- man wait -- ing in __ the sky
  He's told us not to blow it
  'Cause he knows __ it's all worth -- while
  He told __ me __

  Let the child -- ren lose it
  Let the child -- ren use it
  Let all the child -- ren boo -- gie
}

chorus = \lyricmode {
  There's a
 \chorus_base
}

verse_two = \lyricmode {
  I had to phone some -- one so I picked on you __
  Hey, that's far out, so you heard him too __
  Switch on the T -- V, we may pick him up on chan -- nel two

  Look out your win -- dow, I can see his light __
  If we can spark -- le he may land to -- night __
  Don't tell your pop -- pa or he'll get us locked up in fright
}

la = \lyricmode {
  La, la, la, la,
  la, la, la, la,
  la, la, la, la,
  la, la, la, la...
}

words = \lyricmode {
  \intro
  \verse_one
  \chorus
  \verse_two
  \chorus
  \chorus_base
  \la
}
