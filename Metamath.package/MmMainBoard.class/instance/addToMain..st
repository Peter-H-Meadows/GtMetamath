adding
addToMain: mod 
"self halt ."
			mainWorkspace addChild: (mod copy reparse  "copyAndClean"  assertionAndEssentialHypothesisElement: controller) .	