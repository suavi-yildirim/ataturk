# ataturk: a Claude plugin

English · [Türkçe](README.tr.md)

Mustafa Kemal Atatürk founded the modern Republic of Türkiye, and his ideas still guide the way.
This plugin gives Claude a set of skills built on his documented words, his principles and his work
as a teacher. No skill invents a quote: every quotation comes with its source, and sayings whose
source could not be confirmed are marked as such.

The skills are written in Turkish and answer in Turkish.

| Command | What it does |
|---|---|
| `/ataturk:yol-gosterici` | Guidance on a decision, a worry or a current question, based on his principles |
| `/ataturk:motivasyon` | A short, sourced message of hope for a discouraged moment |
| `/ataturk:egitimci` | For teachers and students: topic explanations, lesson plans, class activities, ceremony speeches |
| `/ataturk:soz-dogrula` | A sourced answer to "Did Atatürk really say this?" |
| `/ataturk:konus` | A first-person narrative in his voice, clearly labelled as fiction |

## Structure

```
.claude-plugin/        plugin.json and marketplace.json
skills/<name>/SKILL.md one skill each
skills/<name>/references shared files copied from kaynaklar/
kaynaklar/             master copy of the shared files: sozler.md (quotes), temalar.md (themes),
                       nutuk.md (Nutuk quotations with page numbers), akil-yurutme.md (reasoning patterns)
scripts/               sync and zip scripts
```

Edit the shared files only in `kaynaklar/`, then run `./scripts/sozleri-esitle.sh`.

## Acknowledgements

The Nutuk quotations and reasoning patterns are adapted from
[ugurseleci/ataturk-dusunce-tarzi](https://github.com/ugurseleci/ataturk-dusunce-tarzi), and the
patterns drawn from Söylev ve Demeçler from
[avatar-lavventura/ataturk-soylev](https://github.com/avatar-lavventura/ataturk-soylev). Both are
shared under the MIT License; the license texts are in [UCUNCU-TARAF.md](UCUNCU-TARAF.md).

## Installation

**Claude Code:**

```
/plugin install ataturk --marketplace suavi-yildirim/ataturk
```

On older versions:

```
/plugin marketplace add suavi-yildirim/ataturk
/plugin install ataturk@ataturk
```

**claude.ai:** run `./scripts/zip-olustur.sh`. It creates one zip per skill under `dist/`
(for example `ataturk-motivasyon.zip`). Upload them one by one under
**Settings > Customize > Skills**. On claude.ai the names appear as `ataturk-motivasyon`.
