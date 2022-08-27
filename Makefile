pdf:
ifdef score
	lilypond $(score)
else
	$(info Please specify a score.)
endif
