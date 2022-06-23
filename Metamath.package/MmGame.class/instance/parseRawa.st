parsing
parseRawa

| pp | 

pp := MmPP2Parser new .
pp parse: MmRawFileDataPartOne comment.
pp parse: MmRawFileDataPartTwo comment.
pp parse: MmRawFileDataPartThree comment.
pp parse: MmRawFileDataPartFour comment.
^ pp parse: MmRawFileDataPartFive comment.
