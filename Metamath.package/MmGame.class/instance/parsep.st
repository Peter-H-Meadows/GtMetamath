accessing
parsep
| scopes pp st |

pp := MmPP2ParserFirst new .
	'set.mm' asFileReference readStreamDo: [ :stream | 
    "stream upToEnd" 
    
    st := PP2BufferStream 
		on: stream
		bufferSize: 18*1024 .
    
"scopes := " pp parse: st.
    
].