as yet unclassified
inspecteachused
	| cont |
	self parse.

		
		cont := BlElement new .
		
	self assertionsUsed
		do: [ :each | 
			
			"( {'wa' .'wnf' . 'wb' . 'wex' . 'idi' . 'a1ii' . 'ax-2' . 'wal'. 'ax-1'} includes: each name )"
		
			 		self prevAssertions at: each name ifPresent: [ :ua |
			
						"proofToDo prevAssertions at: 'ax-1'."
				
						Transcript show: ua ; cr .
			
						"self halt."
						"usableAssertion wantedResult: wantedResultElement model."
ua vcopy inspect .
					
						].
						
						
			].
		
		
		cont
		
		
		
