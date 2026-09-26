// Test 1 — Acchulu (vowels), fill in the missing letters.
// Four questions over the full 16-letter vowel sequence, four blanks each.
// The blanked positions are disjoint across the questions, so together the
// four questions cover every vowel exactly once.
#import "../testing.typ": question, test-header

#let acchulu = (
  [అ], [ఆ], [ఇ], [ఈ], [ఉ], [ఊ], [ఋ], [ౠ],
  [ఎ], [ఏ], [ఐ], [ఒ], [ఓ], [ఔ], [అం], [అః],
)

#test-header(
  [పరీక్ష ౧ — అచ్చులు],
  [Test 1 — Acchulu (Vowels)],
  16,
  [Write the missing letter in each empty box. / ఖాళీ గడిలో తప్పిపోయిన అక్షరం రాయండి.],
)

#question(1, acchulu, blanks: (1, 5, 10, 14))
#question(2, acchulu, blanks: (0, 6, 9, 15))
#question(3, acchulu, blanks: (3, 4, 11, 13))
#question(4, acchulu, blanks: (2, 7, 8, 12))
