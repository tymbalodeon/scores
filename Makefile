OUTPUT_DIRECTORY ?= $$HOME/Scores
LILYPOND_FILES = $(shell find . -type f -name "*.ly")
PDF_FILES = $(patsubst %, %.pdf, $(basename $(LILYPOND_FILES)))
find_lilypond_file_path = $(shell find . -type f -name $(notdir $(basename $(1))).ly)

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
	sort | \
	awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

$(OUTPUT_DIRECTORY):
	@mkdir -p $(OUTPUT_DIRECTORY)

%.pdf: $(OUTPUT_DIRECTORY)
	@lilypond -o $(OUTPUT_DIRECTORY) $(call find_lilypond_file_path, $@)

.PHONY: scores
scores: $(PDF_FILES) ## Output pdfs for all LilyPond files in the specified directory. [option: "output_directory=<directory> (default=$HOME/Scores)"]

.PHONY: clean
clean:
	rm $(OUTPUT_DIRECTORY)/*.pdf
