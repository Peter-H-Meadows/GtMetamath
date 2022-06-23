accessing
isPartDone
"self halt."
essentialHypoths do: [:ea | ea isComplete ifTrue: [^ true ] ].

^ false 