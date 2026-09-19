// Tracing helpers for Level 1 handwriting practice.
//
// Renders a "trace-over" row: a bold model glyph on the left followed by
// several dotted-outline copies of the same letter for the student to trace.
// The dotted outlines reuse the real Noto Serif Telugu glyphs (no special
// tracing font needed) by drawing the glyph with a transparent fill and a
// dotted stroke.

// Fully transparent fill, so only the dotted stroke (outline) is visible.
#let clear = rgb(0, 0, 0, 0)

// A single tracing row for one letter.
//
//   letter : the Telugu character to practice
//   roman  : small romanization shown under the model glyph (optional)
//   size   : glyph size
//   copies : how many dotted copies to trace
#let trace-row(letter, roman: none, size: 40pt, copies: 6) = block(
  breakable: false,
  width: 100%,
  {
    grid(
      columns: (2.6cm,) + (1fr,) * copies,
      align: horizon + center,
      column-gutter: 6pt,
      // Model glyph (solid) + optional romanization.
      stack(
        dir: ttb,
        spacing: 10pt,
        text(size: size, weight: "bold")[#letter],
        if roman != none { text(size: 10pt, fill: luma(110))[#roman] },
      ),
      // Dotted copies to trace over. A thin weight keeps the two outline
      // edges close together so each stroke reads as a single dotted line
      // rather than a double one.
      ..range(copies).map(_ => text(
        size: size,
        weight: "thin",
        fill: clear,
        stroke: (paint: luma(150), thickness: 0.6pt, dash: "densely-dotted"),
      )[#letter]),
    )
    v(2pt)
    line(length: 100%, stroke: 0.4pt + luma(205))
    v(9pt)
  },
)

// Section heading + short bilingual instruction for a tracing page.
#let trace-section(title, instruction) = {
  heading(numbering: none)[#title]
  text(size: 11pt, fill: luma(90))[#instruction]
  v(8pt)
}
