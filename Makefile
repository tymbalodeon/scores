SHELL = /bin/zsh
FIND = $(shell find . -name $(1))
INPUT_FILES = $(call FIND,"*.ly")
OUTPUT_FILES = $(subst .ly,.pdf,$(INPUT_FILES))
LILYPOND_COMMAND = lilypond -o $(2) $(1).ly 2>&1 | tee $(1).log
FIND_FILE_NAME = $(call FIND,$(1))/$(1)
FIND_INPUT_FILE = $(call FIND,$(1).ly)
FIND_OUTPUT_FILE = $(call FIND,$(1).pdf)
REMOVE_EXTENSION = $(subst .pdf,,$(1))
GET_PARENT = $(dir $(1))
GET_PDFS = $(shell echo **/**.pdf(N))
TPUT_COMMAND = $(shell tput -Txterm $(1))
GET_COLOR = $(call TPUT_COMMAND,setaf $(1))
GREEN  := $(call GET_COLOR,2)
YELLOW := $(call GET_COLOR,3)
MAGENTA  := $(call GET_COLOR,5)
WHITE  := $(call GET_COLOR,7)
RESET  := $(call TPUT_COMMAND,sgr0)
MISSING_NAME_MESSAGE = \
	"Please specify the name (without extension) of a file to edit, \
	using: 'name=<name>'."
NOTHING_TO_CLEAN = "No pdf(s) to clean."
REMOVED_FILE_MESSAGE = "Removed $(MAGENTA)$(1)$(RESET)."

TARGET_MAX_CHAR_NUM = 10
.PHONY: help
help:
	@echo "Usage:"
	@echo "  ${YELLOW}make${RESET} ${GREEN}<target>${RESET}"
	@echo
	@echo "Targets:"
	@awk '/^[a-zA-Z\-\_0-9]+:/ { \
		helpMessage = match(lastLine, /^## (.*)/); \
		if (helpMessage) { \
			helpCommand = substr($$1, 0, index($$1, ":")-1); \
			helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
			printf "  ${YELLOW}%-$(TARGET_MAX_CHAR_NUM)s${RESET} ${GREEN}%s${RESET}\n", helpCommand, helpMessage; \
		} \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST) | sort

%.pdf: %.ly
	@$(call LILYPOND_COMMAND,$(call REMOVE_EXTENSION,$@),$(call GET_PARENT,$@))

.PHONY: score
## Create a pdf for a single LilyPond file. [option: name=<name>]
score:
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
## Create pdfs for all LilyPond files.
scores: $(OUTPUT_FILES)

.PHONY: clean
## Remove pdf(s). [option: name=<name>]
clean:
ifeq ($(name),)
ifeq ($(call GET_PDFS),)
	@echo $(NOTHING_TO_CLEAN)
else
	@for file in $(call GET_PDFS); do \
		rm -f $$file; \
		echo $(call REMOVED_FILE_MESSAGE,$$file); \
	done
endif
else
ifeq ($(call FIND_OUTPUT_FILE,$(name)),)
	@echo $(NOTHING_TO_CLEAN)
else
	@file_name=$(call FIND_OUTPUT_FILE,$(name)) \
	&& rm -f $$file_name \
	&& echo $(call REMOVED_FILE_MESSAGE,$$file)
	@echo $(call FIND_OUTPUT_FILE,$(name))
endif
endif

.PHONY: edit
## Open <name> in editor and pdf viewer, recompiling on file changes. [option: name=<name>]
edit:
ifeq ($(name),)
	@echo $(MISSING_NAME_MESSAGE)
else
	@file_name=$(call FIND_FILE_NAME,$(name)) \
	&& $(MAKE) $$file_name.pdf \
	&& open $$file_name.pdf \
	&& open $$file_name.ly \
	&& echo **/$$file_name.ly | entr make $$file_name.pdf
endif

## List any pdf(s) already created.
list:
ifeq ($(shell echo **/**.pdf(N)),)
	@echo "No pdfs created yet."
else
	@ls -1 **/**.pdf(N)
endif
