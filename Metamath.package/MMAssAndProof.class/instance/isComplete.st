accessing
isComplete
"self halt."
essentialHypoths do: [:ea | ea isComplete ifFalse: [^ false ] ].



^ true 