accessing
grid
<gtExample>
	| view pp st scopes theProofs numbProofs |
	view := GtMondrian new.
	
	pp := MmPP2ParserFirst new .
"pp parse: MmRawFileDataPartOne comment."
"scopes :=  pp parse: MmRawFileDataPartTwo comment."

scopes := pp parse: MmRawFileDataPartOne comment.

"st := ReadWriteStream with: ' ${ ' .
st nextBytesPutAll: MmRawFileDataPartTwo comment .
st nextPut: $$ .
st nextPut: $} .
scopes :=  pp parse: st .

st := ReadWriteStream with: ' ${ ' .
st nextBytesPutAll: MmRawFileDataPartThree comment .
st nextPut: $$ .
st nextPut: $} .
scopes :=  pp parse: st .

st := ReadWriteStream with: ' ${ ' .
st nextBytesPutAll: MmRawFileDataPartFour comment .
st nextPut: $$ .
st nextPut: $} .
scopes :=  pp parse: st ."

theProofs := scopes first  allProofs .
numbProofs := theProofs size .

	view nodes
		stencil: [ :each | each eel ];
		with:
			"{(1 to: 3).
			(4 to: 6)}"
		( theProofs"reverse" copyFrom: numbProofs - 18 to: numbProofs).

	view layout rectanglePack.
	
	^ view