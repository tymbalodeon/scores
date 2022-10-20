SHELL = /bin/zsh
OUTPUT_DIRECTORY ?= ./pdfs
INPUT_FILES = $(shell find . -type f -name "*.ly")
OUTPUT_FILES = $(subst .ly,.pdf,$(INPUT_FILES))
LILYPOND_COMMAND = lilypond -o $(2) $(1).ly 2>&1 | tee $(1).log

.PHONY: help
help:
	@grep -E '^\S+:.*?## .*$$' $(MAKEFILE_LIST) | \
	sort | \
	awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

%.pdf: %.ly ## Create pdf for specific LilyPond input file.
	@$(call LILYPOND_COMMAND,$(subst .pdf,,$@),$(dir $@))
	@mkdir -p $(OUTPUT_DIRECTORY)
	@cp $@ $(OUTPUT_DIRECTORY)

.PHONY: scores
scores: $(OUTPUT_FILES) ## Create pdfs for all LilyPond files.

.PHONY: clean
clean: ## Remove all pdfs.
	rm -f **/**.pdf
