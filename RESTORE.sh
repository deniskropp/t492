#!/usr/bin/env bash
set -euo pipefail
# Copy conversation dumps from the t492 workspace into this clone.
SRC="${CONVERSATIONS_SRC:-/home/workdir/artifacts/conversations}"
if [[ -d "$SRC" ]]; then
  mkdir -p conversations
  cp -a "$SRC"/. conversations/
  echo "copied $(ls conversations/*.json 2>/dev/null | wc -l) conversation files"
else
  echo "missing $SRC — set CONVERSATIONS_SRC" >&2
  exit 1
fi
