accessing - datasets
database

| pp |
^ Database ifNil: [ 
	pp := MmPP2Parser new .
	pp parse: MmRawFileDataPartOne comment.
	Database := pp database .
	
	"pp parse: MmRawFileDataPartOne comment.
	pp parse: MmRawFileDataPartTwo comment.
	pp parse: MmRawFileDataPartThree comment.
	pp parse: MmRawFileDataPartFour comment.
	Database :=  pp parse: MmRawFileDataPartFive comment."
	
]