accessing - datasets
scopes
<gtExample>
| pp |
^ Scopes ifNil: [ 
	pp := MmPP2Parser new .
	Scopes :=  pp parse: MmRawFileDataPartOne comment.
	
	"pp parse: MmRawFileDataPartOne comment.
	pp parse: MmRawFileDataPartTwo comment.
	pp parse: MmRawFileDataPartThree comment.
	pp parse: MmRawFileDataPartFour comment.
	Database :=  pp parse: MmRawFileDataPartFive comment."
	
]