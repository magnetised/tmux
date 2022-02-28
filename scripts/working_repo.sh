#!/usr/bin/env bash

set -e

dir="${1:-$(pwd)}"

repo="$(basename "$(cd "${dir}" && /usr/bin/env git rev-parse --show-toplevel 2>/dev/null)")"

if [[ -n "${repo}" ]]; then
    echo "[${repo}] "
else
    echo "($(basename "${dir}")) "
fi
