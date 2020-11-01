#!/usr/bin/env bash
# shellcheck source=lib/stdlib.bash
source "$(dirname "${BASH_SOURCE[0]}")/lib/stdlib.bash" || exit 67

pre_commit_log="${HOME}/.cache/pre-commit/pre-commit.log"
if [[ -t "${pre_commit_log}" ]]; then
  log_action "pre-commit log:"
  cat "${pre_commit_log}"
fi
