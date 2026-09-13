# Bala Vihar Telugu Notes

Telugu language learning material for the **Chinmaya Mission San Jose** Bala Vihar
program. The content is authored in [Typst](https://typst.app/) and compiled into
printable PDFs — a **Textbook** (reference material) and a **Workbook** (printable
practice/homework sheets) for each class level.

The program has three levels (**Level 1**, **Level 2**, **Level 3**). Each level
lives in its own folder and is self-contained. Currently **Level 2** is populated;
see [TODO.md](TODO.md) for planned work on the remaining levels.

## Repository layout

```
template.typ       Shared page layout (A4, header/footer, cover page, headings)
Level2/            Level 2 class material
  Textbook/          Content modules for the textbook (one topic per file)
  Workbook/          Practice sheets for the workbook (one consonant per file)
  textbook.typ       Textbook entry point   -> Level2/textbook.pdf
  workbook.typ       Workbook entry point   -> Level2/workbook.pdf
Level1/            (planned — same shape as Level2/; see TODO.md)
Level3/            (planned — same shape as Level2/; see TODO.md)
reference/         Source PDFs used to author the material
RESOURCES.md       Curated online resources & useful links (living document)
.fonts/            Bundled Noto Serif Telugu font family + licenses (shared)
```

See [RESOURCES.md](RESOURCES.md) for a curated, growing list of online resources,
videos, dictionaries, and other Telugu educational organizations to learn from and
collaborate with.

All levels share `template.typ` and `.fonts/` at the repository root. To add a new
level, create a `Level<N>/` folder mirroring `Level2/` and point its entry files
at `../template.typ`.

### `template.typ`

Defines a `notes(...)` document template applied via `#show: notes.with(...)`.
It centralizes the page size, running header/footer, cover page, and heading
styles so each level's entry files only declare what differs (title, level,
whether to show a table of contents, and which footer to use). Two footers are
exported: `textbook-footer` (centered page number) and `workbook-footer`
(name/date fields + page number).

### `Level2/Textbook/`

| File | Topic |
| --- | --- |
| `aksharalu.typ` | Alphabet — vowels (అచ్చులు) & consonants (హల్లులు) |
| `guNintaalu.typ` | Guṇintaṁ — consonant + vowel combinations |
| `vattulu.typ` / `vattulu_lenivi.typ` | Conjunct consonants (వత్తులు) |
| `vaaramulu.typ` | Days of the week |
| `sankhyalu.typ` | Numbers |
| `sarala_padaalu.typ` | Simple words |
| `dikkulu.typ` | Directions |
| `rangulu.typ` | Colors |
| `maasamulu.typ` | Months |

### `Level2/Workbook/`

One `*_gunintham.typ` file per consonant (`ka`, `kha`, `ga`, …), each rendering
that consonant's full guṇintaṁ followed by blank ruled lines for handwriting
practice. Companion `*_vattulu.typ` files render one vattu applied across every
consonant (e.g. `ka_vattulu.typ` → క్క, ఖ్క, గ్క, …) with ruled practice lines.
These are assembled several-per-page in `Level2/workbook.typ` (guṇintaṁ sheets
first, then a వత్తులు / Vattulu section).

## Building

Requires the [Typst CLI](https://github.com/typst/typst). Because the entry files
import `../template.typ`, compile with the repository root as the project root:

```sh
typst compile --root . Level2/textbook.typ    # -> Level2/textbook.pdf
typst compile --root . Level2/workbook.typ    # -> Level2/workbook.pdf
```

Live-preview while editing:

```sh
typst watch --root . Level2/textbook.typ
```

### Fonts

The documents use **Noto Serif Telugu**, referenced by name. If the font is
installed on your system (e.g. macOS `~/Library/Fonts`), no extra flags are
needed. Otherwise, point Typst at the bundled copy:

```sh
typst compile --root . --font-path .fonts/NotoSerifTelugu Level2/textbook.typ
```

The full font family, its variable/OTF/TTF builds, and license files
(`OFL.txt`, etc.) live under `.fonts/`.
