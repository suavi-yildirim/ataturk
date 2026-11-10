#!/usr/bin/env bash
# kaynaklar/ altındaki ortak dosyaları her skill'in references/ klasörüne kopyalar.
set -euo pipefail
cd "$(dirname "$0")/.."
for d in skills/*/; do
  mkdir -p "$d/references"
  cp kaynaklar/sozler.md kaynaklar/temalar.md "$d/references/"
done
echo "Eşitlendi: $(ls -d skills/*/ | wc -l) skill"
