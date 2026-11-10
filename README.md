# ataturk: Claude plugin'i

Atatürk'ün belgelenmiş söz, ilke ve eğitimci kimliğinden yararlanan Türkçe Claude skill'leri. Hiçbir skill söz uydurmaz; her alıntıya kaynak yazar, kaynağı teyit edilmemiş sözleri ayrıca belirtir.

| Komut | Ne yapar |
|---|---|
| `/ataturk:yol-gosterici` | Bir karar, kaygı ya da güncel soru için onun ilkeleriyle rehberlik |
| `/ataturk:motivasyon` | Karamsar anlarda kısa, kaynaklı bir umut mesajı |
| `/ataturk:egitimci` | Öğretmen ve öğrenciler için konu anlatımı, ders planı, etkinlik, tören konuşması |
| `/ataturk:soz-dogrula` | "Atatürk bunu gerçekten söyledi mi?" sorusuna kaynaklı yanıt |
| `/ataturk:konus` | Onun ağzından, açıkça kurgu olarak etiketlenmiş anlatım |

## Yapı

```
.claude-plugin/        plugin.json ve marketplace.json
skills/<ad>/SKILL.md   her skill
skills/<ad>/references kaynaklar/ klasöründen kopyalanan ortak dosyalar
kaynaklar/             ortak söz listesi (sozler.md) ve temalar (temalar.md): asıl kopya
scripts/               eşitleme ve zip betikleri
```

Söz listesini yalnızca `kaynaklar/sozler.md` içinde düzenleyin, sonra `./scripts/sozleri-esitle.sh` çalıştırın.

## Kurulum

**Claude Code:**

```
/plugin install ataturk --marketplace suavi-yildirim/ataturk
```

Eski sürümlerde:

```
/plugin marketplace add suavi-yildirim/ataturk
/plugin install ataturk@ataturk
```

**claude.ai:** `./scripts/zip-olustur.sh` çalıştırın; `dist/` altında her skill için ayrı bir zip oluşur (`ataturk-motivasyon.zip` gibi). Bunları **Ayarlar > Customize > Skills** bölümünden tek tek yükleyin. claude.ai'de adlar `ataturk-motivasyon` biçiminde görünür.
