printing
printOn: aStream

aStream nextPutAll: 'Scope. size: '.
aStream nextPutAll: "allRawThings" "allProofs" assertionsDict size printString   .
"
aStream nextPutAll: ' '.

allProofs ifEmpty: [ aStream nextPutAll: allRawThings last printString ] ifNotEmpty: [

aStream nextPutAll: allProofs asArray last name . ]"
