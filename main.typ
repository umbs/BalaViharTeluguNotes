// Telugu Learning Material - Main Document
// Compile with: typst compile main.typ

// Document Setup
#set text(font: "Noto Serif Telugu", size: 14pt)
#set page(
  paper: "a4",
  margin: (x: 1.5cm, y: 2cm),
  header: [
    #set text(size: 10pt)
    #block(
      width: 100%,
      inset: 8pt,
      stroke: (bottom: 1pt + black),
      [
        #grid(
          columns: (1fr, 1fr),
          align: (left, right),
          [Chinmaya Mission San Jose],
          [Bala Vihar Telugu Notes]
        )
      ]
    )
  ],
  footer: [
    #set text(size: 10pt)
    #block(
      width: 100%,
      inset: 8pt,
      stroke: (top: 1pt + black),
      [
        #grid(
          columns: (1fr, 1fr, 1fr),
          align: (left, center, right),
          [Footer Left],
          [Footer Center],
          [Footer Right - #context counter(page).display("1")]
        )
      ]
    )
  ]
)
#set heading(numbering: "1.")
#show heading.where(level: 1): set text(size: 18pt)
#show heading.where(level: 2): set text(size: 14pt)

// Title Page
#align(center)[
  #text(size: 24pt, weight: "bold")[
    తెలుగు అక్షరాలు మరియు పదాలు
  ]
  #v(0.5em)
  #text(size: 16pt)[
    Telugu Alphabets and Words
  ]
  #v(2em)
  #text(size: 14pt)[
    బాలవిహార్ తెలుగు నోట్స్
  ]
]

#pagebreak()

// Table of Contents
#outline(
  title: [విషయ సూచిక / Table of Contents],
  indent: auto
)

#pagebreak()

// Include all content files
#include "acchulu.typ"
#pagebreak()

#include "hallulu.typ"
#pagebreak()

#include "vattulu.typ"
#pagebreak()

#include "guNintaalu.typ"
#pagebreak()

// Temporarily removed - will revisit later
// #include "sarala_padaalu.typ"
// #pagebreak()

// #include "vattulu_lenivi.typ"
// #pagebreak()

#include "vaara_dinaalu.typ"
#pagebreak()

#include "sankhyalu.typ"
#pagebreak()

#include "dikkulu.typ"
#pagebreak()

#include "rangulu.typ"
#pagebreak()

#include "maasamulu.typ"
