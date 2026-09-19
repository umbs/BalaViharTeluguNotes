// Hallulu (consonants) — tracing chart.
#import "../tracing.typ": trace-grid, trace-section

#trace-section(
  [హల్లులు (Consonants)],
  [Trace over the dotted letters. / చుక్కల అక్షరాలను అనుసరించి రాయండి.],
)

// వర్గీయ హల్లులు — structured consonants (natural 5×5 varga grid).
// Kept together so the heading never separates from its grid.
#block(breakable: false)[
  #text(size: 13pt, weight: "bold")[వర్గీయ హల్లులు (Structured)]
  #v(6pt)
  #trace-grid(
    (
      ([క], "ka"), ([ఖ], "kha"), ([గ], "ga"), ([ఘ], "gha"), ([ఙ], "ṅa"),
      ([చ], "ca"), ([ఛ], "cha"), ([జ], "ja"), ([ఝ], "jha"), ([ఞ], "ña"),
      ([ట], "ṭa"), ([ఠ], "ṭha"), ([డ], "ḍa"), ([ఢ], "ḍha"), ([ణ], "ṇa"),
      ([త], "ta"), ([థ], "tha"), ([ద], "da"), ([ధ], "dha"), ([న], "na"),
      ([ప], "pa"), ([ఫ], "pha"), ([బ], "ba"), ([భ], "bha"), ([మ], "ma"),
    ),
    columns: 5,
    size: 22pt,
    copies: 3,
    gap: 4pt,
  )
]

#v(12pt)

// అవర్గీయ హల్లులు — unstructured consonants (kept with its heading).
#block(breakable: false)[
  #text(size: 13pt, weight: "bold")[అవర్గీయ హల్లులు (Unstructured)]
  #v(6pt)
  #trace-grid(
    (
      ([య], "ya"), ([ర], "ra"), ([ల], "la"), ([వ], "va"), ([శ], "śa"),
      ([ష], "ṣa"), ([స], "sa"), ([హ], "ha"), ([ళ], "ḷa"), ([క్ష], "kṣa"),
    ),
    columns: 5,
    size: 22pt,
    copies: 3,
    gap: 4pt,
  )
]
