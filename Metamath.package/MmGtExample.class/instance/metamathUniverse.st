accessing
metamathUniverse
<gtExample>
"st := PP2BufferStream 
	on: self mmSourceFileSetDotMM"
	"bufferSize: 8*1024" .
		
	MmPP2ParserFirst new parse: self mmSourceFileSetDotMM .
 
	^ MmPP2ParserFirst database .