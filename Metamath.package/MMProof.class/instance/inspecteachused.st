as yet unclassified
inspecteachused
	| cont |
	self parse.

	cont := BlElement new.

	self assertionsUsed
		do: [ :each | 
			self prevAssertions
				at: each name
				ifPresent: [ :ua | 
					Transcript
						show: ua;
						cr.

					ua vcopy inspect ] ].
^ cont