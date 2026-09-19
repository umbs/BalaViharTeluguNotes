// Bala Vihar Telugu — Level 1 Workbook (printable homework sheets)
// Alphabet tracing practice: Acchulu (vowels) and Hallulu (consonants).
// Compile with: typst compile --root . Level1/workbook.typ
#import "../template.typ": notes, workbook-footer

#show: notes.with(
  header-right: "Bala Vihar Telugu - Homework",
  footer: workbook-footer,
  title: "హోంవర్క్ పుస్తకం",
  subtitle: "Workbook — Alphabet Tracing",
  tagline: "అక్షరాల అభ్యాసం",
  level: "Level 1",
)

// Vowels
#include "Workbook/acchulu.typ"
#pagebreak()

// Consonants
#include "Workbook/hallulu.typ"
