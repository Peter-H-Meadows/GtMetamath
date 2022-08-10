accessing
smaccDatabase
<gtExample>
^ ( MmGtPetieParsingExamples comment  copyFrom: 1 to: MmGtPetieParsingExamples comment size - 120 )
		readStreamDo: [ :stream | 
			
			MmSmaccParser parseStream: stream. 
		]