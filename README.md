# Bala Vihar Telugu Notes

Telugu language learning material for the **Chinmaya Mission San Jose** Bala Vihar
program. The content is authored in [Typst](https://typst.app/) and compiled into
two printable PDFs: a **Textbook** (reference material) and a **Workbook**
(printable practice/homework sheets).

## Documents

| Source | Output | Description |
| --- | --- | --- |
| `main.typ` | `main.pdf` | **Textbook** — reference covering the Telugu alphabet, combinations, numbers, words, and more. |
| `workbook_main.typ` | `workbook.pdf` | **Workbook** — printable guṇintaṁ practice sheets with name/date fields and ruled writing lines. |

Each top-level `*.typ` file sets up the page layout (A4, headers/footers, title
page, table of contents) and `#include`s the modular content files described
below.

## Repository layout

```
Textbook/          Content modules for the textbook (one topic per file)
Workbook/          Practice sheets for the workbook (one consonant per file)
main.typ           Textbook entry point
workbook_main.typ  Workbook entry point
main.pdf           Compiled textbook
workbook.pdf       Compiled workbook
.fonts/            Bundled Noto Serif Telugu font family + licenses (kept out of view)
```

### `Textbook/`

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

### `Workbook/`

One `*_gunintham.typ` file per consonant (`ka`, `kha`, `ga`, …), each rendering
that consonant's full guṇintaṁ followed by blank ruled lines for handwriting
practice. These are assembled several-per-page in `workbook_main.typ`.

## Building

Requires the [Typst CLI](https://github.com/typst/typst).

```sh
typst compile main.typ            # -> main.pdf
typst compile workbook_main.typ   # -> workbook.pdf
```

Live-preview while editing:

```sh
typst watch main.typ
```

### Fonts

The documents use **Noto Serif Telugu**, referenced by name. If the font is
installed on your system (e.g. macOS `~/Library/Fonts`), no extra flags are
needed. Otherwise, point Typst at the bundled copy:

```sh
typst compile --font-path .fonts/NotoSerifTelugu main.typ
```

The full font family, its variable/OTF/TTF builds, and license files
(`OFL.txt`, etc.) live under `.fonts/`.
