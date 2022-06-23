as yet unclassified
mm 
| fff str |

"MmGame new mm"
fff := (File named: 'set.mm') readStream.
fff := (ZnCharacterReadStream on: fff) .

str := WriteStream with: ''.

[ fff position < 888888 ] whileTrue: [  
	
	fff nextLine .
	
	] .

[ fff position < 2904999 ] whileTrue: [  
	
	str nextPutAll: fff nextLine .
	str nextPutAll: String cr .
	] .


"xorexmid"

MmRawFileDataPartFive  comment: str contents .