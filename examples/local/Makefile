SHELL := /bin/bash
.SHELLFLAGS := -euo pipefail -c

############################################################
# Terragrunt config
############################################################

TG := time terragrunt
TG_FLAGS := -auto-approve

############################################################
# Terragrunt lifecycle
############################################################

all: plan

init:
	@echo "=== $(TG) init ==="
	$(TG) init

validate:
	@echo "=== $(TG) validate ==="
	$(TG) validate

update:
	@echo "=== $(TG) update ==="
	$(TG) run -- get -update

render:
	@echo "=== $(TG) render ==="
	$(TG) render

plan:
	@echo "=== $(TG) plan ==="
	$(TG) plan

############################################################
# Cleanup
############################################################

clean-cache:
	rm -rf .terragrunt-cache

clean: destroy clean-cache
