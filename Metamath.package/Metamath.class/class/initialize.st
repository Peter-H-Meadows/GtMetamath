accessing
initialize
	| st |
	
"'se.txt' asFileReference"
	(MmGtPetieParsingExamples comment copyFrom: 1 to: 61112)
		readStreamDo: [ :stream | 
			st := PP2BufferStream on: stream bufferSize: 8 * 1024.
			MmPP2ParserFirst new parse: st ].
			
	Database := MmPP2ParserFirst database.
	MmBodyParser initVars: MmPP2ParserFirst varNames .