SHELL = /bin/zsh
INPUT_FILES = $(shell find . -type f -name "*.ly")
OUTPUT_FILES = $(subst .ly,.pdf,$(INPUT_FILES))
LILYPOND_COMMAND = lilypond -o $(2) $(1).ly 2>&1 | tee $(1).log
FIND_FILE = $(shell find . -name $(1))/$(1)
REMOVE_EXTENSION = $(subst .pdf,,$(1))
GET_PARENT = $(dir $(1))
ADD_COLOR = $(patsubst %,\033[36m%\033[0m,$(1))

.PHONY: help
help:
	@grep -E '^\S+:.*?## .*$$' $(MAKEFILE_LIST) | \
	sort | \
	awk 'BEGIN {FS = ":.*?## "}; {printf "$(call ADD_COLOR,%-10s) %s\n", $$1, $$2}'

%.pdf: %.ly ## Create pdf for specific LilyPond input file.
	@$(call LILYPOND_COMMAND,$(call REMOVE_EXTENSION,$@),$(call GET_PARENT,$@))

.PHONY: scores
scores: $(OUTPUT_FILES) ## Create pdfs for all LilyPond files.

.PHONY: clean
clean: ## Remove all pdfs.
ifneq (,$(shell echo **/**.pdf(N)))
	@for file in $(shell ls **/**.pdf(N)); do \
		rm -f $$file; \
		echo "Removed $(call ADD_COLOR,$(notdir $$file))."; \
	done
else
	@echo "Nothing to clean."
endif

.PHONY: edit
edit: ## Open <name> in editor and pdf viewer, recompiling on file changes.
ifneq (,$(name))
	@open $(call FIND_FILE,$(name)).pdf \
	&& open $(call FIND_FILE,$(name)).ly \
	&& echo **/$(call FIND_FILE,$(name)).ly | entr make scores
else
	@echo "Please specify the name (without extension) of a file to edit, using: 'name=<name>'."
endif
