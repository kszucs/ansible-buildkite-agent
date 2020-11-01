#!/usr/bin/env bash
# shellcheck source=lib/stdlib.bash
source "$(dirname "${BASH_SOURCE[0]}")/lib/stdlib.bash" || exit 67

workflow/pre-build.sh
workflow/incremental-pre-commit.sh
