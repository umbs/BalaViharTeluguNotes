= రంగులు (Colors)

#table(
  columns: 4,
  align: (center, center, center, center),
  fill: (col, row) => {
    if row == 0 { white }
    else if col == 3 {
      if row == 1 { red }
      else if row == 2 { blue }
      else if row == 3 { green }
      else if row == 4 { yellow }
      else if row == 5 { white }
      else if row == 6 { black }
      else if row == 7 { orange }
      else if row == 8 { rgb("#FFC0CB") } // pink
      else if row == 9 { purple }
      else if row == 10 { rgb("#8B4513") } // brown
      else if row == 11 { gray }
      else if row == 12 { silver }
      else if row == 13 { rgb("#FFD700") } // gold
    }
  },
  stroke: 1pt + black,
  [*Telugu*], [*Transliteration*], [*English*], [*Color*],
  [ఎరుపు], [erupu], [Red], [],
  [నీలం], [nIlaM], [Blue], [],
  [ఆకుపచ్చ], [Akupachcha], [Green], [],
  [పసుపు], [pasupu], [Yellow], [],
  [తెలుపు], [telupu], [White], [],
  [నల్లా], [nallA], [Black], [],
  [నారింజ], [nAriMja], [Orange], [],
  [గులాబీ], [gulAbI], [Pink], [],
  [ఊదా], [UdA], [Purple], [],
  [గోధుమ], [gOdhuma], [Brown], [],
  [బూడిద], [bUDida], [Grey], [],
  [వెండి], [veMDi], [Silver], [],
  [బంగారు], [baMgAru], [Gold], []
)
