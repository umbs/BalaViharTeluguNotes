// Acchulu (vowels) — tracing chart.
#import "../tracing.typ": trace-grid, trace-section

#trace-section(
  [అచ్చులు (Vowels)],
  [Trace over the dotted letters. / చుక్కల అక్షరాలను అనుసరించి రాయండి.],
)

#trace-grid(
  (
    ([అ], "a"), ([ఆ], "ā"), ([ఇ], "i"), ([ఈ], "ī"),
    ([ఉ], "u"), ([ఊ], "ū"), ([ఋ], "ṛu"), ([ౠ], "ṝu"),
    ([ఎ], "e"), ([ఏ], "ē"), ([ఐ], "ai"), ([ఒ], "o"),
    ([ఓ], "ō"), ([ఔ], "au"), ([అం], "aṁ"), ([అః], "aḥ"),
  ),
  columns: 4,
  size: 23pt,
  copies: 3,
  gap: 6pt,
)
