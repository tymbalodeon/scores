LILYPOND_FILES = $(shell find . -type f -name '*.ly')
OUTPUT_DIRECTORY ?= $$HOME/Scores
CREATE_PDFS = $(foreach file, $(LILYPOND_FILES), lilypond -o $(OUTPUT_DIRECTORY) $(file);)

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
	sort | \
	awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

$(OUTPUT_DIRECTORY):
	@mkdir -p $(OUTPUT_DIRECTORY)

pdfs: $(OUTPUT_DIRECTORY) ## Output pdfs for all LilyPond files in the specified directory. [option: "output_directory=<directory> (default=$HOME/Scores)"]
	$(CREATE_PDFS)
