#!/usr/bin/env bash
# Lokálny náhľad webu RO-DENT
set -e
PORT="${1:-5173}"
cd "$(dirname "$0")"
echo "RO-DENT beží na http://localhost:${PORT}  (Ctrl+C ukončí)"
command -v open >/dev/null && (sleep 1; open "http://localhost:${PORT}") &
python3 -m http.server "${PORT}"
