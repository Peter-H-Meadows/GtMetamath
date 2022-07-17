accessing
isComplete

essentialHypoths do: [:ea | ea isComplete ifFalse: [^ false ] ].

self announcer announce: #complete .

wantedResult body = body ifTrue: [
	self announcer announce: #allDone .
] .

^ true 