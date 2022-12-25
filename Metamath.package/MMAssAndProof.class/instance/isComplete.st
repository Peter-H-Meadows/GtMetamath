accessing
isComplete

"essentialHypoths do: [:ea | ea isComplete ifFalse: [^ false ] ].

self announcer announce: #complete .

isComplete := true .

usedFor ifNotNil: [ usedFor setAsComplete . usedFor owner isComplete ]."

"self halt."

"wantedResult body = body ifTrue: [
	self announcer announce: #allDone .
] ."

^ true 