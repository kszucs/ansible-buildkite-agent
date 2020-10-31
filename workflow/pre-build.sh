#!/usr/bin/env bash
# shellcheck source=lib/stdlib.bash
source "$(dirname "${BASH_SOURCE[0]}")/lib/stdlib.bash" || exit 67

log_action "Installing pip requirements..."
pip3 install -r requirements.txt

log_action "Warming up pre-commit..."
pre-commit install-hooks
