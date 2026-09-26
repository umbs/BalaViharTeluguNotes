// Test 2 — Hallulu (consonants), fill in the missing letters.
//
// Laid out in two parts so the page is not mostly letters the student just
// reads past:
//
//   Part A — four slice questions that between them partition the chart, so
//            the 35 consonants are printed roughly once across the part
//            (only the య–శ row repeats, with different cells blanked).
//   Part B — two full-chart questions with ten blanks each, stacked on a page
//            of their own; at that blank density a full chart earns its space.
//
// A 5-column slice is only half the page wide, so Part A is set two-up via
// `question-row`, fitting all four slice questions on one page. 36 marks over
// two pages.
//
// Everything is laid out 5 per row so the వర్గీయ హల్లులు keep their natural
// 5×5 varga grid and the అవర్గీయ హల్లులు follow underneath.
#import "../testing.typ": question, question-row, test-header, test-part

#let hallulu = (
  [క], [ఖ], [గ], [ఘ], [ఙ],
  [చ], [ఛ], [జ], [ఝ], [ఞ],
  [ట], [ఠ], [డ], [ఢ], [ణ],
  [త], [థ], [ద], [ధ], [న],
  [ప], [ఫ], [బ], [భ], [మ],
  [య], [ర], [ల], [వ], [శ],
  [ష], [స], [హ], [ళ], [క్ష],
)

#test-header(
  [పరీక్ష ౨ — హల్లులు],
  [Test 2 — Hallulu (Consonants)],
  36,
  [Write the missing letter in each empty box. / ఖాళీ గడిలో తప్పిపోయిన అక్షరం రాయండి.],
)

#test-part(
  [భాగం A],
  [Part A — each question covers a different part of the chart. / ఒక్కో ప్రశ్న వేరే భాగం.],
)

#question-row(
  question(
    1,
    hallulu.slice(0, 10),
    blanks: (1, 4, 6, 8),
    note: [క, చ వర్గములు],
    columns: 5,
    size: 24pt,
  ),
  question(
    2,
    hallulu.slice(10, 20),
    blanks: (2, 4, 6, 8),
    note: [ట, త వర్గములు],
    columns: 5,
    size: 24pt,
  ),
)

#question-row(
  question(
    3,
    hallulu.slice(20, 30),
    blanks: (1, 3, 5, 8),
    note: [ప వర్గము + అవర్గీయ],
    columns: 5,
    size: 24pt,
  ),
  question(
    4,
    hallulu.slice(25, 35),
    blanks: (2, 4, 6, 9),
    note: [అవర్గీయ హల్లులు],
    columns: 5,
    size: 24pt,
  ),
)

#pagebreak()

#test-part(
  [భాగం B],
  [Part B — the whole chart, ten letters missing in each. / పూర్తి పట్టిక, పది అక్షరాలు తప్పిపోయాయి.],
)

// The two full charts get a page to themselves, stacked, so each is read as a
// complete alphabet chart rather than as one of a pair. Their width is reined
// in because five columns stretched across the page would be mostly padding.
#question(
  5,
  hallulu,
  blanks: (1, 5, 9, 12, 16, 20, 23, 27, 31, 34),
  columns: 5,
  size: 23pt,
  width: 70%,
)

#question(
  6,
  hallulu,
  blanks: (3, 7, 10, 14, 18, 22, 25, 29, 32, 33),
  columns: 5,
  size: 23pt,
  width: 70%,
)
