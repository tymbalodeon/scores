pdf:
ifdef score
ifdef output
	lilypond -o $(output) $(score)
else
	lilypond $(score)
endif
else
	$(info Please specify a score.)
endif
