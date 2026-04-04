= వారములు (Days of the Week)

#table(
  columns: 3,
  align: (center, center, center),
  fill: (col, row) => {
    if row == 0 { rgb("#FFB6C1") }  // Pink header
    else if calc.rem(row, 2) == 1 { rgb("#FFF8DC") }  // Tan/beige
    else { rgb("#ADD8E6") }  // Light blue
  },
  stroke: 1pt + black,

  [*Day*], [*Telugu*], [*Synonym*],

  [Sunday], [ఆదివారం\ (Adivaaram)], [భానువారం\ (Baanuvaaram)\ \ రవివారం\ (ravivaaram)],

  [Monday], [సోమవారం\ (sOmavaaram)], [ఇందువారం\ (induvaaram)],

  [Tuesday], [మంగళవారం\ (mangaLavaaram)], [భౌమ్యవారం\ (Boumyavaaram)],

  [Wednesday], [బుధవారం\ (budhavaaram)], [సౌమ్యవారం\ (sowmyavaaram)],

  [Thursday], [గురువారం\ (guruvaaram)], [బృహస్పతివారం\ (bRhaspativaaram)],

  [Friday], [శుక్రవారం\ (Sukravaaram)], [భృగువారం\ (BRguvaaram)],

  [Saturday], [శనివారం\ (Sanivaaram)], [స్ఠిరవారం\ (sThiravaaram)]
)
