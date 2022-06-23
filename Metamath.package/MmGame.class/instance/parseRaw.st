parsing
parseRaw

| pp | 

"MmDatabaseGlob := MmDatabase new ."

pp := MmPP2Parser new .

pp parse: MmRawFileDataPartOne comment.

MmPP2Parser new parse: MmRawFileDataPartTwo comment.
MmPP2Parser new parse: MmRawFileDataPartThree comment.
MmPP2Parser new parse: MmRawFileDataPartFour comment.
MmPP2Parser new parse: MmRawFileDataPartFive comment.

MmGame new openGameiii .

MmGame new openGame: 'poss'.

MmGame new openGame: 'axext3'.


MmGame new openGame: 'trel'.

MmGame new openGame: 'nnsuc'.


MmGame new openGame: 'dfsbcq2'.
MmRawFileDataPartOne  comment copyFrom: 15820 to: 15988.

"MmDatabaseGlob proofs reverse  ."