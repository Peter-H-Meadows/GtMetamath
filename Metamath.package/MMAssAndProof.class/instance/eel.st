accessing
eel
"MmGame new openGame: anEvent currentTarget model name."
| aEventListener el |
el := AssertionAndEssentialHypothesisElement new initializeWith: self .
	aEventListener := MmStartEventListener new .

				el addEventHandler: aEventListener .
^ el