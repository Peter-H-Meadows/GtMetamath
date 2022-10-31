accessing
metamathUniverse 
<gtExample>

| st database |

"'se.txt' asFileReference"
(self class comment copyFrom: 1 to: 61112) readStreamDo: [ :stream | 
    "stream upToEnd" 
    
    st := PP2BufferStream 
		on: stream
		bufferSize: 8*1024 .
		
	 MmPP2ParserFirst new parse: st .
 
 	database :=   MmPP2ParserFirst database .
    
].

self assert: database proofs size equals: 134 .

self assert: database proofs last name equals: 'mt3d' .

^ database