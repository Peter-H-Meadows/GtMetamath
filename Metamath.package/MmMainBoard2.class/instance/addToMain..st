adding
addToMain: mod 
"self halt ."
			self topPane addChild: (mod copy reparse  "copyAndClean"  assertionAndEssentialHypothesisElement: controller) .	