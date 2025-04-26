TARGET          = code-server
SHFMT_OPTS      = -i 2 -ci -w
SHELLCHECK_OPTS =
BATS_OPTS       =

.PHONY: all
all: fmt lint

.PHONY: fmt
fmt: $(TARGET)
	shfmt $(SHFMT_OPTS) $?

.PHONY: lint
lint: $(TARGET)
	shellcheck $(SHELLCHECK_OPTS) $?
