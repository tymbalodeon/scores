OUTPUT_DIRECTORY ?= $$HOME/Scores
LILYPOND_FILE_NAMES = $(addsuffix "",$(shell find . -type f -name '*.ly' -print))

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
	sort | \
	awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

$(OUTPUT_DIRECTORY):
	@mkdir -p $(OUTPUT_DIRECTORY)

%.pdf: %.ly
	lilypond $<

$(LILYPOND_FILE_NAMES):
	@echo $@
	@lilypond -o $(OUTPUT_DIRECTORY) $@

pdfs: $(OUTPUT_DIRECTORY) $(LILYPOND_FILE_NAMES) ## Output pdfs for all LilyPond files in the specified directory. [option: "output_directory=<directory> (default=$HOME/Scores)"]
