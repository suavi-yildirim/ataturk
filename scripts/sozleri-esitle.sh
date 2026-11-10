#!/usr/bin/env bash
# kaynaklar/ altındaki ortak dosyaları (sozler.md, temalar.md, nutuk.md, akil-yurutme.md)
# ve lisans bildirimini (UCUNCU-TARAF.md) her skill'in references/ klasörüne kopyalar.
set -euo pipefail
cd "$(dirname "$0")/.."
for d in skills/*/; do
  mkdir -p "$d/references"
  cp kaynaklar/*.md UCUNCU-TARAF.md "$d/references/"
done
echo "Eşitlendi: $(ls -d skills/*/ | wc -l) skill, $(ls kaynaklar/*.md | wc -l) dosya"
