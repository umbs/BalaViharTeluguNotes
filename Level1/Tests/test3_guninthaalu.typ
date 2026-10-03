// Test 3 — Guṇintaṁ signs, fill in the missing sign or its name.
//
// Each row is one vowel: the vowel itself (always printed, it is the prompt),
// the secondary form the vowel takes on a consonant (గుర్తు), and the name of
// that sign. One cell per row is blanked, alternating between the two answer
// columns so a student cannot settle into copying a single kind of answer.
//
// Two questions, each the full 16-row table with the blanks of the other
// filled in, so between them every sign and every name is asked exactly once.
// The అ row is printed whole in both as a worked example — its sign is the
// inherent తలకట్టు, which has no mark of its own to write.
#import "../testing.typ": table-question, test-header

// (vowel, sign, name of the sign)
#let guninthaalu = (
  ([అ], [✓], [తలకట్టు (talakaTTu)]),
  ([ఆ], [ా], [దీర్ఘము (deerghamu)]),
  ([ఇ], [ి], [గుడి (guDi)]),
  ([ఈ], [ీ], [గుడి దీర్ఘము (guDi deerghamu)]),
  ([ఉ], [ు], [కొమ్ము (kommu)]),
  ([ఊ], [ూ], [కొమ్ము దీర్ఘము (kommu deerghamu)]),
  ([ఋ], [ృ], [సుడి (suDi)]),
  ([ౠ], [ౄ], [సుడి దీర్ఘము (suDi deerghamu)]),
  ([ఎ], [ె], [ఎత్వము (etvamu)]),
  ([ఏ], [ే], [ఏత్వము (Etvamu)]),
  ([ఐ], [ై], [ఐత్వము (aitvamu)]),
  ([ఒ], [ొ], [ఒత్వము (otvamu)]),
  ([ఓ], [ో], [ఓత్వము (Otvamu)]),
  ([ఔ], [ౌ], [ఔత్వము (outvamu)]),
  ([అం], [ం], [సున్న (sunna)]),
  ([అః], [ః], [విసర్గము (visargamu)]),
)

#let headers = (
  [అచ్చులు\ (Vowel)],
  [గుర్తు\ (Sign)],
  [గుర్తు పేరు\ (Name of the sign)],
)

// Rows 1..15 (row 0, అ, is the worked example). Question 1 blanks the sign on
// odd rows and the name on even ones; question 2 blanks whatever question 1
// printed, so the pair covers the whole table.
#let blanks-odd-sign = range(1, 16).map(i => (i, if calc.odd(i) { 1 } else { 2 }))
#let blanks-odd-name = range(1, 16).map(i => (i, if calc.odd(i) { 2 } else { 1 }))

#test-header(
  [పరీక్ష ౩ — గుణింతం గుర్తులు],
  [Test 3 — Guṇintaṁ Signs],
  blanks-odd-sign.len() + blanks-odd-name.len(),
  [Write the missing sign or its name in each empty box. / ఖాళీ గడిలో తప్పిపోయిన గుర్తు లేదా దాని పేరు రాయండి.],
)

#table-question(
  1,
  guninthaalu,
  blanks: blanks-odd-sign,
  headers: headers,
  note: [మొదటి వరుస ఉదాహరణ],
  size: 22pt,
)

#pagebreak()

#table-question(
  2,
  guninthaalu,
  blanks: blanks-odd-name,
  headers: headers,
  note: [మొదటి వరుస ఉదాహరణ],
  size: 22pt,
)
