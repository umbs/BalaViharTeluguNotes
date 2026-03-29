= మాసములు (Telugu Months)

#table(
  columns: 4,
  align: (center, center, center, left),
  fill: (col, row) => if row == 0 { white } else if calc.rem(row, 2) == 1 { rgb("#FFF8DC") } else { white },
  stroke: 1pt + black,
  [*మాసము*], [*Transliteration*], [*English Month*], [*Festivals & Significance*],

  [చైత్ర], [chaitra], [Mar/Apr], [Ugaadi, Sri Rama Navami, Ekadasi(2), Purnima],

  [వైషాఖ], [vaishaaKha], [Apr/May], [Sita Jayanti, Akshaya Tritiya],

  [జ్యేష్ఠ], [jyEshTha], [May/June], [],

  [అషాఢ], [ashaaDha], [June/July], [Guru Purnima],

  [శ్రావన], [Sraavana], [July/Aug], [Krishna Janmastami],

  [భాదప్రద], [Bhaadrapada], [Aug/Sep], [Vinayaka Chavithi],

  [ఆశ్వయుజ], [ASwayuja], [Sep/Oct], [Devi Navaratri, Vijaya Dasami, Deepavali],

  [కార్తీక], [kaartIka], [Oct/Nov], [Kaarteeka Somavaram],

  [మార్గశిర], [maargaSira], [Nov/Dec], [],

  [పుష్య], [pushya], [Dec/Jan], [Vaikunta Ekadasi, Bhogi, Makara Sankranti],

  [మాఘ], [maagha], [Jan/Feb], [Maha Shivaratri],

  [ఫాల్గుణ], [phaalguNa], [Feb/Mar], [Holi]
)
