accessing
metamathUniverse 
<gtExample>

| st database |

"
'se.txt' asFileReference"
self class comment readStreamDo: [ :stream | 
    "stream upToEnd" 
    
    st := PP2BufferStream 
		on: stream
		bufferSize: 18*1024 .
		
	
    
 MmPP2ParserFirst new parse: st .
 
 database :=  MmPP2ParserFirst database .
    
].

"
self assert: database varNames equals: { 'ph' . 'ps' } asSet ."

self assert: database comments size equals: 4947 .

"self assert: database proofs size equals: 1 ."

^ database