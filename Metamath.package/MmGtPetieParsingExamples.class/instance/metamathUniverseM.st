accessing
metamathUniverseM 
<gtExample>

| database x |


'setbig.mm' asFileReference
readStreamDo: [ :stream | 
    "stream upToEnd" 
    x := ''.
    20000 timesRepeat: [
    
    x := x ,
    stream nextLine.
    
    ].
    
    MmGtPetieParsingExamples comment: x .
    
    "st := PP2BufferStream 
		on: stream
		bufferSize: 18*1024 .
		
	
    
 MmPP2ParserFirst new parse: st .
 
 database :=  MmPP2ParserFirst database ."
    
].

"
self assert: database varNames equals: { 'ph' . 'ps' } asSet ."
"
self assert: database comments size equals: 62 ."

"self assert: database proofs size equals: 1 ."

^ x