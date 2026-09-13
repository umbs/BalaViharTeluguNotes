// Scoped to this chapter: larger headings to match the enlarged content,
// wrapped in a content block so the show rules don't leak into later chapters.
#[
#set text(size: 24pt)
#show heading.where(level: 1): set text(size: 32pt)
#show heading.where(level: 2): set text(size: 26pt)

= అచ్చులు (Vowels)

#grid(
  columns: 8,
  gutter: 1.5em,
  [అ], [ఆ], [ఇ], [ఈ], [ఉ], [ఊ], [ఋ], [ౠ],
  [ఎ], [ఏ], [ఐ], [ఒ], [ఓ], [ఔ], [అం], [అః]
)

= హల్లులు (Consonants)

== వర్గీయ హల్లులు (Structured Consonants)

#grid(
  columns: 5,
  gutter: 1.5em,
  [క], [ఖ], [గ], [ఘ], [ఙ]
)

#grid(
  columns: 5,
  gutter: 1.5em,
  [చ], [ఛ], [జ], [ఝ], [ఞ]
)

#grid(
  columns: 5,
  gutter: 1.5em,
  [ట], [ఠ], [డ], [ఢ], [ణ]
)

#grid(
  columns: 5,
  gutter: 1.5em,
  [త], [థ], [ద], [ధ], [న]
)

#grid(
  columns: 5,
  gutter: 1.5em,
  [ప], [ఫ], [బ], [భ], [మ]
)

== అవర్గీయ హల్లులు (Unstructured Consonants)

#grid(
  columns: 10,
  gutter: 1.5em,
  [య], [ర], [ల], [వ], [శ], [ష], [స], [హ], [ళ], [క్ష]
)
]
