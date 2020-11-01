#!/usr/bin/env bash
# shellcheck source=lib/stdlib.bash
source "$(dirname "${BASH_SOURCE[0]}")/lib/stdlib.bash" || exit 67

log_action "Running pre-commit, incrementally. (You can supply pre-commit flags to this script)..."

# We need inside CI to have more of the repository to be able to incrementally lint.
# https://docs.travis-ci.com/user/customizing-the-build/#git-clone-depth
[[ "${CI}" == "true" ]] && git fetch --unshallow

pre-commit run \
  --from-ref "origin/develop" \
  --to-ref "HEAD" \
  "${@}"
