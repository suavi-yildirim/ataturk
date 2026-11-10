#!/usr/bin/env bash
# claude.ai'ye yüklemek için her skill'i ayrı zip yapar (dist/ataturk-<ad>.zip).
set -euo pipefail
cd "$(dirname "$0")/.."
./scripts/sozleri-esitle.sh
rm -rf dist build && mkdir -p dist build
for d in skills/*/; do
  ad=$(basename "$d"); hedef="build/ataturk-$ad"
  cp -r "$d" "$hedef"
  sed -i "s/^name: $ad\$/name: ataturk-$ad/" "$hedef/SKILL.md"
  (cd build && zip -qr "../dist/ataturk-$ad.zip" "ataturk-$ad")
done
rm -rf build
ls dist
