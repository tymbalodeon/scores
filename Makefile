SHELL = /bin/zsh
INPUT_FILES = $(shell find . -type f -name "*.ly")
OUTPUT_FILES = $(subst .ly,.pdf,$(INPUT_FILES))
LILYPOND_COMMAND = lilypond -o $(2) $(1).ly 2>&1 | tee $(1).log
FIND_INPUT_FILE = $(shell find . -name $(1).ly)
REMOVE_EXTENSION = $(subst .pdf,,$(1))
GET_PARENT = $(dir $(1))
GET_PDFS = $(shell echo **/**.pdf(N))
ADD_COLOR = $(patsubst %,\033[36m%\033[0m,$(1))
MISSING_NAME_MESSAGE = \
	"Please specify the name (without extension) of a file to edit, \
	using: 'name=<name>'."

.PHONY: help
help:
	@grep -E '^\S+:.*?## .*$$' $(MAKEFILE_LIST) | \
	sort -d | \
	awk 'BEGIN {FS = ":.*?## "}; \
	{printf "$(call ADD_COLOR,%-10s) %s\n", $$1, $$2}'

%.pdf: %.ly ## Create pdf for specific LilyPond input file.
	@$(call LILYPOND_COMMAND,$(call REMOVE_EXTENSION,$@),$(call GET_PARENT,$@))

.PHONY: score
score: ## Create a pdf for a single LilyPond file.
ifeq ($(name),)
	@echo $(MISSING_NAME_MESSAGE)
else
ifeq ($(call FIND_INPUT_FILE,$(name)),)
	@echo '"$(name).ly" not found.'
else
	@$(MAKE) $(subst .ly,.pdf,$(call FIND_INPUT_FILE,$(name)))
endif
endif

.PHONY: scores
scores: $(OUTPUT_FILES) ## Create pdfs for all LilyPond files.

.PHONY: clean
clean: ## Remove all pdfs.
ifeq ($(call GET_PDFS),)
	@echo "Nothing to clean."
else
	@for file in $(call GET_PDFS); do \
		rm -f $$file; \
		echo "Removed $(call ADD_COLOR,$$file)."; \
	done
endif

.PHONY: edit
edit: ## Open <name> in editor and pdf viewer, recompiling on file changes.
ifeq ($(name),)
	@echo $(MISSING_NAME_MESSAGE)
else
	@file_name=$(shell find . -name $(name))/$(name) \
	&& $(MAKE) $$file_name.pdf \
	&& open $$file_name.pdf \
	&& open $$file_name.ly \
	&& echo **/$$file_name.ly | entr make $$file_name.pdf
endif
