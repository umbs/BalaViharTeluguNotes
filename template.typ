// Shared page layout for all Bala Vihar Telugu documents.
//
// Each level's entry file (e.g. Level2/textbook.typ, Level2/workbook.typ)
// applies this with `#show: notes.with(...)` to get a consistent A4 layout,
// header/footer, title page, and heading styles.

// Standard footer for reference material (textbook): centered page number.
#let textbook-footer = block(
  width: 100%,
  inset: 8pt,
  stroke: (top: 1pt + black),
  grid(
    columns: (1fr, 1fr, 1fr),
    align: (left, center, right),
    [], [], [#context counter(page).display("1")],
  ),
)

// Footer for printable practice sheets (workbook): name/date fields + page.
#let workbook-footer = block(
  width: 100%,
  inset: 8pt,
  stroke: (top: 1pt + black),
  grid(
    columns: (1fr, 1fr, 1fr),
    align: (left, center, right),
    [Name: #box(width: 4cm, line(length: 100%, stroke: 0.5pt))],
    [Date: #box(width: 3cm, line(length: 100%, stroke: 0.5pt))],
    [Page #context counter(page).display("1")],
  ),
)

// Document template.
//
//   header-right : right-hand text in the running header
//   footer       : footer content (use textbook-footer / workbook-footer)
//   title        : large Telugu title on the cover page
//   subtitle     : English subtitle under the title
//   tagline      : small Telugu tagline under the subtitle
//   level        : e.g. "Level 2" — shown on the cover and header
//   show-outline : whether to render a table of contents after the cover
#let notes(
  header-right: "Bala Vihar Telugu Notes",
  footer: textbook-footer,
  title: "",
  subtitle: "",
  tagline: "",
  level: "",
  show-outline: false,
  body,
) = {
  set text(font: "Noto Serif Telugu", size: 14pt)
  set page(
    paper: "a4",
    margin: (x: 1.5cm, y: 2cm),
    header: {
      set text(size: 10pt)
      block(
        width: 100%,
        inset: 8pt,
        stroke: (bottom: 1pt + black),
        grid(
          columns: (1fr, 1fr),
          align: (left, right),
          [Chinmaya Mission San Jose],
          [#header-right#if level != "" [ — #level]],
        ),
      )
    },
    footer: footer,
  )
  set heading(numbering: "1.")
  show heading.where(level: 1): set text(size: 18pt)
  show heading.where(level: 2): set text(size: 14pt)

  // Cover page
  align(center)[
    #text(size: 24pt, weight: "bold")[#title]
    #v(0.5em)
    #text(size: 16pt)[#subtitle]
    #if level != "" [
      #v(1em)
      #text(size: 18pt, weight: "bold")[#level]
    ]
    #v(2em)
    #text(size: 14pt)[#tagline]
  ]

  pagebreak()

  if show-outline {
    outline(
      title: [విషయ సూచిక / Table of Contents],
      indent: auto,
    )
    pagebreak()
  }

  body
}
