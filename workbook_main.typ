// Telugu Learning Material - Workbook (Homework Sheets)
// Compile with: typst compile workbook_main.typ workbook.pdf

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
          [Bala Vihar Telugu - Homework]
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
          [Name: #box(width: 4cm, line(length: 100%, stroke: 0.5pt))],
          [Date: #box(width: 3cm, line(length: 100%, stroke: 0.5pt))],
          [Page #context counter(page).display("1")]
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
    హోంవర్క్ పుస్తకం
  ]
  #v(0.5em)
  #text(size: 16pt)[
    Workbook
  ]
  #v(2em)
  #text(size: 14pt)[
    బాలవిహార్ తెలుగు అభ్యాసం
  ]
]

#pagebreak()

// Include homework sheets
// Pages 2-3: 4 per page
#include "Workbook/ka_gunintham.typ"
#v(1em)
#include "Workbook/kha_gunintham.typ"
#v(1em)
#include "Workbook/ga_gunintham.typ"
#v(1em)
#include "Workbook/gha_gunintham.typ"
#pagebreak()

#include "Workbook/cha_gunintham.typ"
#v(1em)
#include "Workbook/chha_gunintham.typ"
#v(1em)
#include "Workbook/ja_gunintham.typ"
#v(1em)
#include "Workbook/jha_gunintham.typ"
#pagebreak()

// Pages 4+: 5 per page
#include "Workbook/Ta_gunintham.typ"
#v(0.5em)
#include "Workbook/Tha_gunintham.typ"
#v(0.5em)
#include "Workbook/Da_gunintham.typ"
#v(0.5em)
#include "Workbook/Dha_gunintham.typ"
#v(0.5em)
#include "Workbook/Na_gunintham.typ"
#pagebreak()

#include "Workbook/tha_small_gunintham.typ"
#v(0.5em)
#include "Workbook/thha_gunintham.typ"
#v(0.5em)
#include "Workbook/dha_small_gunintham.typ"
#v(0.5em)
#include "Workbook/dhha_gunintham.typ"
#v(0.5em)
#include "Workbook/na_small_gunintham.typ"
#pagebreak()

#include "Workbook/pa_gunintham.typ"
#v(0.5em)
#include "Workbook/pha_gunintham.typ"
#v(0.5em)
#include "Workbook/ba_gunintham.typ"
#v(0.5em)
#include "Workbook/bha_gunintham.typ"
#v(0.5em)
#include "Workbook/ma_gunintham.typ"
#pagebreak()

#include "Workbook/ya_gunintham.typ"
#v(0.5em)
#include "Workbook/ra_gunintham.typ"
#v(0.5em)
#include "Workbook/la_gunintham.typ"
#v(0.5em)
#include "Workbook/va_gunintham.typ"
#v(0.5em)
#include "Workbook/sha_gunintham.typ"
#pagebreak()

#include "Workbook/Sha_capital_gunintham.typ"
#v(0.5em)
#include "Workbook/sa_gunintham.typ"
#v(0.5em)
#include "Workbook/ha_gunintham.typ"
#v(0.5em)
#include "Workbook/La_capital_gunintham.typ"
#v(0.5em)
#include "Workbook/ksha_gunintham.typ"
