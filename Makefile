OUTPUT_DIRECTORY ?= $$HOME/Scores
LILYPOND_FILES = $(shell find . -type f -name '*.ly')
PDF_FILES = $(patsubst %, %.pdf, $(basename $(LILYPOND_FILES)))

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
	sort | \
	awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

$(OUTPUT_DIRECTORY):
	@mkdir -p $(OUTPUT_DIRECTORY)

%.pdf: %.ly
	@lilypond -o $(OUTPUT_DIRECTORY) $<

.PHONY: scores
scores: $(OUTPUT_DIRECTORY) $(PDF_FILES) ## Output pdfs for all LilyPond files in the specified directory. [option: "output_directory=<directory> (default=$HOME/Scores)"]

.PHONY: clean
clean:
	rm $(OUTPUT_DIRECTORY)/*.pdf
