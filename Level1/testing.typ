// Test helpers for Level 1 "fill in the missing letter" papers.
//
// A question renders a stretch of the alphabet as a chart grid with some cells
// left empty. The student writes the missing letters into the blanks, which
// tests recall of the order as well as the letter shapes.
//
// Two question shapes are used, so the page is not filled with letters the
// student only has to read past:
//
//   * a slice — one or two rows of the chart (e.g. a pair of vargas) with a
//     few blanks, where the questions between them partition the alphabet;
//   * a full chart — the whole sequence, which only earns its space with a
//     generous number of blanks (~10), and is placed two-up via `question-row`.
//
// The blank cells are dashed boxes sized from the glyph size, so a blank cell
// is the same height as a letter cell and the grid stays even.

// Every cell is this tall, so rows stay even whether they hold a letter or a
// blank (a glyph on its own is shorter than the box the student writes in).
#let slot-height(size) = 1.5 * size

// An empty box for the student to write one letter into. Deliberately larger
// than the glyph it stands for — a beginner's letter needs room.
#let blank-slot(size) = box(
  width: 1.6 * size,
  height: slot-height(size),
  radius: 2pt,
  stroke: (paint: luma(150), thickness: 0.6pt, dash: "dashed"),
)

// A printed letter, boxed to the same height as a blank.
#let letter-slot(letter, size) = box(
  height: slot-height(size),
  align(horizon, text(size: size)[#letter]),
)

// A chart grid of letters with some cells blanked out.
//
//   letters : array of letters in order, e.g. ([అ], [ఆ], [ఇ], ...)
//   blanks  : 0-based indices into `letters` to leave empty
//   columns : letters per row
//   size    : glyph size
//   width   : how much of the available width the chart spans — a few wide
//             columns stretched across a whole page are mostly padding, so a
//             narrow chart is reined in rather than left to sprawl
#let quiz-grid(letters, blanks: (), columns: 8, size: 20pt, width: 100%) = block(
  width: width,
  grid(
    columns: (1fr,) * columns,
    stroke: 0.5pt + luma(215),
    inset: (x: 4pt, y: 4pt),
    ..letters
      .enumerate()
      .map(((i, letter)) => align(
        center + horizon,
        if blanks.contains(i) { blank-slot(size) } else { letter-slot(letter, size) },
      )),
  ),
)

// One numbered question: label line + the grid, kept on a single page so a
// question never splits across a page break.
//
//   note : optional hint about what this slice covers, e.g. "క, చ వర్గములు"
//
// The mark count is the number of blanks, so it can never drift out of sync
// with the grid.
#let question(
  number,
  letters,
  blanks: (),
  note: none,
  columns: 8,
  size: 20pt,
  width: 100%,
) = block(breakable: false, above: 12pt)[
  #text(size: 12pt, weight: "bold")[ప్రశ్న #number]
  #if note != none [ #text(size: 10pt, fill: luma(90))[— #note] ]
  #text(size: 10pt, fill: luma(90))[ (#blanks.len() marks)]
  #v(4pt)
  #quiz-grid(letters, blanks: blanks, columns: columns, size: size, width: width)
]

// Lay several questions out across the page instead of stacked, so wide-but-
// sparse charts do not each claim a full page width.
#let question-row(..questions) = block(breakable: false, above: 12pt)[
  #grid(
    columns: (1fr,) * questions.pos().len(),
    column-gutter: 14pt,
    ..questions.pos(),
  )
]

// Section divider inside a test paper ("Part A", "Part B", ...). Sticky so the
// label is never left stranded at the foot of a page.
#let test-part(label, instruction) = block(above: 18pt, below: 2pt, sticky: true)[
  #text(size: 13pt, weight: "bold")[#label]
  #h(8pt)
  #text(size: 10pt, fill: luma(90))[#instruction]
]

// Heading block at the top of a test paper: title, marks, and instructions.
#let test-header(title, subtitle, marks, instruction) = {
  align(center)[
    #text(size: 18pt, weight: "bold")[#title]
    #v(4pt)
    #text(size: 12pt, fill: luma(90))[#subtitle]
  ]
  v(8pt)
  grid(
    columns: (1fr, auto),
    align: (left, right),
    text(size: 11pt, fill: luma(90))[#instruction],
    text(size: 11pt, weight: "bold")[Marks: \_\_\_\_ / #marks],
  )
  v(4pt)
  line(length: 100%, stroke: 0.5pt + luma(180))
}
