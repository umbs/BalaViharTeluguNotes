// Hallulu (consonants) — tracing charts that fade out.
//
// Same idea as అచ్చులు, but split the way the consonants are taught: the
// twenty-five వర్గీయ హల్లులు as their 5 × 5 varga square, then the eleven
// అవర్గీయ హల్లులు as a line of their own. Each gets a page of rounds that
// print fewer and fewer of the letters, so the tracing support is taken away a
// little at a time and the last round is written almost from memory.
#import "../tracing.typ": trace-lines, trace-section

// వర్గీయ హల్లులు — one varga per line, so the square reads as it is taught.
#let vargiya = (
  ([క], "ka"), ([ఖ], "kha"), ([గ], "ga"), ([ఘ], "gha"), ([ఙ], "ṅa"),
  ([చ], "ca"), ([ఛ], "cha"), ([జ], "ja"), ([ఝ], "jha"), ([ఞ], "ña"),
  ([ట], "ṭa"), ([ఠ], "ṭha"), ([డ], "ḍa"), ([ఢ], "ḍha"), ([ణ], "ṇa"),
  ([త], "ta"), ([థ], "tha"), ([ద], "da"), ([ధ], "dha"), ([న], "na"),
  ([ప], "pa"), ([ఫ], "pha"), ([బ], "ba"), ([భ], "bha"), ([మ], "ma"),
)

// అవర్గీయ హల్లులు — the eleven that fall outside the vargas, ఱ included.
#let avargiya = (
  ([య], "ya"), ([ర], "ra"), ([ఱ], "ṟa"), ([ల], "la"), ([వ], "va"), ([శ], "śa"),
  ([ష], "ṣa"), ([స], "sa"), ([హ], "ha"), ([ళ], "ḷa"), ([క్ష], "kṣa"),
)

#let rounds = 8

// First round prints every letter, last round only two.
#let shown(letters, round) = int(calc.round(
  letters.len() - (letters.len() - 2) * round / (rounds - 1),
))

#let instruction = [
  Trace over the dotted letters, and write the missing ones yourself — each
  round has fewer. / చుక్కల అక్షరాలను అనుసరించి రాయండి; తప్పిపోయిన అక్షరాలను
  మీరే రాయండి. ప్రతి వరుసలో అక్షరాలు తగ్గుతాయి.
]

// The order the letters are kept in, longest-surviving first. Each next
// survivor sits as far as it can from the ones already kept — across the
// square for the vargas, along the line for the rest — but with enough
// irregularity that the survivors never settle into a tidy pattern the child
// could read instead of recalling the sequence. Written out rather than
// computed because the point is that it looks arbitrary; a rule that generated
// it would show through. క and య last: each set has to start somewhere.
#let varga-keep = (
  0, 24, 16, 9, 19, 23, 3, 6, 2, 20, 13, 10, 15,
  1, 8, 18, 11, 14, 21, 22, 17, 4, 7, 12, 5,
)
#let avarga-keep = (0, 9, 5, 2, 7, 10, 4, 1, 6, 8, 3)

// --- వర్గీయ హల్లులు (5 × 5) ------------------------------------------------

#trace-section(
  [హల్లులు — వర్గీయ (Consonants — Structured)],
  instruction,
)

#text(size: 13pt, weight: "bold")[ఐదు వర్గములు (The five vargas, 5 × 5 — fewer letters each round)]
#v(10pt)

// A varga square is only half the page wide, so the rounds go two to a band.
// Within a band the rounds are told apart by the rule down the gutter; the
// bands themselves by the rule between them, as on the vowel sheet.
#let varga-round(round) = trace-lines(
  vargiya,
  columns: 5,
  size: 18pt,
  // Generous for five lines in one round: the lines need to be as far apart as
  // the letters are wide, or the square reads as a block of text rather than
  // as five rows to write on.
  row-gap: 15pt,
  keep: varga-keep.slice(0, shown(vargiya, round)),
)

#let bands = int(rounds / 2)
#for band in range(bands) {
  grid(
    columns: (1fr, 1fr),
    column-gutter: 26pt,
    grid.vline(x: 1, stroke: 0.5pt + luma(220)),
    varga-round(2 * band),
    varga-round(2 * band + 1),
  )
  v(1fr)
  if band + 1 < bands {
    line(length: 100%, stroke: 0.5pt + luma(200))
    v(1fr)
  }
}

#pagebreak()

// --- అవర్గీయ హల్లులు (11) ---------------------------------------------------

#trace-section(
  [హల్లులు — అవర్గీయ (Consonants — Unstructured)],
  instruction,
)

#text(size: 13pt, weight: "bold")[పదకొండు అక్షరాలు (All eleven — fewer letters each round)]
#v(10pt)

// Eleven letters make one line, so a round is a single line and the glyphs can
// be drawn large.
#for round in range(rounds) {
  block(
    breakable: false,
    trace-lines(
      avargiya,
      columns: avargiya.len(),
      size: 30pt,
      keep: avarga-keep.slice(0, shown(avargiya, round)),
    ),
  )
  v(1fr)
  if round + 1 < rounds {
    line(length: 100%, stroke: 0.5pt + luma(200))
    v(1fr)
  }
}
