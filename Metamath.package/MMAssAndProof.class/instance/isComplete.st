accessing
isComplete

essentialHypoths do: [:ea | ea isComplete ifFalse: [^ false ] ].

self announcer announce: #complete .

"self halt."

wantedResult body = body ifTrue: [
	self announcer announce: #allDone .
] .

^ true 