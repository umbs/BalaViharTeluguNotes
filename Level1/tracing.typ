// Tracing helpers for Level 1 handwriting practice.
//
// Renders letters as a "trace-over" chart grid: each cell shows one dotted
// glyph for the student to trace, with its romanization underneath. Letters
// read left-to-right across the grid (like a board / alphabet chart), which
// matches how young children are first taught the alphabet.
//
// The dotted outlines reuse the real Noto Serif Telugu glyphs (no special
// tracing font needed) by drawing the glyph with a transparent fill and a
// dotted stroke. A thin weight keeps the two outline edges close together so
// each stroke reads as a single dotted line rather than a double one.

// Fully transparent fill, so only the dotted stroke (outline) is visible.
#let clear = rgb(0, 0, 0, 0)

// One dotted copy of a letter to trace over. Near-black, so the guide prints
// clearly on a classroom printer and is easy for a young child to follow; the
// dotted dash (rather than a lighter grey) is what keeps it readable as a
// guide under the student's own traced line.
#let dotted(letter, size) = text(
  size: size,
  weight: "thin",
  fill: clear,
  stroke: (paint: luma(20), thickness: 1.1pt, dash: "densely-dotted"),
)[#letter]

// One chart cell: `copies` dotted glyphs in a row (so the student traces the
// same letter several times) with optional romanization below. The row of
// copies is kept on a single line (no wrap) so every cell stays the same
// height regardless of how wide the glyph is.
#let trace-cell(letter, roman, size, copies, gap) = {
  set align(center)
  v(6pt)
  // A fixed grid lays the copies out atomically, so a wide glyph can never
  // wrap the row onto a second line.
  grid(
    columns: (auto,) * copies,
    column-gutter: gap,
    align: bottom,
    ..range(copies).map(_ => dotted(letter, size)),
  )
  if roman != none {
    v(6pt)
    text(size: 11pt, fill: luma(110))[#roman]
  }
  v(6pt)
}

// The whole alphabet as plain lines of dotted letters, `columns` per row.
//
// No cell borders and no romanization: this is one continuous pass over the
// alphabet, so it should read as lines of writing rather than as a chart of
// boxes.
//
//   keep  : indices of the letters to print; the rest are left as empty cells
//           for the student to fill in from memory. `none` prints them all.
//           The cells keep their place either way, so a letter the student
//           writes lands in the same column as the dotted one above it.
//   split : line lengths, e.g. (18, 17) for a 35-letter chart. Needed when the
//           alphabet does not divide evenly into lines: each line is laid out
//           as its own grid, so a short line ends where its letters end rather
//           than trailing empty cells that read as blanks to be filled in.
//           Defaults to `columns` letters per line.
#let trace-lines(items, columns: 8, size: 36pt, row-gap: 16pt, keep: none, split: none) = {
  let lengths = if split != none { split } else {
    range(calc.ceil(items.len() / columns)).map(i => calc.min(columns, items.len() - i * columns))
  }
  let cell(i) = if keep == none or keep.contains(i) { dotted(items.at(i).at(0), size) } else { [] }

  let start = 0
  let lines = ()
  for length in lengths {
    lines.push(grid(
      columns: (1fr,) * length,
      align: center + bottom,
      ..range(start, start + length).map(cell),
    ))
    start += length
  }
  stack(spacing: row-gap, ..lines)
}

// A chart grid of letters to trace.
//
//   items   : array of (letter, roman) pairs, e.g. (([అ], "a"), ([ఆ], "ā"))
//   columns : number of letters per row
//   size    : glyph size
//   copies  : dotted copies per letter (rounds of practice)
//   gap     : horizontal space between the dotted copies
#let trace-grid(items, columns: 4, size: 50pt, copies: 3, gap: 8pt) = grid(
  columns: (1fr,) * columns,
  stroke: 0.5pt + luma(215),
  inset: 6pt,
  ..items.map(it => trace-cell(it.at(0), it.at(1), size, copies, gap)),
)

// Section heading + short bilingual instruction for a tracing page.
#let trace-section(title, instruction) = {
  heading(numbering: none)[#title]
  text(size: 11pt, fill: luma(90))[#instruction]
  v(10pt)
}
