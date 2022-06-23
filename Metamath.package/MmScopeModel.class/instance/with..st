accessing
with: rawThings

rawThings do: [:ea | 

	ea isArray ifTrue: [ self error ] . 

	ea isArray ifFalse: [ea addInScope: self ] ].

"self halt."