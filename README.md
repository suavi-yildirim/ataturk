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
kaynaklar/             ortak dosyaların asıl kopyası: sozler.md, temalar.md,
                       nutuk.md (sayfa numaralı Nutuk alıntıları), akil-yurutme.md (düşünme kalıpları)
scripts/               eşitleme ve zip betikleri
```

Ortak dosyaları yalnızca `kaynaklar/` içinde düzenleyin, sonra `./scripts/sozleri-esitle.sh` çalıştırın.

## Teşekkür

Nutuk alıntıları ve akıl yürütme kalıpları [ugurseleci/ataturk-dusunce-tarzi](https://github.com/ugurseleci/ataturk-dusunce-tarzi), Söylev ve Demeçler'den çıkarılan kalıplar [avatar-lavventura/ataturk-soylev](https://github.com/avatar-lavventura/ataturk-soylev) projelerinden uyarlanmıştır. İkisi de MIT Lisansı ile paylaşılmıştır; lisans metinleri [UCUNCU-TARAF.md](UCUNCU-TARAF.md) dosyasındadır.

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
