accessing
isComplete
"self halt.""
essentialHypoths do: [:ea | ea isComplete ifFalse: [^ false ] ]."


self announcer announce: #complete . "(MmxAnn new )."

^ true 