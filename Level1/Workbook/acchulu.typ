// Acchulu (vowels) — tracing chart that fades out.
//
// The whole sequence in two dotted lines, repeated down the page: the student
// writes the alphabet through in order, several times over. Each round prints
// fewer of the letters than the one before, so the tracing support is taken
// away a little at a time and the last round is written almost from memory.
#import "../tracing.typ": trace-lines, trace-section

#let acchulu = (
  ([అ], "a"), ([ఆ], "ā"), ([ఇ], "i"), ([ఈ], "ī"),
  ([ఉ], "u"), ([ఊ], "ū"), ([ఋ], "ṛu"), ([ౠ], "ṝu"),
  ([ఎ], "e"), ([ఏ], "ē"), ([ఐ], "ai"), ([ఒ], "o"),
  ([ఓ], "ō"), ([ఔ], "au"), ([అం], "aṁ"), ([అః], "aḥ"),
)

#trace-section(
  [అచ్చులు (Vowels)],
  [
    Trace over the dotted letters, and write the missing ones yourself — each
    round has fewer. / చుక్కల అక్షరాలను అనుసరించి రాయండి; తప్పిపోయిన అక్షరాలను
    మీరే రాయండి. ప్రతి వరుసలో అక్షరాలు తగ్గుతాయి.
  ],
)

#text(size: 13pt, weight: "bold")[మొత్తం అచ్చులు (All sixteen — fewer letters each round)]
#v(10pt)

#let rounds = 8

// The letters drop out two at a time: the first round prints all sixteen, the
// last only two, so the support fades away and the student ends up writing the
// sequence from memory.
#let shown(round) = int(calc.round(
  acchulu.len() - (acchulu.len() - 2) * round / (rounds - 1),
))

// The order the letters are kept in, longest-surviving first. One letter is
// taken from each line per round, so neither line empties ahead of the other,
// but the two lines drop their columns in different orders — otherwise the
// survivors line up in tidy columns and the child reads the pattern instead of
// recalling the sequence. Written out rather than computed because the point
// is that it looks arbitrary; a rule that generated it would show through.
//
//   line 1 (అ–ౠ) keeps columns   0 6 3 7 1 4 2 5
//   line 2 (ఎ–అః) keeps columns  5 2 0 7 3 6 1 4
//
// అ survives to the last round either way: the sequence has to start somewhere.
#let keep-order = (0, 13, 6, 10, 3, 8, 7, 15, 1, 11, 4, 14, 2, 9, 5, 12)

// One round after another down the page, with a rule between rounds so each
// round reads as its own exercise. Each round is unbreakable so its two lines
// stay together, and the gaps are fractional so the rounds spread evenly over
// whatever room the page has left (the rule lands midway between two rounds,
// and the trailing gap keeps the last round off the footer rule).
#for round in range(rounds) {
  block(
    breakable: false,
    trace-lines(
      acchulu,
      columns: 8,
      size: 27pt,
      row-gap: 12pt,
      keep: keep-order.slice(0, shown(round)),
    ),
  )
  v(1fr)
  if round + 1 < rounds {
    line(length: 100%, stroke: 0.5pt + luma(200))
    v(1fr)
  }
}
