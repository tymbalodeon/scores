output_directory ?= $$HOME
lilypond_files = $(wildcard ./**/**.ly)
create_pdfs = $(foreach file, $(lilypond_files), lilypond -o $(output_directory) $(file);)

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
	sort | \
	awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

pdfs: ## Output pdfs for all LilyPond files in the specified directory. [option: "output_directory=<directory> (default=$HOME)"]
	$(create_pdfs)
