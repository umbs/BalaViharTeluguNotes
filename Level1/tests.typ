// Bala Vihar Telugu — Level 1 Tests (printable test papers)
// Fill-in-the-missing-letter tests: Acchulu (vowels) and Hallulu (consonants).
// Compile with: typst compile --root . Level1/tests.typ
#import "../template.typ": notes, workbook-footer

#show: notes.with(
  header-right: "Bala Vihar Telugu - Tests",
  footer: workbook-footer,
  title: "పరీక్షలు",
  subtitle: "Tests — Fill in the Missing Letters",
  tagline: "అక్షరాల పరీక్ష",
  level: "Level 1",
)

// Test 1 — vowels
#include "Tests/test1_acchulu.typ"
#pagebreak()

// Test 2 — consonants
#include "Tests/test2_hallulu.typ"
#pagebreak()

// Test 3 — guṇintaṁ signs and their names
#include "Tests/test3_guninthaalu.typ"
